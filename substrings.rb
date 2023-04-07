def substrings(string,dictionary)
    matches = Hash.new(0)
    string_as_array = string.downcase.split
    string_as_array.each do |string|
        dictionary.each do |word|
            matches[word] += 1 if string.include?(word)
        end
    end
    matches
end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# puts substrings("below", dictionary)
# puts substrings("Howdy partner, sit down! How's it going?", dictionary)