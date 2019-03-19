def reformat_languages(languages)
  ab = languages.keys

  #languages[i][d]

  ij = languages[ab[0]].to_a

  i, c, b = 0, [], []
      while i < ij.length
            if !ij[i].include?(:javascript)
            c << ij[i]
            else
      b << ij[i]
      end
      i+=1
      end
  c


  jj = languages[ab[1]].to_a

  k, t = [], 0
  while t < jj.length
    if !jj[t].include?(:javascript)
      k << jj[t]
      end
    t+=1
  end

  c.to_h.each do |i,v|
  v.merge!(:style => [:oo])
  end

  k.to_h.each do |i,v|
  v.merge!(:style => [:functional])
  end

  b.each do |i,v|
  v.merge!(:style =>[:functional, :oo])
  end

  b


  l = c+k+b
  l.to_h


end
