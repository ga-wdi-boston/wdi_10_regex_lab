require_relative 'source'
require 'pry'

def valid_ip_addresses(string)
  string.scan(/\d{1,3}[.]\d{1,3}[.]\d{1,3}[.]\d{1,3}/) # \b
end

def valid_mit_ip_addresses(string)
  string.scan(/18[.]\d{1,3}[.]\d{1,3}[.]\d{1,3}/)
end

def non_mit_ip_addresses(string)
  string.scan(/\d{1,3}[^18][.]\d{1,3}[.]\d{1,3}[.]\d{1,3}/)
end

def valid_phone_numbers(string)
  string.scan(/[^1]\d{2}[-]\d{3}[-]\d{4}/).uniq
end

def area_codes(string)
  valid_phone_numbers(string).map { |element| element[0,3]}
end

def email_addresses(string)
  string.scan(/\w*[@]\w*[.]\w*/)
end

def zip_codes(string)
  string.scan(/\b\d{5}\b/)
end

def hex_colors(string)
  string.scan(/[#][0-9a-f]{6}/).map { |element| element.delete('#')}
  # string.scan(/[#][0-9a-f]{6}/).map(&:delete('#'))
end
