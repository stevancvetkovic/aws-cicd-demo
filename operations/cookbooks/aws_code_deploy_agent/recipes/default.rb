#
# Cookbook:: aws_code_deploy_agent
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute 'apt_update' do
    command 'apt-get update'
end

package %w(ruby awscli)

remote_file "#{Chef::Config[:file_cache_path]}/codedeploy-install.sh" do
    source "https://s3.amazonaws.com/aws-codedeploy-us-east-1/latest/install"
    mode "0744"
    owner "root"
    group "root"
end

execute "install_codedeploy_agent" do
  command "#{Chef::Config[:file_cache_path]}/codedeploy-install.sh auto"
  user "root"
end

service "codedeploy-agent" do
  action [:enable, :start]
end
