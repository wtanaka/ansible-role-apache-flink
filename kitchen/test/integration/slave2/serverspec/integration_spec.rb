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

   describe command('monit status flink') do
      its(:stdout) { should match /status.*Running/ }
   end

   describe command('/opt/flink/bin/flink run /opt/flink/examples/streaming/WordCount.jar') do
      its(:stdout) { should match /Job execution switched to status FINISHED/ }
   end
end
