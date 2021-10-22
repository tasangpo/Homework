class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end
end


class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue[-1]
    end

end

class Map

    def initialize
        @map = []
    end

    def my_include?(key)
        @map.any? { |pair| pair[0] == key}
    end

    def get_index(key)
        @map.each_with_index do |pairs, i|
            return i if pairs[0] == key
        end
        nil
    end

    def set(key, value)
        if !my_include?(key)
            @map << [key, value]
        else
            index = get_index(key)
            @map[index] = [key, value]
        end
    end

    def get(key)
        (0...@map.length).each do |i|
            pair = @map[i]
            curr_key = pair[0]
            return pair if curr_key == key
        end
        nil
    end

    def delete(key)
        (0...@map.length).each do |i|
            pair = @map[i]
            curr_key = pair[0]
            @map.delete_at(i) if curr_key == key
        end
        @map
    end

    def show
        @map
    end

end