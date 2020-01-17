#
# Cookbook:: Job_watcher_chef
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
apt_update 'update' do
  action :update
end
package 'python3-dev' do
  action :install
end
package 'python3-pip' do
  action :install
end
directory '/home/ubuntu/Job_watcher' do
  action :create
end
#file '/home/ubuntu/Job_watcher/requirements.txt' do
#  action :create
#end
cookbook_file '/home/ubuntu/Job_watcher/requirements.txt' do
  source 'Job_watcher/requirements.txt'
  mode '777'
  action :create
end
execute 'pip3 install requirements' do
  command 'pip3 install -r /home/ubuntu/Job_watcher/requirements.txt'
  cwd 'home/ubuntu'
end
directory '/home/vagrant/Downloads' do
  action :create
end
file '/home/vagrant/Downloads/ItJobWatchTop30.csv' do
  action :create
end
