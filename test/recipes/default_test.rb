# # encoding: utf-8

# Inspec test for recipe chef-centos7-httpd-demo::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

remote_file '/var/www/html/jason.jpg' do
  source 'https://s3-us-west-1.amazonaws.com/jasondeboltpublic/jason_suit_night.jpg'
  owner 'web_admin'
  group 'web_admin'
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner 'web_admin'
  group 'web_admin'
  mode 00744
end
