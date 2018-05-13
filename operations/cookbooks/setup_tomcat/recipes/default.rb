#
# Cookbook:: setup-tomcat
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'java'

tomcat_install 'helloworld' do
    version '8.0.36'
end

tomcat_service 'helloworld' do
    action [:enable, :start]
    env_vars [{ 'CATALINA_PID' => '/opt/tomcat_helloworld/tomcat.pid' }]
end
