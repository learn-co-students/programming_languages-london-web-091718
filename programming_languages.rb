require "pry"

def reformat_languages(languages)
  new_hash = Hash.new

  languages.each do |x, y|
    y.each do |x1, y1|
      new_hash[x1] ||= y1
      new_hash[x1][:style] = []
    end
  end
  languages.each do |x, y|
    y.each do |x1, y1|
      new_hash[x1][:style] << x
  end
end
return new_hash
end
