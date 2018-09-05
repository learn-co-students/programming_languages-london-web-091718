require 'pry'

def reformat_languages(languages)
  result = {}
  languages.each do |style, lang|
    lang.each do |lang, type|
      type.each do |type_key, type_value|
       # binding.pry
        if result[lang] == nil
          result[lang] = {
          type_key => type_value,
          :style => [style]
           }
        else
           result[lang][:style] << style
        end
      end
   end
  end
  result
end
