#! ruby -Ku
# coding: utf-8

require "test_helper"
require "pure_nkf"
require "nkf"

class CoreTest < Test::Unit::TestCase
  def setup
    @module = PureNKF
  end

  def test_convert_Z1
    [
      ["０１２３４５６７８９", "0123456789"],
      ["ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ"],
      ["ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ", "abcdefghijklmnopqrstuvwxyz"],
      ["　", " "],
      ["！“”＃＄％＆‘’（）＊＋，－．／", "!\"\"\#$%&`'()*+,-./"],
      ["：；＜＝＞？＠", ":;<=>?@"],
      ["［￥］＾＿｀", "[¥]^_`"],
      ["｛｜｝", "{|}"],
      ["—―−", "---"],
      ["〈〉", "<>"],
      ["＼", "\\"],
    ].each { |value, expected|
      assert_equal(expected, @module.convert_Z1(value))
      assert_equal(
        NKF.nkf("-w -Z1", value),
        @module.convert_Z1(value))
    }
  end
end
