require 'minitest/autorun'
require_relative '../script/rainbowable.rb'

class RrainbwableTest < Minitest::Test
    def test_rainbow
        assert Rainbowable
    end
end