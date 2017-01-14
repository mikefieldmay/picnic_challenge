class Sandwich

  attr_reader :filling, :name

  def initialize(name, *filling)
    @name = name
    @filling = filling
  end

end
