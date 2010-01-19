#! ruby -Ku

require "test_helper"
require "pure_nkf"

class CoreTest < Test::Unit::TestCase
  def setup
    @module = PureNKF
  end

  def test_convert_Z1
    assert_equal("!", @module.convert_Z1("！"))
  end
end
