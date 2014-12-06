require_relative 'source'
require 'pry'

def valid_ip_addresses(string)
  string.scan(/\b(?:(?:2(?:[0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9])\.){3}(?:(?:2(?:[0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9]))\b/)
end

def valid_mit_ip_addresses(string)
  string.scan(/\b(?:18\.{1})(?:(?:2(?:[0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9])\.){2}(?:(?:2(?:[0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9]))\b/)
end

def non_mit_ip_addresses(string)
  string.scan(/\b(?:(?!18)(?:2(?:[0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9])\.){3}(?:(?:2(?:[0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9]))\b/)
end

def valid_phone_numbers(string)
  string.scan(/\b(?:[2-9](?:[0-9]{2}))(?:\-)(?:[2-9](?:[0-9]{2}))(?:\-)(?:[0-9]{4})\b/).uniq

  # this regex looks for a phone number with any of these formats: '617 388 9520', '617.388.9520', '617-388-9520', '(617)-388-9520', '(617).388.9520', '(617) 388 9520'
  # string.scan(/(?:[\(])?(?:[2-9](?:[0-9]{2}))(?:[\)])?(?:\-|\.|\s)?(?:[2-9](?:[0-9]{2}))(?:\-|\.|\s)(?:[0-9]{4})\b/).uniq
end

def area_codes(string)
  string.scan(/([2-9](?:[0-9]{2}))(?:\-)(?:[2-9](?:[0-9]{2}))(?:\-)(?:[0-9]{4})\b/).flatten.uniq
end

def email_addresses(string)
  string.scan(/\b(?:[\w\d\S]+)@(?:[\w\d\-\.]){1,253}[\.](?:[\w]{3})\b/)
end

def zip_codes(string)
  string.scan(/\b(?:\d{5})\b/)
end

def hex_colors(string)
  # hex numbers are 0-9 a-f six digits
  string.scan(/(?:#([\da-f]{6}))/).flatten
end