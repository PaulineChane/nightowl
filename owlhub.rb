require 'httparty'
require 'dotenv'
require_relative 'nightowl'

nightowl = NightOwl.new

puts "hello, night owl :)"
puts "hoot to hoot, or 1 to finally go to bed!"

input = gets.strip.downcase

while input != '1' do
  if input == '1'
    break
  elsif input == 'hoot'
    nightowl.hoot
  else
    "invalid input, we summon only with hoots"
  end

  puts "hello, night owl :)"
  puts "hoot to hoot, or 1 to finally go to bed!"

  input = gets.strip.downcase
end


puts "good night owl <3"