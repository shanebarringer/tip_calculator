require_relative 'gratuity'

percentage = proc do
  puts 'On a scale of 1 to 3, how would you rate your service? '
  Ranking.new(gets.chomp).verify_ranking.percentify
end

print 'Please enter the total amount of the check: '
grat = Gratuity.new(gets.chomp, &percentage)

grat.gratify
puts "Your total with tip is: $#{grat.new_total}"
