

class Game
	require './Board'
	require './Player'

	def initialize 
		@player1 = Player.new("X")
		@player2 = Player.new("O")
		@board = Board.new()
		@currentPlayer = @player1
	end

	def swapCurrentPlayer
		if @currentPlayer.symbol == "X"
			@currentPlayer = @player2
		else
			@currentPlayer = @player1
		end
	end

	def win?
	end
	
	def init 

	end

	def start
		while true
			system 'clear'
			@board.printBoard()
			@board.setMove(@currentPlayer.getMove(), @currentPlayer.symbol)
			swapCurrentPlayer()

		end
	end

end

game = Game.new()
game.start()