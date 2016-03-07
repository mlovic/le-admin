# set path to application
app_dir = File.expand_path("../../..", __FILE__)
#shared_dir = "#{app_dir}/shared"
working_directory app_dir


# Set unicorn options
 worker_processes 2
 preload_app true
 timeout 30

# Set up socket location
 listen "tmp/sockets/unicorn.sock", :backlog => 64

# Logging
 stderr_path "log/unicorn.stderr.log"
 stdout_path "log/unicorn.stdout.log"

# Set master PID location
 pid "tmp/pids/unicorn.pid"
