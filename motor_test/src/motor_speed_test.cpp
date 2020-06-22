#include "generic_interface.hpp" 
#include "serial_interface.hpp" 
#include "voltage_superposition_client.hpp"
#include "multi_turn_angle_control_client.hpp"
#include "buzzer_control_client.hpp"
#include "propeller_motor_control_client.hpp"
#include <iostream>
#include <unistd.h>
#include <cmath>
#include <csignal>
// #include "propeller_motor_control_client.hpp"
#define PI      3.141592
#define RPM_TO_RADSEC 0.10471975499999982
// #define VOLTAGE 1
// #define VELOCITY 300.0

 // USER SETABLE VALUES HERE---------------------------------------------------
// Sets the angle to go to in radians
const float kAngle = 12.0f*PI;
// Sets the trajectory time in seconds
const float kTime = 5;
// END USER SETABLE VALUES-----------------------------------------------------

// Signal handler that stops motor
SerialInterface * com_global;
PropellerMotorControlClient * prop_global;
void signalHandler(int signum) {
   std::cout << "Interrupt signal (" << signum << ") received, entering coast mode.\n";
   prop_global->ctrl_velocity_.set(*com_global, 0);
   com_global->SendNow();
   prop_global->ctrl_coast_.set(*com_global);
   com_global->SendNow(); 
   exit(signum);  
}

void sendTrajectory(CommunicationInterface& com, MultiTurnAngleControlClient& angle_ctrl, float time_cmd, float angle_cmd)
{
  angle_ctrl.trajectory_angular_displacement_.set(com, angle_cmd);
  angle_ctrl.trajectory_duration_.set(com, time_cmd);
}

int main(int argc, char *argv[])
{
  const char *port = "/dev/ttyUSB0";
  int id = 0;
  // Make a communication interface object
  float velocity_min = 200;
  float velocity_max = velocity_min;
  float speed_jump = 100;
  float time = 2;
  float pause = 1;
  float voltage = 1;
  float multiplier = 1;

  switch (argc)
  {
  case 9: pause = atof(argv[8]);
  case 8: time = atof(argv[7]);
  case 7: speed_jump = atof(argv[6]);
  case 6: velocity_max = atof(argv[5]);
  case 5: velocity_min = atof(argv[4]);
  case 4: multiplier = atof(argv[3]);
  case 3: id = atoi(argv[2]);
  case 2: port = argv[1];
  case 1: break;
  default:
    std::cout << "Usage = ./motor_speed_test [port] [id] [multiplier] [vel_min] [vel_max] [vel_jump] [time] [pause]" << std::endl << std::endl;
    std::cout << "Default values =" << std::endl;
    std::cout << "    port = /dev/ttyUSB0" << std::endl;
    std::cout << "    id = 0" << std::endl;
    std::cout << "    multiplier = " << multiplier << " (set to -1 for CW rotation)" << std::endl;
    std::cout << "    vel_min = " << velocity_min << std::endl;
    std::cout << "    vel_max = vel_min" << std::endl;
    std::cout << "    vel_jump = " << speed_jump << std::endl;
    std::cout << "    time = " << time << std::endl;
    std::cout << "    pause = " << pause << std::endl  << std::endl;
    return -1;
  }

if (argc == 5)
  velocity_max = velocity_min;

std::cout << "Connecting to motor of id = " << id << " at port " << port << std::endl;
std::cout << "Min velocity = " << velocity_min << "rpm" << std::endl;
std::cout << "Max velocity = " << velocity_max << "rpm" << std::endl;
std::cout << "Speed jump = " << speed_jump << std::endl;
if (speed_jump < 0){
    std::cout << "Invalid parameters, check speed_jump (has to be a positive number)" << std::endl;
    return -2;
}
std::cout << "Time of each test = " << time << "s" << std::endl;
std::cout << "Pause = " << pause << "s" << std::endl;
std::cout << "Multiplier = " << multiplier << ((multiplier>0) ? (" (CW motion)"):(" (CCW motion)")) << std::endl;

int n = std::ceil((velocity_max - velocity_min)/speed_jump) + 1;

if (speed_jump < 0 || n < 1){
    std::cout << std::endl << "Invalid parameters, check speed_jump (has to be a positive number)" << std::endl;
    return -2;
}

std::cout << "Performing " << n << " test" << ((n>1)?("s"):("")) << std::endl << std::endl;

// for (int i = 0; i < n; i++){
//     std::cout << "Speed = " << std::min(velocity_min + speed_jump*i,velocity_max) << std::endl;
// }
  SerialInterface com(port);
  PropellerMotorControlClient prop(id);

  // Set security signal handler
  prop_global = &prop;
  com_global = &com;
  signal(SIGINT, signalHandler); 

  prop.velocity_kp_.set(com,0.001);
  prop.velocity_kp_.set(com,0.01);
  com.SendNow();
  prop.velocity_kp_.save(com);
  prop.velocity_kp_.save(com);

prop.timeout_.set(com,time*1.1+pause*1.5);
com.SendNow();

float velocity;

  for (int i = 0; i < n; i++){
    velocity = std::min(velocity_min + speed_jump*i,velocity_max)*multiplier;
    std::cout << "Starting test " << i+1 << std::endl;
    std::cout << "Velocity = " << velocity << "rpm | " << velocity*RPM_TO_RADSEC << "rad/s | " << velocity/60. << "Hz" << std::endl;
    prop.ctrl_velocity_.set(com, velocity*RPM_TO_RADSEC);
    // vsp.amplitude_.set(com, voltage);
    // vsp.phase_.set(com, 0);
    com.SendNow();
    usleep(time*1000000);

    std::cout << "Shutting down test " << i+1 << std::endl << std::endl;
    prop.ctrl_velocity_.set(com, 0);
    // vsp.amplitude_.set(com, 0);
    // vsp.phase_.set(com, 0);
    com.SendNow();
    if (i != n-1)
        usleep(pause*1000000);
  }

  std::cout << "Tests finished, entering coast mode"<< std::endl ;
  prop.ctrl_coast_.set(com);
  com.SendNow();

  return 0;
}