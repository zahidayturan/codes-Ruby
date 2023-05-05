class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def isleft(other)
    @x < other.x
  end

  def to_s
    "(#{@x},#{@y})"
  end

end

def main
  p, q = Point.new(3, 5), Point.new(9, 7)
  puts p.inspect
  p.x = 7
  p.y = 19
  puts p
  puts "#{p} noktası #{q} noktasının " + (p.isleft(q) ? 'solunda' : 'sağında')
end

main
