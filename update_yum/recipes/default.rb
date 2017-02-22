#
# Cookbook:: update_yum
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute "update" do
    command "yum update -y"
end
