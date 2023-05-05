class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end
end

class Rectangular
  attr_reader :position, :width, :height

  def initialize(position: Point.new(0, 0), width:, height:)
    @position = position
    @width    = width
    @height   = height
  end

  def to_s
    "(#{position.x}, #{position.y}) - width: #{width}, height: #{height}"
  end
end

def main
  rectangulars = [
    Rectangular.new(position: Point.new(0, 0), width: 3,  height: 5),
    Rectangular.new(position: Point.new(1, 0), width: 2,  height: 4),
    Rectangular.new(position: Point.new(0, 0), width: 10, height: 6),
    Rectangular.new(position: Point.new(2, 4), width: 1,  height: 2)
  ]

  rectangulars.each do |r|
    puts r
  end
end

main
