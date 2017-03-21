require 'serverspec'

set :backend, :exec

describe "Integration" do
   describe command('apt-get install -y netcat') do
      its(:exit_status) { should eq 0 }
   end

#   describe command('echo stat | nc localhost 2181') do
#      its(:stdout) { should contain('Mode: ') }
#   end

   describe file('/etc/init.d/flink-init.sh') do
      its(:content) { should match /taskmanager/ }
   end
end
