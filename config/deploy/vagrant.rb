set :stage, :vagrant

keyfile = File.join(ENV['HOME'], '/.vagrant.d/insecure_private_key')
puts "Using keyfile: #{keyfile}"
set :ssh_options, { port: 2222, keys: [keyfile] } # , verbose: :debug }

role :web, 'localhost'

server 'localhost', user: 'vagrant'

set :deploy_to, '~/my_app'
