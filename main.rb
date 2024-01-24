class LinkedList
  attr_accessor :tail, :head
  def initialize()
    @head = nil
    @tail = nil
  end
  #Represents the full list

  def append(node)
    if @head == nil
      @head = Node.new(node.value, @head)
    elsif node.next_node == nil
      @tail = Node.new(node.value, node.next_node)
    else
      @next_node = Node.new(node.value, node.next_node)
      @head.next_node = @next_node.value
    end
  end

  def prepend(value)
  end

  def size
  end

  def head
  end

  def tail
  end

  def at(index)
  end

  def pop
  end

  def contains(value)
  end

  def find(value)
  end

  def to_s
    puts "(#{@node}) -> (#{@tail})"
  end

end

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def value
    @value
  end
end

node_list = LinkedList.new()
node1 = Node.new(10) #Head node
node2 = Node.new(20, 10) #Middle node
node3 = Node.new(30, nil) #Tail node

node_list.append(node1)
node_list.append(node2)

puts node_list
puts "This is node1 value: #{node1.value}"
puts "This is node1 next pointer: #{node1.next_node}"
exit
