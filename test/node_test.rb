require './test/test_helper'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new(61, "Bill & Ted's Excellent Adventure")
  end

  def test_it_has_a_score_and_title
    assert_equal 61, @node.score
    assert_equal "Bill & Ted's Excellent Adventure", @node.title
  end

  def test_left_starts_empty
    assert_equal true, @node.left_empty?
  end

  def test_right_link_starts_empty
    assert_equal true, @node.right_empty?
  end

  def test_node_can_add_left_link
    new_node = Node.new(16, "Johnny English")
    @node.add(new_node)

    assert_equal false, @node.left_empty?
  end

  def test_node_can_add_right_link
    new_node = Node.new(92, "Sharknado 3")
    @node.add(new_node)

    assert_equal false, @node.right_empty?
  end
end
