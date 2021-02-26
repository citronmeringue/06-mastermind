require_relative 'board.rb'

class Player
  attr_accessor :name, :bord

  COLOURS = ["yellow", "green", "blue", "red", "violet", "orange"]

  def initialize(name, board)
    @name = name
    @board = board
  end

  def ask_decoder_pick
    puts "Choose the colours you want to try :"
    gets.chomp
  end

  def get_decoder_pick
    user_choice = ask_decoder_pick
    check_decoder_pick(user_choice) ? @board.user_choice(user_choice) : get_decoder_pick
  end

  def test
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
