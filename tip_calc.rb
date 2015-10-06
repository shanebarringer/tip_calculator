require_relative 'gratuity'

# def grat(a, rank)
#
#   percent = a.to_f * b.to_f
#   total = a.to_f + percent.to_f
#   puts "your total is #{total}"
# end
#
# def ranking(rank)
#   if rank != (1..5)
#     puts "invalid ranking, please try again"
#     rank = gets.chomp
#   end
# end

puts "On a scale of 1 to 3, how would you rate your service?"
rank = Ranking.new(gets.chomp)
rank.verify_ranking

puts "hi enter the bill"
grat = Gratuity.new(gets.chomp, rank.percentify)
grat.gratify
puts "your total is: $#{grat.new_total}"
