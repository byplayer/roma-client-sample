require 'roma-client'
require 'roma-client-plugin-alist'

puts "RomaClient version: #{Roma::Client::VERSION::STRING}"
puts "alist version     : #{Roma::Client::Plugin::AList::VERSION::STRING}"

servers = [
           'localhost:12000',
           'localhost:12001'
          ]


pool = Roma::Client::ClientPool.instance(:test)
pool.servers = servers
pool.add_plugin_module(Roma::Client::Plugin::AList)
client = pool.client

puts "alist_empty?: #{client.alist_empty?('test')}"

