require_relative 'board.rb'

class Player
  attr_accessor :name, :role, :bord

  COLOURS = ["yellow", "green", "blue", "red", "violet", "orange"]

  def initialize(name, board)
    @name = name
    @board = board
  end

end

class Human_Player < Player
  def initialize(name, role, board)
    @name = name
    @role = role
    @board = board
  end

  def ask_decoder_pick
    puts "Choose colours :"
    gets.chomp
  end

  def get_decoder_pick
    user_choice = ask_decoder_pick
    check_decoder_pick(user_choice) ? @board.user_choice(user_choice) : get_decoder_pick
  end

  def codemaker
    4.times { |element| get_decoder_pick }
    @board.display
  end

  def check_decoder_pick(ask_decoder_pick)
    if COLOURS.include?(ask_decoder_pick)
      true
    else
      puts "Color not valid !"
    end
  end
end

class Computer_Player < Player
  def initialize(board)
    @name = "Computer"
    @board = board
  end

  # if human player is the codebreaker
  def computer_random
    COLOURS.sample(4).freeze
  end

  # if human player is the codemaker
  # the computer has to guess randomly the code
  def computer_guess
    test = COLOURS.sample(4)
    @board.computer_guess_board(test)
  end
end
