
module PureNKF
  def self.convert_Z1(value)
    value = value.dup
    value.gsub!(/！/, "!")
    value.gsub!(/＝/, "=")
    value.gsub!(/－/, "-")
    value.gsub!(/　/, " ")
    value.gsub!(/Ｊ/, "J")
    value.gsub!(/Ｒ/, "R")
    value.gsub!(//, "")
    value.gsub!(//, "")
    return value
  end
end
