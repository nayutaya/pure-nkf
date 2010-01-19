#! ruby -Ku

require "test_helper"
require "pure_nkf"

class CoreTest < Test::Unit::TestCase
  def setup
    @module = PureNKF
  end

  def test_convert_Z1
    [
      ["！", "!"],
      ["＝", "="],
      ["－", "-"],
      ["　", " "],
      ["ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ"],
      ["ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "abcdefghijklmnopqrstuvwxyz"],
      ["０１２３４５６７８９", "0123456789"],
    ].each { |value, expected|
      assert_equal(expected, @module.convert_Z1(value))
    }
  end
end
