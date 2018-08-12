class Node
    attr_reader :nextPointer, :prevPointer
    attr_accessor :data

    def initialize(data)
        @data = data
        @nextPointer = nil
        @prevPointer = nil
    end

    def next?
        return !@nextPointer.nil?
    end

    def prev?
        return !@prevPointer.nil?
    end
end

class Doubly_Linked_List
    @@head = nil

    def initialize(data)
        @@head = Node.new(data)
    end

    def addNode(data)
        current = @@head
    end
end

hello = Node.new(3)
puts hello.next?