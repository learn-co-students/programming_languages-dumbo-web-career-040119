def reformat_languages(languages)
  # your code here
  new_language = {}
  existing_key = ""
  languages.each do |key,value|
    
    value.each do |key1,value1|
      #puts new_language.has_key?(key1)
      if new_language.has_key?(key1) == false
        new_language[key1] = value1
        new_language[key1][:style] = [key]
      else
        new_language[key1][:style] << key
      end
    end
  end
  return new_language
end


#value.each do |key1,value1|
#      new_language[key1] = value1
#      new_language[key1][:style] = [key]
#    end