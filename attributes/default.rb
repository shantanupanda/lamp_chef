# Prefork Attributes, tune them according node memory
default[:apache][:prefork][:startservers]        = 8
default[:apache][:prefork][:minspareservers]     = 8
default[:apache][:prefork][:maxspareservers]     = 16
default[:apache][:prefork][:serverlimit]         = 200
default[:apache][:prefork][:maxclients]          = 200
default[:apache][:prefork][:maxrequestsperchild] = 10_000
