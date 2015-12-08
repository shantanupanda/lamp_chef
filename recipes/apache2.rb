#Installs Apache2 webserver and configures its default host.

 case node['platform_family']
  when 'rhel'
    include_recipe 'yum'
  when 'debian'
    include_recipe 'apt'
  end
  
#Enable default site
node.override[:apache][:default_site_enabled] = true

# Install apache webserver
include_recipe 'apache2'

