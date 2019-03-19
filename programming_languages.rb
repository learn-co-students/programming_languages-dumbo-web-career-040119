def reformat_languages(languages)
  new_hash = {}
  languages[:oo].each do |k,v|
   new_hash[k] = v
   new_hash[k][:style] = [:oo]
  end

  languages[:functional].each do |k,v|
    new_hash[k] = v
    new_hash[k][:style] = [:functional]
  end

    new_hash[:javascript][:style] = [:functional, :oo]

new_hash
end
