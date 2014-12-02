require_relative 'source'
require 'pry'

def valid_ip_addresses(string)
  string.scan(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

def valid_mit_ip_addresses(string)
  string.scan(/18\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

def non_mit_ip_addresses(string)
  valid_ip_addresses(string)
    .select{|ip| !ip.match(/18\.\d{1,3}\.\d{1,3}\.\d{1,3}/)}
end

def valid_phone_numbers(string)
  string
    .scan(/ (\d{3}-\d{3}-\d{4})/)
    .flatten
    .select{ |num| !num.match(/^1/) }
end

def area_codes(string)
end

def email_addresses(string)
end

def zip_codes(string)
end

def hex_colors(string)
end
