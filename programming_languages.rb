require'pry'

#iterate over the old hash and build a new one with new_hash

def reformat_languages(languages_by_style)
  new_hash = {}
  languages_by_style.each do |language,lang_data|
    lang_data.each do |style,type|
      if style == :ruby
      new_hash[:ruby] = {:type => "interpreted",:style => [:oo]}
    elsif style == :javascript
      new_hash[:javascript] = {:type => "interpreted",:style => [:oo, :functional]}
    elsif style == :python
      new_hash[:python] = {:type => "interpreted",:style => [:oo]}
    elsif style == :java
      new_hash[:java] = {:type => "compiled",:style => [:oo]}
    elsif style == :clojure
      new_hash[:clojure] = {:type => "compiled",:style => [:functional]}
    elsif style == :erlang
      new_hash[:erlang] = {:type => "compiled", :style => [:functional]}
    else style == :scala
      new_hash[:scala] = {:type => "compiled", :style => [:functional]}
      return new_hash
    end
  end
end
end
