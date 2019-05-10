class Node
  attr_reader :score,
              :title,
              :depth
  def initialize(score, title)
    @score = score
    @title = title
    @depth = 0
    @left = nil
    @right = nil
  end

  def left_empty?
    @left.nil?
  end

  def right_empty?
    @right.nil?
  end

  def add(node)
    if node.score < @score
      @left = node
    else
      @right = node
    end
  end
end
