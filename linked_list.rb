class Node
  attr_reader :nextPointer, :prevPointer
  attr_accessor :data

  def initialize(data)
    @data = data
    @nextPointer = nil
    @prevPointer = nil
  end

  def setNextNode(node)
    @nextPointer = node
    node.linkPrevNode(@nextPointer)
  end

  def setPrevNode(node)
    @prevPointer = node
    node.linkNextNode(@prevPointer)
  end

  #Should be private methods
  #---------------------------
  def linkNextNode(node)
    @nextPointer = node
  end

  def linkPrevNode(node)
    @prevPointer = node
  end
  #---------------------------

  def getNextNode
    @nextPointer
  end

  def getPrevNode
    @prevPointer
  end

  def next?
    return !@nextPointer.nil?
  end

  def prev?
    return !@prevPointer.nil?
  end
end

class DoublyLinkedList
  @head = nil
  @length = 0

  def initialize(data)
    @head = Node.new(data)
    @length = 1
  end

  def addNode(data)
    current = @head
    while current.next?
      current = current.nextPointer
    end
    newNode = Node.new(data)
    current.setNextNode(newNode)
    @length += 1
  end
end

A = DoublyLinkedList.new(3)
A.addNode(4)
p A


