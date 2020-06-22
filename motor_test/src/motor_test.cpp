#include "generic_interface.hpp" 
#include "serial_interface.hpp" 
#include "voltage_superposition_client.hpp"
#include "multi_turn_angle_control_client.hpp"
#include "buzzer_control_client.hpp"
#include "propeller_motor_control_client.hpp"
#include <iostream>
#include <unistd.h>
// #include "propeller_motor_control_client.hpp"
#define PI      3.141592
// #define VOLTAGE 1
// #define VELOCITY 300.0

 // USER SETABLE VALUES HERE---------------------------------------------------
// Sets the angle to go to in radians
const float kAngle = 12.0f*PI;
// Sets the trajectory time in seconds
const float kTime = 5;
// END USER SETABLE VALUES-----------------------------------------------------

void sendTrajectory(CommunicationInterface& com, MultiTurnAngleControlClient& angle_ctrl, float time_cmd, float angle_cmd)
{
  angle_ctrl.trajectory_angular_displacement_.set(com, angle_cmd);
  angle_ctrl.trajectory_duration_.set(com, time_cmd);
}

int main(int argc, char *argv[])
{
  const char *port;
  port = "/dev/ttyUSB0";
  int id = 0;
  // Make a communication interface object
  SerialInterface com(port);

  float voltage;
  float velocity;
  float pause;
  int repetitions;

  switch (argc)
  {
  case 1:
    voltage = 1;
    velocity = 300;
    pause = 2;
    repetitions = 2;
    break;
  case 2:
    voltage = atof(argv[1]);
    velocity = 300;
    pause = 2;
    repetitions = 2;
    break;
  case 3:
    voltage = atof(argv[1]);
    velocity = atof(argv[2]);
    pause = 2;
    repetitions = 2;
    break;
  case 4:
    voltage = atof(argv[1]);
    velocity = atof(argv[2]);
    pause = atof(argv[3]);
    repetitions = 2;
    break;
  case 5:
    voltage = atof(argv[1]);
    velocity = atof(argv[2]);
    pause = atof(argv[3]);
    repetitions = atoi(argv[4]);
    break;
  default:
    break;
  }

  // // Use the Multi-turn Angle Controller object   
  // MultiTurnAngleControlClient angle_ctrl(0);
  // angle_ctrl.obs_angular_displacement_.get(com);
  // angle_ctrl.ctrl_angle_.set(com,10.0f);
  // angle_ctrl.trajectory_angular_displacement_.set(com, kAngle);
  // angle_ctrl.trajectory_duration_.set(com, kTime);
  // com.SendNow();
  // std::cout << "Voltage = "<< voltage << "V, velocity = " << velocity << "rpm" << std::endl;
  std::cout << "Voltage = "<< voltage << "V" << std::endl;
  std::cout << "Velocity = " << velocity << "rpm" << std::endl;
  std::cout << "Pause = " << pause << "s" << std::endl;
  std::cout << "Repetitions = 3 x " << repetitions << std::endl;
  PropellerMotorControlClient prop(id);
  VoltageSuperPositionClient vsp(id);

  prop.velocity_kp_.set(com,0.001);
  prop.velocity_kp_.set(com,0.01);
  com.SendNow();
  prop.velocity_kp_.save(com);
  prop.velocity_kp_.save(com);

  // prop.timeout_.set(com,3*repetitions*pause);
  prop.ctrl_velocity_.set(com, velocity);
  prop.timeout_.set(com,pause);
  vsp.zero_angle_.set(com,0);
  vsp.amplitude_.set(com, voltage);
  vsp.phase_.set(com, 0);
  com.SendNow();

  for (int i = 0; i < repetitions; i++){
    prop.ctrl_velocity_.set(com, velocity);
    vsp.amplitude_.set(com, voltage);
    vsp.phase_.set(com, 0);
    com.SendNow();
    usleep(pause*1000000);

    prop.ctrl_velocity_.set(com, velocity);
    vsp.amplitude_.set(com, 0);
    vsp.phase_.set(com, 0);
    com.SendNow();
    usleep(pause*1000000);

    prop.ctrl_velocity_.set(com, velocity);
    vsp.amplitude_.set(com, voltage);
    vsp.phase_.set(com, PI);
    com.SendNow();
    usleep(pause*1000000);
  }

  // prop.ctrl_velocity_.set(com, 0.0);
  // vsp.amplitude_.set(com, 0);
  // vsp.phase_.set(com, 0);
  prop.ctrl_coast_.set(com);
  com.SendNow();

  // // play note at the end
  // BuzzerControlClient buz(0);
  // std::cout << "Finished test" << std::endl;
  // buz.hz_.set(com, 440);
  // buz.volume_.set(com, 127); // Max volume 
  // buz.duration_.set(com, 500); // 500ms 
  // buz.ctrl_note_.set(com); // Note mode  
  // com.SendNow();

  // for (int i = 0; i < 1000; i++){
  //   // std::cout << "V = " << prop.ctrl_volts_.get(com) << ", v = " << prop.ctrl_velocity_.get(com) << std::endl;
  //   float voltage = prop.ctrl_volts_.get(com);
  //   float speed = prop.ctrl_velocity_.get(com);
  // }

  // bool test1 = angle_ctrl.ctrl_mode_.IsFresh();
  // int mode = angle_ctrl.ctrl_mode_.get_reply();
  // bool test2 = angle_ctrl.ctrl_mode_.IsFresh();
  // std::cout << mode << std::endl;
  // std::cout << test1 << std::endl;
  // std::cout << test2 << std::endl;

  // Insert code for interfacing with hardware here
  return 0;
}