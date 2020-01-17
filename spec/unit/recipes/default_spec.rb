#
# Cookbook:: Job_watcher_chef
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'Job_watcher_chef::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install python-dev' do
      expect(chef_run).to install_package 'python3-dev'
    end

    it 'should install python-pip3' do
      expect(chef_run).to install_package 'python3-pip'
    end

    it 'should requirements' do
      expect(chef_run).to run_execute 'pip3 install requirements'
    end

    it 'should create Downloads folder' do
      expect(chef_run).to create_directory '/home/vagrant/Downloads'
    end

    it 'should create the .csv file' do
      expect(chef_run).to create_file '/home/vagrant/Downloads/ItJobWatchTop30.csv'
    end
  end
end
