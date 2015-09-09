#Solution File
class Node
  attr_accessor :data, :next

  def initialize data
    @data = data
    @next = nil
  end
end

class LinkedList
  attr_accessor :head, :tail, :count

  def initialize
    @head = nil
    @tail = nil
  end

  def insert data
    temp = @head
    @head = Node.new(data)
    @head.next = temp
    @tail = @head if @tail.nil?
  end

  def output node = nil
    node ||= @head
    print node.data
    print ", "
    output node.next unless node.next.nil?
  end
end

 list = LinkedList.new
 element = gets
 while element != "-1"
 list.insert element  
 end
 list.output
