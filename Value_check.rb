
#!/usr/bin/env ruby

require 'rubygems'
require 'rest-client'
require 'json'
require 'date'
require 'csv'
require 'openssl'
#require '/var/spool/cloud/coupa-data'
require 'net/smtp'
require 'socket'
require 'uri'




list =[]
input_file1 = ARGV.shift
ip1 = IO.readlines(input_file1)
for i in ip1
  list.push(i)
end

puts "enter file name:"
input_file = gets.chomp
ip = IO.readlines(input_file)
for i in ip
  data= i.split(/\s/)
  hostname= data[0]
  if ! list.include?(i)
    puts hostname
  ## puts hostname
  end  
end    

