#Installs Apache2 webserver and configures its default host.

 case node['platform_family']
  when 'rhel'
    execute "update-upgrade" do
    command "yum update -y"
    action :run
    end
  when 'debian'
    execute "update-upgrade" do
    command "apt-get update && apt-get upgrade -y"
    action :run
    end
  end


#Enable default site
node.override[:apache][:default_site_enabled] = true

# Install apache webserver
include_recipe 'apache2'

