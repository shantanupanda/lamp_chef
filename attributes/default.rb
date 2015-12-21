#
# Cookbook Name:: lamp_chef
# Attributes:: default
#


# Prefork Attributes, tune them according node memory
default[:apache][:prefork][:startservers]        = 8
default[:apache][:prefork][:minspareservers]     = 8
default[:apache][:prefork][:maxspareservers]     = 16
default[:apache][:prefork][:serverlimit]         = 200
default[:apache][:prefork][:maxclients]          = 200
default[:apache][:prefork][:maxrequestsperchild] = 10_000

#Mysql attributes
default[:lamp_chef][:mysql][:servicename] = 'TestMySQL'
default[:lamp_chef][:mysql][:port] = '3306'
default[:lamp_chef][:mysql][:version] = '5.5'

#php attributes
default[:lamp_chef][:php][:install_method] = 'package'
default[:lamp_chef][:php_modules] = %w(mysql gd curl)
#<> APC memory size
default[:lamp_chef][:apc][:memory] = '128M'
#<> APC slam defense suppression
default[:lamp_chef][:apc][:slam_defense] = false

