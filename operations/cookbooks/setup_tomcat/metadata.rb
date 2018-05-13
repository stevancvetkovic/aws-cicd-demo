name 'setup_tomcat'
maintainer 'Stevan Cvetkovic'
maintainer_email 'cvetkovic.stevan@gmail.com'
license 'All Rights Reserved'
description 'Installs Tomcat'
long_description 'Installs Tomcat with its dependencies'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/setup-tomcat/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/setup-tomcat'

depends 'tomcat', '~> 3.0.0'
depends 'java', '~> 2.0.1'