require 'forwardable'
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
  extend Forwardable # Delegasyon için gerekli DSL'i (ör. def_delegator) etkinleştir

  def_delegator :@position, :distance # Delegasyonu tanımla
  attr_reader :position, :width, :height
  def initialize(position:Point.new(0, 0), width:, height:)
    @position = position
    @width    = width
    @height   = height
  end

  def move(delta_x, delta_y)
    @position = @position.move(delta_x, delta_y)
  end

  def to_s
    "[#{width}x#{height}] x:#{position.x} y:#{position.y}"
  end
end

def main
  r = Rectangular.new(position: Point.new(3, 4), width: 3, height: 5)
  puts r
  puts r.distance
end
main