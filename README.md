# lamp_chef-cookbook

Role wrapper cookbook for LAMP stack.

This cookbook provides a full LAMP stack, just include default recipe to get a full LAMP stack.

Currently tested with the following setup:

    Chef: 12
    Ubuntu 14.04
    RHEL : 7.1

This cookbook (current version) will not work with apache 2.2 and ubuntu < 13.10.

## Supported Platforms

TODO: List your supported platforms.

Requirements
Platform:

    Ubuntu (>= 13.10)
    RHEL (>= 6.5)

Cookbooks:

    mysql (~> 6.1.2)
    apache2 (>= 2.0.0)
    php
    ssl
    
## Usage

### lamp_chef::default

Include `lamp_chef` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[lamp_chef::default]"
  ]
}
```
## Attributes

# Prefork Attributes, tune them according node memory
default[:apache][:prefork][:startservers]        = defaults to '8'
default[:apache][:prefork][:minspareservers]     = defaults to '8'
default[:apache][:prefork][:maxspareservers]     = defaults to '16'
default[:apache][:prefork][:serverlimit]         = defaults to '200'
default[:apache][:prefork][:maxclients]          = defaults to '200'
default[:apache][:prefork][:maxrequestsperchild] = defaults to '10_000'

#Mysql attributes
default[:lamp_chef][:mysql][:servicename] = Service name for mysql
default[:lamp_chef][:mysql][:port] = Mysql port
default[:lamp_chef][:mysql][:version] = Mysql version to installed

#php attributes
default[:lamp_chef][:php][:install_method] = Installation method for PHP 'source' or 'package'
default[:lamp_chef][:php_modules] =Default php modules installed by php_modules recipe. Defaults to "%w(mysql gd curl)"
#<> APC memory size
default[:lamp_chef][:apc][:memory] = APC memory size. Defaults to "128M".
#<> APC slam defense suppression
default[:lamp_chef][:apc][:slam_defense] = APC slam defense suppression. Defaults to "false".

##Recipes

    lamp_chef::apache2 - Installs Apache2 webserver and configures its default host.
    lamp_chef::default - Installs Apache2, PHP and MySQL on the target host.
    lamp_chef::mysql - Installs Mysql on target host.
    lamp_chef::php - Install php and php modules on target host.

## License and Authors

Author:: shantanupanda
