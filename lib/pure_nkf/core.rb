
module PureNKF
  Z1_TABLE = [
    [/！/, "!"],
    [/＝/, "="],
    [/－/, "-"],
    [/　/, " "],
    [/Ｊ/, "J"],
    [/Ｒ/, "R"],
  ]

  def self.convert_Z1(value)
    value = value.dup
    Z1_TABLE.each { |pattern, replace|
      value.gsub!(pattern, replace)
    }
    return value
  end
end
