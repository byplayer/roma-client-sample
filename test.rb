require 'bundler/setup'
require 'roma-client'

servers = [
           'localhost:12000',
           'localhost:12001'
          ]


pool = Roma::Client::ClientPool.instance(:test)
pool.servers = servers
client = pool.client

puts "# set []"
puts client['test'] = 'test value'

puts "# get []"
puts client['test']

puts "# delete"
puts client.delete('test')

puts "# set method with expire"
puts client.set('test2', 'test2 value', '2')

puts "# get method"
puts client['test2']

sleep(5)
puts "# get method2"
puts client['test2']

