#
# Cookbook:: nodejs_yum
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe "update_yum"

package 'epel-release' do
    action :install
end

package 'nodejs' do
    action :install
end

cookbook_file "/home/chef_node01/demo_server.js" do
    source "demo_node.js"
    mode "0644"
end

execute 'serve demo' do
    command 'node --debug demo_server.js &'
end
