class A
  def meth
    puts "meth in A:"
  end
end

class B < A
  def meth(x)
    super()

    puts "meth in B: #{x}"
  end
end

a = A.new
b = B.new

b.meth 42