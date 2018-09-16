def reformat_languages(languages)
  new_hash = {}
  languages.each do |k,v|
    v.each do |l,w|
      new_hash[l] ||= w
      new_hash[l][:style] ||= []
      new_hash[l][:style] << k
    end
  end
  new_hash
end
