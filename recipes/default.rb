#
# Cookbook Name:: lamp_chef
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
#Installing MySQL: This is coming from other cookbook

#Installing Mysql
include_recipe 'lamp_chef::mysql'

#Installing Apache2
include_recipe 'lamp_chef::apache2'

#Installing PHP
include_recipe 'lamp_chef::php'


