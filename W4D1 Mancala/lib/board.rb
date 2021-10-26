require_relative 'player'

class Board
  
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){Array.new()}
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup,i|
      4.times {cup << :stone} unless i == 6 || i == 13
    end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos < 0 || start_pos > 13
    raise 'Starting cup is empty' if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    num_stones = cups[start_pos].count
    cups[start_pos] = []
    skip_pos = 13 if start_pos >= 0 && start_pos <=5
    skip_pos = 6 if start_pos >= 7 && start_pos <=12

    # if start pos is between 0-5, we need to skip 13, elsif start pos if between 7-12 we need to skip 6
    (1..num_stones).each do |i|
      cup_index = (start_pos + i) % 13
      if cup_index == skip_pos
        cup_index = (skip_pos + 1) % 13
      end
      cups[cup_index] << :stone   
    end
    render
    end_idx = (start_pos + num_stones) % 13
    next_turn(end_idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    return :switch if cups[ending_cup_idx].empty?
    return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13
    return ending_cup_idx if !cups[ending_cup_idx].empty?
    
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if (0...6).all? { |i| cups[i].empty?} || (7..12).all? { |i| cups[i].empty?}
    false
  end

  def winner
    'Erica'
  end
end
