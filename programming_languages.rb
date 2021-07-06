def reformat_languages(languages)
hash = {}
  languages.each do |of, lang|
    lang.each do |name, type|
      # puts "#{type}"
      hash[name] = type
        hash[name][:style] = []
          hash[name][:style] << of
          if name == :javascript
          hash[name][:style] << :oo
        end 
      end 
    end
  hash
end 
