name             'lamp_chef'
maintainer       'Shantanu'
maintainer_email 'Shantanu.Panda@talentica.com'
license          'All rights reserved'
description      'Installs/Configures lamp'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

# This version supports only apache >= 2.4

depends 'apache2', '~> 3.1.0'
depends 'mysql', '~> 6.1.2'
# Optional dependencies of php_application definition
