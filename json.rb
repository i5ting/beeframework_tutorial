#! /bin/ruby
require 'json'

json_arr = []
Dir.foreach("."){ |file| 
  #puts file
  json_arr.push "#{file}" if File.basename(file) =~ /.*\.md$/ && File.basename(file) != 'README.md'
}


p json_arr.to_json
json_file = File.new('./config.json','w')
json_file.puts json_arr.to_json
json_file.close
