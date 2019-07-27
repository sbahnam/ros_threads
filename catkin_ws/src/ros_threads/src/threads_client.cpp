#include "ros/ros.h"
#include "ros_threads/GiveTime.h"
#include <cstdlib>
#include <sstream>


int main(int argc, char **argv)
{
    ros::init(argc, argv, "threads_client");
    ros::NodeHandle node;
    ros::ServiceClient client = node.serviceClient<ros_threads::GiveTime>("givetime");
    ros_threads::GiveTime srv;

    int i = 0;
    while (true){
        i++;
        double TimeNow_ns = (ros::Time::now().toSec() + ros::Time::now().nsec*1e-9)*1e9;
        std::string TimeNow_str_float = std::to_string(TimeNow_ns);
        std::string TimeNow_str = TimeNow_str_float.substr(0, TimeNow_str_float.find(".")); 
        ROS_INFO_STREAM("Current time (nanoseconds): " + TimeNow_str);
        ros::Duration(0.5).sleep();
        
        if( i%2 == 0){
            int r = (rand() % 6); // create pseudo random int 0-5
            srv.request.Delay_s = r;
            if (client.call(srv)){
                double diffTime_ms = round((ros::Time::now().toSec() + ros::Time::now().nsec*1e-9)*1e3 - std::stod(srv.response.Time_str)*1e-3);
                std::stringstream ss_diffTime_ms;
                ss_diffTime_ms << int(diffTime_ms);
                std::string diffTime_str = ss_diffTime_ms.str(); //std::to_string(diffTime_ms); //
                ROS_INFO_STREAM("Time difference (milliseconds): " + diffTime_str);
            }
            else
            {
                ROS_ERROR("Failed to call service GiveTime");
                return 1;
            }
        }
    }


    return 0;
}
