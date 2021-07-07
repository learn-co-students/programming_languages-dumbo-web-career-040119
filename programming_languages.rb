def reformat_languages(languages)
  # your code here
  
  newHash = {}
  
  languages.each do |sty,lang|
    lang.each do |type, x|
      if newHash.has_key?(type)
        newHash[type][:style] << sty
      else
        newHash[type] = x
        newHash[type][:style] = [sty]
      end
    end
  end
  
  return newHash
end
