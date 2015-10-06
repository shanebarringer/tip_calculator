require_relative 'gratuity'

puts 'On a scale of 1 to 3, how would you rate your service? '
rank = Ranking.new(gets.chomp)
rank.verify_ranking

print 'Please enter the total amount of the check: '
grat = Gratuity.new(gets.chomp, rank.percentify)
grat.gratify
puts "Your total with tip is: $#{grat.new_total}"
