class BinarySearchTree
  attr_reader :head
  def initialize
    @head = nil
  end

  def insert(score, title)
    new_node = Node.new(score, title)
    if @head.nil?
      @head = new_node
      @head.depth
    else
      last_node(@head)
    end
  end

  def last_node(starting_node)
    return starting_node if starting_node.left_empty? && starting_node.right_empty?
    last_node(starting_node.next_node)
  end
end
