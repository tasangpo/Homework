fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

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

# p sluggish_octopus(fishes)


def dominant_octopus(fishes)
    merge_octopus(fishes).first
end


def merge_octopus(fishes)
    return fishes if fishes.count <= 1

    mid = fishes.length / 2
    left = merge_octopus(fishes[0...mid])
    right = merge_octopus(fishes[mid..-1])

    sorted_fishes = merge(left, right)
    sorted_fishes
end

def merge(left, right)
    merged = []
    until left.empty? || right.empty?
        if left.first.length > right.first.length
            merged << left.shift
        else
            merged << right.shift
        end
    end
    merged + left + right
end

# p dominant_octopus(fishes)


def clever_octopus(fishes)
    biggest_fish = nil
    fishes.each do |fish|
        if biggest_fish == nil || biggest_fish.length < fish.length
            biggest_fish = fish
        end
    end
    biggest_fish
end

# p clever_octopus(fishes)

