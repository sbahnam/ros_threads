#include <ros/ros.h>
#include "ros_threads/GiveTime.h"
#include <sstream>

bool time(ros_threads::GiveTime::Request &req, ros_threads::GiveTime::Response &res)
{
    double Time_us = round((ros::Time::now().toSec() + ros::Time::now().nsec*1e-9)*1e6);
    std::stringstream ss_Time_us;
    std::string Time_str_float = std::to_string(Time_us);
    res.Time_str = Time_str_float.substr(0, Time_str_float.find(".")); // remove decimal points (not able to transfer to integer because number too large)

    if (req.Delay_s > 0 and req.Delay_s < 3){
        ros::Duration(req.Delay_s).sleep();
    }
    ROS_INFO_STREAM("Delay of: " << req.Delay_s);
    ROS_INFO_STREAM("Sending Time (milliseconds): " << res.Time_str);
    return true;
}

/// main ROS loop and Service call
int main (int argc, char **argv)
{
    ros::init(argc, argv, "threads_server");
    ros::NodeHandle node;
    ros::ServiceServer service = node.advertiseService("givetime", time);
    ROS_INFO("Ready for request");
    ros::spin();

    return 0;
}
