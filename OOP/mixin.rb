module M
  def some_meth
    puts 'some_meth'
  end
end

class A
  include M  #dinamik
end

class N
  def some_meth
    puts 'some_meth'
  end
end

class B < N  #statik
end

a = A.new
a.some_meth

b = B.new
b.some_meth