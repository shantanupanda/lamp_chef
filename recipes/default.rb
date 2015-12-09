#
# Cookbook Name:: lamp_chef
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
#Installing MySQL: This is coming from other cookbook

#Installing Apache2

include_recipe 'selinux::disabled'

include_recipe 'lamp_chef::apache2'

include_recipe 'lamp_chef::mysql'



