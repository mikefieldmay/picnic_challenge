require_relative 'hamper'

class Picnic

  attr_reader :hamper, :sandwich_list

  def initialize
    @hamper = Hamper.new
    @sandwich_list = hamper.sandwich_list
  end


  def eat(sandwich, *ingredient)
    if sandwich_list.include?(sandwich)
      "You have eaten #{sandwich}"
    elsif @hamper.cheese_sandwich.filling.include?(ingredient)
      @hamper.cheese_sandwich.filling.delete(ingredient)
      "You have eaten #{ingredient} from the Cheese Sandwich"
    elsif @hamper.ham_sandwich.filling.include?(ingredient)
      @hamper.ham_sandwich.filling.delete(ingredient)
      "You have eaten #{ingredient} from the Ham Sandwich"
    else
      "#{ingredient} is not in any sandwiches"
    end
  end

end
