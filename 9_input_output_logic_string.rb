# Taken from http://pragprog.com/titles/fr_ltp/learn-to-program
#
# Write a Deaf Grandma program. Whatever you say to grandma (whatever
# you type in), she should respond with HUH?!  SPEAK UP, SONNY!, unless
# you shout it (type in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back, NO, NOT SINCE 1938!
# You can't stop talking to grandma until you shout BYE.
#
# Hint: Don't forget about chomp! "BYE\n" is not the same as "BYE"
# (check the String cheatsheet if you need)
#
# remember, you can try your program by going to the terminal and typing   $ ruby 9_input_output_logic_string.rb
#
# example:
#
#
# USER:     $ ruby 9_input_output_logic_string.rb
# USER:     hi grandma.
# GRANDMA:  HUH?! SPEAK UP, SONNY!
# USER:     HI GRANDMA!
# GRANDMA:  NO, NOT SINCE 1938!
# USER:     bye
# GRANDMA:  HUH?! SPEAK UP, SONNY!
# USER:     BYE

def deaf_grandma
input = gets.chomp!
while input != input.upcase
  puts "HUH?! SPEAK UP, SONNY!"
  input = gets.chomp!
end
while input == input.upcase && input != "BYE"
puts "not since 19"+rand(3..5).to_s+"0"
input = gets.chomp!
end
if input == "BYE" then puts "bye"
end

end





# This will call your code so you can run it from the terminal.
# But not call it otherwise, so that it will work with our tests.
deaf_grandma if $0 == __FILE__