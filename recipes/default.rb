#
# Cookbook Name:: lamp_chef
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
#Installing MySQL: This is coming from other cookbook
include_recipe 'mysql_role::default'

#Installing Apache2
include_recipe 'lamp_chef::apache2'


