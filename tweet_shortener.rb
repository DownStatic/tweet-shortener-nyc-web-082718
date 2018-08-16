# Write your code here.
def dictionary
  dictionary = {"hello":"hi","to":"2","two":"2","too":"2","for":"4","four":"4","be":"b","you":"u","at":"@","and":"&"}
  return dictionary
end

def word_substituter(tweet)
  dictionary = {"hello" => "hi","to" =>"2","two" =>"2","too" =>"2","for" =>"4","four" =>"4","be"=>"b","you"=>"u","at"=>"@","and"=>"&"}
  comparison = dictionary.keys
  expanded_tweet = tweet.split
  expanded_tweet.collect do |word|
    if comparison.include?(word)
      word = dictionary[word]
    end
  end
  return expanded_tweet.join(" ")
end