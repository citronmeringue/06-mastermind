require_relative 'board.rb'
require_relative 'player.rb'

class Game
  def initialize
    @board = Board.new()

    answer = ask_role
    if answer == "codebreaker"
      @player = Human_Player.new("Luffy", answer, @board)
      @computer = Computer_Player.new(@board)
      @secret_code = @computer.computer_random
      puts "Secret code = #{@secret_code}"
      @current_player = @player
    elsif answer == "codemaker"
      @player = Human_Player.new("Luffy", answer, @board)
      @computer = Computer_Player.new(@board)
      @secret_code = @player.codemaker
      puts "Secret code = #{@secret_code}"
      @current_player = @computer
    end
  end

  def ask_role
    # player answer
    puts "Do you want to be the codebreaker or the codemaker ?"
    gets.chomp
  end

  def toto
    array_user = []
    if @player.role == "codebreaker"
      array_user = @player.codemaker
    else
      array_user = @computer.computer_guess
    end
    array_user
  end

  def play
    # ask player if he wants to be the code break or creator
    i = 1

    loop do
      puts "Number of turns : #{i}"
      toto
      puts "board guess = #{@board.display}"
      i += 1
      break if winning || i > 12

      @board.reinitialize_guess
    end

    puts "#{@current_player.name} LOST... " if i > 3
  end


  def winning
    if @board.check_win?(@secret_code, @board.display)
      puts "Code broken ! #{@current_player.name} WON !!"
      true
    end
  
  end
end


