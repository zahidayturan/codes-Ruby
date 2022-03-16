Point = Struct.new :x, :y do
  def distance(other)
    Math.sqrt((other.x - x)**2 + (other.y - y)**2)
  end
end

p = Point.new 3, 5
q = Point.new 6, 9

p p.distance(q)