# Write your code here.
def dictionary
  dictionary = {"hello":"hi","to":"2","two":"2","too":"2","for":"4","four":"4","be":"b","you":"u","at":"@","and":"&"}
  return dictionary
end

def word_substituter(tweet)
  dictionary = {"hello" => "hi","to" =>"2","two" =>"2","too" =>"2","for" =>"4","four" =>"4","be"=>"b","you"=>"u","at"=>"@","and"=>"&"}
  comparison = dictionary.keys
  expanded_tweet = tweet.split
  new_tweet = []
  expanded_tweet.collect do |word|
    if comparison.include?(word)
      new_tweet << dictionary[word]
    else
      new_tweet << word
    end
  end
  return new_tweet.join(" ")
end