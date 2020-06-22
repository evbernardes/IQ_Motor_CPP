#include "generic_interface.hpp"
#include "step_direction_input_client.hpp"
#define PI      3.141592
float angle_step;

int main()
{
    // Make a communication interface object
    GenericInterface com;
    // Make a Step Direction Input object with obj_id 0
    StepDirectionInputClient step_dir(0);
    // Use the Step Direction Input object
    step_dir.angle_step_.set(com,2.0f*PI/65536.0f); // Set the minimum step angle
    step_dir.angle_step_.save(com);
    step_dir.angle_step_.get(com);
    // Insert code for interfacing with hardware here
    // Read response
    angle_step = step_dir.angle_step_.get_reply();

    return 0;
}
