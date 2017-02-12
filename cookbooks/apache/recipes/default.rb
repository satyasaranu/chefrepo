#C:\Users\Administrator\chef-repo\cookbooks\apache\recipes


# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# this is to install apche web server 
package node["package_name"] do 
	action :install	
end
service node["service_name"] do
	action [:start, :enable]
end
# cookbook_file "/var/www/html/index.html" do
# 	source "index.html"
# end=end=end

template "#{node["document_root"]}/index.html" do
	source "index.html.erb"
end

