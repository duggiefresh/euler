require 'minitest/autorun'
require 'minitest/pride'

class MiniTest::Spec
  class << self
    alias :context :describe
  end
end
