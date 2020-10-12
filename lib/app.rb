require 'pry'
require_relative 'user'
require_relative 'event'

my_event = Event.new("2020-10-12 16:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

User.new("julie@julie.com", 35)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)

binding.pry
puts "End of file"