def sluggish_octopus(fishes)
    biggest_fish = nil
    bigger_fish = nil

    (0...fishes.length).each do |i|
        fish_1 = fishes[i]
        (i+1...fishes.length).each do |j|
            fish_2 = fishes[j]
            if fish_1.length > fish_2.length
                bigger_fish = fish_1
            else
                bigger_fish = fish_2
            end
            biggest_fish = bigger_fish if biggest_fish == nil || bigger_fish.length > biggest_fish.length
        end
    end
    biggest_fish
end

# fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
#  'fiiiissshhhhhh']
# p sluggish_octopus(fishes)