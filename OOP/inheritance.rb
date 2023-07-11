class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance
    Math.sqrt((@x * @x) + (@y * @y))
  end
end

class Rectangular
  attr_reader :position, :width, :height

  def initialize(position: Point.origin, width:, height:)
    @position = position
    @width    = width
    @height   = height
  end

  def area
    width * height
  end

  def periphery
    2 * (width + height)
  end

  def move(delta_x, delta_y)
    @position = @position.move(delta_x, delta_y)
  end

  def to_s
    "[#{width}x#{height}]@#{position}"
  end
end

class Square < Rectangular
  attr_reader :side

  def initialize(side, position: Point.origin)
    super(position: position, width: side, height: side)

    @side = side
  end

  def to_s
    "#{side}@#{position}"
  end
end

square = Square.new 3, position: Point.new(3, 5)
rectangular = Rectangular.new width: 3, height: 3, position: Point.new(3, 5)
puts square
puts rectangular