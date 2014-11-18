# BASIC EXAMPLE
# Given a phone number inputted in any way, how do we extract just the numbers?

def format_num(num)
  num.gsub(/\D/,"")
  # gsub takes two arguments:
  # the first is a regex pattern to match: \D is any non-digit character
  # the second is what matching elements should be replaced with
end

nums = [
  '(646)-242-2234',
  '(516) 445-2190',
  '(718) 445 8999',
  '17320432111',
  '1-973-324-5532',
  '1(455)2301444',
]

nums.each_with_index { |e,i|
  puts "Phone number #{i+1}: " + format_num(e)
}
