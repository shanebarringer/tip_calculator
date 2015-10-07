require_relative 'gratuity'

print 'Please enter the total amount of the check: '
grat = Gratuity.new(gets.chomp)
puts 'On a scale of 1 to 3, how would you rate your service? '
rank = Ranking.new(gets.chomp)
rank.verify_ranking
grat.percentage = rank.percentify
system 'clear' || 'cls'
grat.gratify
puts "Your total with tip is: $#{grat.new_total}"
