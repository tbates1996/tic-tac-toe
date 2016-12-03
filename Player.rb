class Player
	attr_accessor :symbol
	
	def initialize(type)
		@symbol = type
	end

	def getMove
		move = gets.chomp.to_i
		return move
	end

end


# class Opponent < Player
# end
