require_relative 'sandwiches'

class Hamper

  attr_accessor :ham_sandwich, :cheese_sandwich, :sandwich_list

  def initialize
    @ham_sandwich = Sandwich.new("ham sandwich", "ham", "lettuce", "tomato", "mustard")
    @cheese_sandwich = Sandwich.new("cheese sandwich", "cheese", "onion", "pickle")
    @sandwich_list = [cheese_sandwich.name, cheese_sandwich.filling, ham_sandwich.name, ham_sandwich.filling]
  end

end
