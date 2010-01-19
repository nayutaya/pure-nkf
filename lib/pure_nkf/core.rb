
module PureNKF
  def self.convert_Z1(value)
    value = value.dup
    value.gsub!(/！/, "!")
    return value
  end
end
