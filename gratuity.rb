require_relative 'ranking'
class Gratuity
  attr_accessor :total
  attr_reader :percentage
  def initialize(total, percentage)
    @total = total
    @percentage = percentage
  end

  def gratify
   @total.to_f * @percentage.to_f
  end

  def new_total
    new_total = gratify + @total.to_f
    sprintf("%.2f", new_total)
  end
end
