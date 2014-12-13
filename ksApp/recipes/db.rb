#
# Cookbook Name:: learn_chef_apache2
# Recipe:: default
#
# Copyright (C) 2014
#
#
#

package 'mysql'

service 'mysql' do
  action [:start, :enable]  
end