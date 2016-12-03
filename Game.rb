class Game
	require './Board'
	require './Player'
	#All possible combinations of wins
	Wins = [
		[0,1,2],[3,4,5],[6,7,8],
		[0,3,6],[1,4,7],[2,5,8],
		[0,4,8],[2,4,6]
	]

	def initialize 
		@player1 = Player.new("X")
		@player2 = Player.new("O")
		@board = Board.new()
		@currentPlayer = @player1
		@moves = 0
	end

	def swapCurrentPlayer
		if @currentPlayer.symbol == "X"
			@currentPlayer = @player2
		else
			@currentPlayer = @player1
		end
	end
	#Tests to see if the game is at an end state
	def win?
		currentBoard = @board.getBoard
		if Wins.any? {|line| line.all? { |space| currentBoard[space] == @currentPlayer.symbol }}
			
			return true
		else 
			return false
		end
	end

	def start
		until @moves == 9 || win?
			swapCurrentPlayer()
			system 'clear' #Clear the console to make the game appear continuous 
			system 'cls'
			@board.printBoard()
			@board.setMove(@currentPlayer.getMove(), @currentPlayer.symbol)
			@moves += 1
		end
		system 'clear'#Print the final game board along with the outcome
		system 'cls'
		@board.printBoard()
		if win?
			puts "#{@currentPlayer.symbol} wins!"
		else
			puts "Draw!"
		end
	end

end

game = Game.new()
game.start()
