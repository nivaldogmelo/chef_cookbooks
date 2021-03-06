#
# Cookbook:: nginx_yum
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe "update_yum"

package 'epel-release' do
    action :install
end

package 'nginx' do
    action :install
end

service 'nginx' do
   action [ :enable, :start ]
end

cookbook_file "/usr/share/nginx/html/index.html" do
    source "index.html"
    mode "0644"
end
