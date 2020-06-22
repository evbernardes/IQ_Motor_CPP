#include "generic_interface.hpp" 
#include "serial_interface.hpp" 
#include "voltage_superposition_client.hpp"
#include "multi_turn_angle_control_client.hpp"
#include "buzzer_control_client.hpp"
#include <iostream>
#include <unistd.h>

int main(int argc, char *argv[])
{
  // Make a communication interface object
  //GenericInterface com;"
  int freq, id;
  const char *port;
  
  switch (argc)
  {
  case 1:
    port = "/dev/ttyUSB0";
    freq = 440;
    id = 0;
    break;
  case 2:
    port = "/dev/ttyUSB0";
    freq = atoi(argv[1]);
    id = 0;
    break;
  case 3:
    port = argv[2];
    freq = atoi(argv[1]);
    id = 0;
    break;
  case 4:
    port = argv[2];
    freq = atoi(argv[1]);
    id = atoi(argv[3]);
    break;
  default:
    break;
  }

  std::cout << "Playing "<< freq << "Hz sound on port " << port << std::endl;
  SerialInterface com(port);
  BuzzerControlClient buz(id);
  buz.hz_.set(com, freq);
  buz.volume_.set(com, 127/2); // Max volume 
  buz.duration_.set(com, 500); // 500ms 
  buz.ctrl_note_.set(com); // Note mode  
  com.SendNow();

  buz.volume_.get(com);

  com.GetBytes();
  uint8_t *rx_data; // temporary pointer to received type+data bytes
  uint8_t rx_length; // number of received type+data bytes

  while(com.PeekPacket(&rx_data,&rx_length))
  {
    // Share that packet with all client objects
    buz.ReadMsg(rx_data,rx_length);
    // Once were done with the message packet, drop it
    com.DropPacket();
  }

  int volume = buz.volume_.get_reply();
  std::cout << volume << std::endl;

  // Insert code for interfacing with hardware here
  return 0;
}