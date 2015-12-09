#
# Cookbook Name:: lamp_chef
# Recipe:: php
#

#Simple wrapper for opscode php cookbook.

# Install php from packages
include_recipe 'php'

#Install the php modules
node[:lamp_chef][:php_modules].each do |mod|
  include_recipe "php::module_#{mod}"
  not_if  { node[:lamp_chef][:php_modules].empty?}
end

# Generate apc.ini configuration
template '/etc/php5/mods-available/apc.ini' do
  source 'apc.ini.erb'
  owner 'root'
  group 'root'
  mode '0644'
  # If this recipe is included without apache2 this can fail
  notifies :restart, 'service[apache2]' if node.recipes.include?('apache2')
  only_if { node[:lamp_chef][:php_modules].include?('apc') }
end
