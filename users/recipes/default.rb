#
# Cookbook:: users
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# DATA bag declration"
#oracle_password = data_bag_item('user_password','oracle')

# Valut declaration
chef_gem 'chef-vault' do
 compile_time true if respond_to?(:compile_time)
end

require 'chef-vault'

oracle_password = ChefVault::Item.load('user_password','oracle')

user 'oracle' do
  home '/home/oracle'
  shell '/bin/bash'
  comment 'Oracle User'
  password oracle_password['password']
end
