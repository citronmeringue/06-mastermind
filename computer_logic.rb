require_relative 'board.rb'
require_relative 'player.rb'

class Computer_Logic
    COLOURS = ["yellow", "green", "blue", "red", "violet", "orange"]
   
def self.check(array_code,computer_guess)


p    computer_guess.tally

   # computer_guess
end
end

#p Computer_Logic.new(["red","blue","orange", "yellow"])
 p Computer_Logic.check(["red","blue","orange", "yellow"], ["blue", "green", "orange","yellow"])

#p ["red","blue","orange", "yellow", "orange"].uniq


=begin

        if array_code.include?(computer_guess[index])
            if computer_guess[index] != array_code[index]
                computer_guess[index] = COLOURS.sample
            end
        end
=end

p ["red","blue","orange", "yellow"].shuffle


@board.check_computer_guess(array_user, @secret_code)

def check_computer_guess(array_code, array_guess)
    toto = check_user_guess(array_code, array_guess)

    hash_count_clues = toto.tally

    if toto.length == @size
      array_guess = array_guess.shuffle
    end

  end