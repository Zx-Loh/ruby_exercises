dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
    result = Hash.new(0)
    letters = string.downcase.split(" ")

    letters.map do |word|
        dictionary.map do |substring|
            if word.include?(substring)
                result[substring] += 1
            end
        end
    end
    p result

end

substring("Howdy partner, sit down! How's it going?", dictionary)