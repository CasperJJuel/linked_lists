class LinkedList
  attr_accessor :tail, :head
  def initialize()
    @head = nil
    @tail = nil
  end
  #Represents the full list

  def append(node)
    node = Node.new(node)
    if !@head
      @head = node
      @tail = node
    end
      @last_node = get_last()
      @last_node.next_node = node
      @tail = node
  end

  def get_last
    return if !@head
    node = @head
    until node.next_node.nil?
      node = node.next_node
    end
    return node
  end

  def add_first(data)
    @head = Node.new(data, @head)
  end

  def size
  end

  def head
    return @head
  end

  def tail
    return @tail
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
    "(#{@value}) -> (#{@next_node})"
  end

end

class Node < LinkedList
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
 node2 = Node.new(20) #Middle node
 node4 = Node.new(30) #Middle node
# node3 = Node.new(40, nil) #Tail node

node_list.append(node1)
node_list.append(node2)
node_list.append(node3)

puts node_list

exit
