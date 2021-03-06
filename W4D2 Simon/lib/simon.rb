class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    game_over
    game_over_message
    reset_game
    
  end

  def take_turn
    show_sequence
    require_sequence

    if !game_over
      round_success_message
      @sequence_length += 1
    else
      take_turn
    end

  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    puts 'Enter the sequence'
    user_guess = gets.chomp.split(' ')
    if user_guess != seq
      game_over = true
    end

  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts 'Sucessful round, congrats!'
  end

  def game_over_message
    puts 'Game Over'
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

g = Simon.new
g.play