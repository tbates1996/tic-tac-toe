class Player
	attr_accessor :symbol
	
	def initialize(type)
		@symbol = type
	end

	def getMove

		move = gets.chomp.to_i
		 until (1..9).include?(move)
			"Enter a space between 1-9"
			move = gets.chomp.to_i
		end
		return move
	end

end


# class Opponent < Player
# end
