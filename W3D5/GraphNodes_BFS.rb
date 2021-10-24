require 'set'
class GraphNode
    attr_accessor :val, :neighbors
    def initialize(val)
        @val = val
        @neighbors = []
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value, visited = Set.new())
    visited.add(starting_node.val)
    return nil if visited.include?(starting_node.val)

    neighbors = starting_node.neighbors
    neighbors.each do |node|
        return node if node.val == target_value
        bfs(node, target_value)
    end
    nil
end

p bfs(a,'f')