class Board
  attr_accessor :board

  def initialize
    @size = 4
    @board = Array.new()
  end

  def reinitialize_guess
    @board = []
  end

  def display
    @board
  end

  def computer_guess_board(array)
    @board = array
  end

  def user_choice(colour)
    @board << colour
  end

  def check_user_guess(array_code, array_guess)
    array_clues = []
    array_guess.each_with_index do |element, index|
      if array_code.include?(element)
        if array_guess.index(element) == array_code.index(element)
          array_clues << 'O'
        else
          array_clues << 'X'
        end
      end
    end
    puts "Colour Pegs : #{array_clues.sort}"
    array_clues.sort
  end

  def check_win?(array_code, array_guess)
    toto = check_user_guess(array_code, array_guess)
    toto.all? { |element| element == 'O' && toto.length == @size }
  end





end

