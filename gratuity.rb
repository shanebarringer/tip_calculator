require_relative 'ranking'
class Gratuity
  attr_accessor :total, :percentage
  def initialize(total, percentage = nil)
    @total = total
    @percentage = percentage
  end

  def gratify
    @total.to_f * @percentage.to_f
  end

  def new_total
    new_total = gratify + @total.to_f
    # kernel method for adding properly displaying decimal output
    sprintf('%.2f', new_total)
  end
end
