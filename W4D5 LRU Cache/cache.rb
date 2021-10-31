class LRUCache
    def initialize(n)
        @cache= []
        @max = n
    end

    def count
        cache.count
    end

    def add(el)
        if count == max
            cache.shift
        end
        
        if !cache.include?(el)
            cache << el
        else
            cache.delete(el)
            cache << el
        end
    end

    def show
        p cache
    end

    private
    attr_reader :max, :cache

end

johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]