require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_style, data|
    data.each do |lang, lang_data|
      new_hash[lang] = lang_data if !new_hash[lang]
      if !new_hash[lang][:style]
        new_hash[lang][:style] = [lang_style]
      else
        new_hash[lang][:style] << lang_style
      end
    end
  end
  new_hash
end
