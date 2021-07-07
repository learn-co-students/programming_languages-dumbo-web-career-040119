
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |key, value|
    value.each do |k, v|
      new_hash[k] = v
      new_hash[k][:style] = []
      new_hash[k][:style] << key
      if k == :javascript
        new_hash[k][:style] = [:oo, :functional]
      end
    end
  end
  new_hash
end
puts reformat_languages(languages)
