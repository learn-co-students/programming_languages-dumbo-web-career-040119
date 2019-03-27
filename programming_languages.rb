# we dont need to worry about ":type", because that stays the same
# in new_hash as in the languages hash!

def reformat_languages(languages)
  new_hash = {}

  # "style" refers to :oo or :functional
  # "lang_name" is the name of the language
  languages.each do |style, lang_name|

    # "name" is the name of the language (same as lang_name from above)
    # "info" is the hash that the name of the language points to!
    lang_name.each do |name, info|

      # This "if" says that if you are given a name from the new_hash...
      if new_hash[name]

        # Since in new_hash the :style key is an array, use << to add the
        # style passed in above from the languages hash to that array.
        new_hash[name][:style] << style

      # If we are not passed a name from the new_hash, then we must
      # create a value for the name manually.
      else
        new_hash[name] = {
          style: [style],
          type: info[:type]
        }
      end
    end
  end
  new_hash
end
