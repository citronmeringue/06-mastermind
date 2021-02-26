class Board
  attr_accessor :board

  COLOURS = ["yellow", "green", "blue", "red", "violet", "orange"]
  def initialize
    @size = 4
    @board = Array.new()
  end

  # random selection / each selection is unique
  def code_maker
    COLOURS.sample(4).freeze
  end

  def reinitialize_guess
    @board = []
  end

  def display
    @board
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
    puts "#{array_clues.sort}"
    array_clues.sort
  end

  def check_win?(array_code, array_guess)
    toto = check_user_guess(array_code, array_guess)
    toto.all? { |element| element == 'O' && toto.length == 4 }
  end
end
