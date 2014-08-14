require_relative 'source'
require 'pry'

def valid_ip_addresses(text)
  text.scan(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

def valid_mit_ip_addresses(text)
  text.scan(/18\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

def non_mit_ip_addresses(text)
  text.scan(/\b(?!18)(?:\d{1,3}\.){3}\d{1,3}\b/)
end

def valid_phone_numbers(text)
  text.scan(/(?<=\s)[2-9]\d{2}-\d{3}-\d{4}\b/)
end

def area_codes(text)
  text.scan(/(?<=\s)[2-9]\d{2}(?=-)/)
end

def email_addresses(text)
  text.scan(/(?:\w+@\w+\.(?:com|net))/)
end

def zip_codes(text)
  text.scan(/(?<=\s)\d{5}(?=[\s,])/)
end

def hex_colors(text)
  text.scan(/(?<=#)(?:[a-f0-9]{6})/)
end
