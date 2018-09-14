require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, langs|
    langs.each do |lang, info|
      info.each do |inf, values|
        if new_hash[lang].nil? == true
          new_hash[lang] = {type: values, style: [style]}
        else
          new_hash[lang][:style] << style
        end
      end
    end
  end
  new_hash
end
