require_relative 'board.rb'
require_relative 'player.rb'

class Game
  def initialize
    @board = Board.new()
    @player = Player.new("Luffy", @board)
    @random_code = @board.code_maker
  end

  def play
    # puts "#{@random_code}" #computer random code selection
    i = 1

    loop do
      array_user = @player.test
      puts "array_user : #{array_user}"

      i += 1

      break if winning || i > 12

      @board.reinitialize_guess
    end

    puts "You lose" if i > 12
  end

  def winning
    if @board.check_win?(@random_code, @board.display)
      puts "Code broken ! Congrats!"
      true
    end
  end
end
