class Tally

    attr_accessor :heads, :tails

    def initialize
        @heads = []
        @tails = []
    end

end

class Coin

 def initialize
     @tally = Tally.new
 end

    def flip

    if rand.round == 0
         coin = "heads"
         @tally.heads << "heads"
    else
        coin = "tails"
        @tally.tails << "tails"
    end
     "It is #{coin} "
    end

    def heads
      @tally.heads.count
    end

    def tails
      @tally.tails.count
    end

end
