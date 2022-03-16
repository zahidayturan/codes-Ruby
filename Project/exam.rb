def accept(n)
  i , (Dizi) = 1 , (1, 1)
  while i < n
    Dizi[i + 1] = Dizi[i] + Dizi[i - 1]
   i += 1
  end
  Dizi[n-1]
end

accept(5)