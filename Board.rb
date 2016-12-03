class Board

	def initialize
		@moves = [1,2,3,4,5,6,7,8,9]
	end

	def printBoard
		puts "#{@moves[0]}|#{@moves[1]}|#{@moves[2]}"
		puts "~~~~~"
		puts "#{@moves[3]}|#{@moves[4]}|#{@moves[5]}"
		puts "~~~~~"
		puts "#{@moves[6]}|#{@moves[7]}|#{@moves[8]}"
	end
	
	def getBoard()
		return @moves
	end
	def setMove(space, symbol)
		until ((1..9).include?@moves[space-1])
			puts "Enter a valid space"
			space = gets.chomp.to_i
		end
		
		@moves[space-1] = symbol
	end


end
	