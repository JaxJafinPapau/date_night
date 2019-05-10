require 'simplecov'
SimpleCov.start do
  add_filter 'test'
end

require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'
