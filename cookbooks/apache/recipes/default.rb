#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# this is to install apche web server 
package "httpd" do 
	action :install	
end
service "httpd" do
	action [:start, :enable]
end
cookbook_file "/var/www/html/index.html" do
	source "index.html"
end
