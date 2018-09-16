require 'pry'
 def reformat_languages(languages)
  # your code here
  formatted_hash = {}
  languages.each do |style, language|
    language.each do |lang_name, details|
      details.each do |key, value|

        if formatted_hash[lang_name] == nil
          formatted_hash[lang_name] = {type: value, style: [style]}
        else
          formatted_hash[lang_name][:style] << style
        end
      end
    end
  end
  formatted_hash

end
