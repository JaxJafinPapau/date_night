require './test/test_helper'

class BinarySearchTreeTest < Minitest::Test
  def setup
    @tree = BinarySearchTree.new
  end

  def test_insert_adds_new_node_and_returns_depth
    expected = @tree.insert(61, "Bill & Ted's Excellent Adventure")

    assert_equal 0, expected
  end

  def test_tree_assigns_first_node_as_head
    @tree.insert(61, "Bill & Ted's Excellent Adventure")

    assert_equal 61, @tree.head.score
  end

  def test_last_node_returns_the_end_of_the_list
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @tree.insert(16, "Johnny English")
    @tree.insert(92, "Sharknado 3")
    @tree.insert(50, "Hannibal Buress: Animal Furnace")
  end
end
