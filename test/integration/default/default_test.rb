# InSpec test for recipe Job_watcher_chef::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe package('python3-dev') do
  it { should be_installed }
end
describe package('python3-pip') do
  it { should be_installed }
end
describe pip('beautifulsoup4') do
  it { should be_installed }
end
