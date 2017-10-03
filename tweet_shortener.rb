# Write your code here.
def dictionary
  words_to_be_substituted = {
    "hello" => "hi",
    "Hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&',
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "For" => "4",
    "Four" => "4",
    "Be" => 'b',
    'You' => 'u',
    'At' => '@',
    'And' => '&'
  }
end

def word_substituter tweet
  tweet.split(" ").map{|word| dictionary.include?(word) ? word = dictionary[word] : word = word}.join(" ")
end

def bulk_tweet_shortener array_of_tweets
  array_of_tweets.each{|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener tweet
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator tweet
  selective_tweet_shortener(tweet).length > 140 ? word_substituter(tweet)[0...137].concat("...") : tweet 
end
