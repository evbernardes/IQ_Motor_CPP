#include "generic_interface.hpp" 
#include "serial_interface.hpp" 
#include "voltage_superposition_client.hpp"
#include "multi_turn_angle_control_client.hpp"
#include "buzzer_control_client.hpp"
#include "my_helpers.hpp"
#include <iostream>
#include <unistd.h>

int main(int argc, char *argv[])
{
  // Make a communication interface object
  //GenericInterface com;"
  int freq;
  const char *port;
  
  switch (argc)
  {
  case 1:
    port = "/dev/ttyUSB0";
    freq = 440;
    break;
  case 2:
    port = "/dev/ttyUSB0";
    freq = atoi(argv[1]);
    break;
  case 3:
    port = argv[2];
    freq = atoi(argv[1]);
    break;
  default:
    break;
  }

  SerialInterface com(port);
  BuzzerControlClient buz(0);

  std::cout << "Playing "<< freq << "Hz sound on port " << port << std::endl;
  buz.hz_.set(com, freq);
  buz.volume_.set(com, 127); // Max volume 
  buz.duration_.set(com, 500); // 500ms 
  buz.ctrl_note_.set(com); // Note mode  
  com.SendNow();

  // do
  // {
  //   buz.ctrl_mode_.get(com);
  //   com.SendNow();
  //   com.GetBytes();
  //   if (buz.ctrl_mode_.IsFresh())
  //     {
  //       if (buz.ctrl_mode_.get_reply() != 2) // if mode is not note mode
  //       {
  //         break;
  //       }
  //     }
  // } while (1);


  do{
    buz.ctrl_mode_.get(com);
    com.SendNow();
    ReadMessage(com, buz);
    
    if (buz.ctrl_mode_.IsFresh())
    {
      if (buz.ctrl_mode_.get_reply() != 2) // if mode is not note mode
      {
        break;
      }
    }
    }
    while (1);

    std::cout << "Playing " << 0.5 * freq << "Hz sound on port " << port << std::endl;
    buz.hz_.set(com, 2 * freq);
    buz.volume_.set(com, 127);   // Max volume
    buz.duration_.set(com, 500); // 500ms
    buz.ctrl_note_.set(com);     // Note mode
    com.SendNow();

    // Insert code for interfacing with hardware here
    return 0;
}