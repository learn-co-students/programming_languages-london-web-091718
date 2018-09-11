def reformat_languages(languages)
  new = {}
  
  languages.each do |type, lang|
    lang.each do |language, att|
      att.each do |attri, str|
        if new[language].nil?
          new[language] = {}
        end
        new[language][:style] ||= []
        new[language][:style]  << type
        
        if new[language][attri].nil?
          new[language][attri] = str
        end
      end
    end
  end
  new
end