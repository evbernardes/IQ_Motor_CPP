#include "generic_interface.hpp"
#include "serial_interface.hpp"
#include "system_control_client.hpp"
#include <iostream>
#include <list>
#include <vector>
#include <unistd.h>

int main(int argc, char *argv[])
{
  // Make a communication interface object
  //GenericInterface com;"
  const char *port;

  // if (argc == 3)
  // {
  //   port = "/dev/ttyUSB0";
  //   id_old = atoi(argv[1]);
  //   id_new = atoi(argv[2]);
  // }
  // else if (argc == 4)
  // {
  //   port = argv[3];
  //   id_old = atoi(argv[1]);
  //   id_new = atoi(argv[2]);
  // }
  // else
  // {
  //   std::cout << "Usage: ./set_id id_old id_new [port]" << std::endl;
  //   return -1;
  // }

  if (argc == 1)
  {
    port = "/dev/ttyUSB0";
  }
  else if (argc == 2)
  {
    port = argv[1];
  }
  else
  {
    std::cout << "Usage: ./set_id [port]" << std::endl;
    return -1;
  }

  // std::cout << "Setting id to from "<< id_old <<" to "<< id_new <<" on port " << port << std::endl;
  SerialInterface com(port);
  SystemControlClient sys(0);
  // sys.firmware_version_.get(com);
  // std::list<ClientAbstract> clients;
  // std::vector<ClientAbstract*> clients;
  // clients.assign(sys);
  sys.module_id_.get(com);

  com.SendNow();
  usleep(20000);
  com.GetBytes();

  uint8_t *rx_data; // temporary pointer to received type+data bytes
  uint8_t rx_length; // number of received type+data bytes

  while(com.PeekPacket(&rx_data,&rx_length))
  {
    // Share that packet with all client objects
    sys.ReadMsg(rx_data,rx_length);
    // Once were done with the message packet, drop it
    com.DropPacket();
  }

  // check existing id
  int id_new, id = sys.module_id_.get_reply();
  std::cout << "Detected id = "<< id << std::endl;
  // ask for new id
  std::cout << "Change id to: ";
  std::cin >> id_new;
  std::cout << "Desired id = "<< id_new << std::endl;
  if (id == id_new)
    std::cout << "id not changed" << std::endl;
  else
  {
    // send id and reset module
    sys.module_id_.set(com, id_new);
    sys.module_id_.save(com);
    sys.reboot_program_.set(com);

    com.SendNow();
    usleep(30000);

    sys.module_id_.get(com);

    com.SendNow();
    usleep(30000);
    com.GetBytes();

    *rx_data; // temporary pointer to received type+data bytes
    rx_length; // number of received type+data bytes

    while(com.PeekPacket(&rx_data,&rx_length))
    {
      // Share that packet with all client objects
      sys.ReadMsg(rx_data,rx_length);
      // Once were done with the message packet, drop it
      com.DropPacket();
    }

    id = sys.module_id_.get_reply();
    std::cout << "New detected id = "<< id << std::endl;

    if (id == id_new)
      std::cout << "id changed successfully"<< std::endl;
    else {
      std::cout << "id not changed, please try again"<< std::endl;
      // Share that packet with all client objects
      sys.ReadMsg(rx_data,rx_length);
      // Once were done with the message packet, drop it
      com.DropPacket();
    }

    id = sys.module_id_.get_reply();
    std::cout << "New detected id = "<< id << std::endl;

    if (id == id_new)
      std::cout << "id changed successfully"<< std::endl;
    else
      std::cout << "id not changed, please try again"<< std::endl;
  }

  // Insert code for interfacing with hardware here
  return 0;
}
