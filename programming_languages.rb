
=begin
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
=end

=begin
{
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}
=end

def reformat_languages(languages)
  new_hash = {}

  languages.each do |oo_or_func, lang_key|
    lang_key.each do |language, attr_hash|
      attr_hash.each do |attribute, value|
      new_hash[language] = {} if new_hash[language].nil?

      new_hash[language][:style] || new_hash[language][:style]= []
      new_hash[language][:style] << oo_or_func

      new_hash[language][attribute] = value if new_hash[language][attribute].nil?
      end
    end
  end
  new_hash
end
