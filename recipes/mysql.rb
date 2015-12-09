#
# Cookbook Name:: lamp_chef
# Recipe:: mysql
#

mysqlpass = data_bag_item("mysql", "root_password")

mysql_service node[:lamp_chef][:mysql][:servicename] do
	port node[:lamp_chef][:mysql][:port]
	version node[:lamp_chef][:mysql][:version]
	initial_root_password mysqlpass["value"]
	action [:create, :start]
end
