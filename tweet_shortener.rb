def word_substituter(tweet)
  substitutions = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" => 'b',
  "you" => 'u',
  "at" => "@",
  "and" => "&",
  }
  newTweetArray = []
  tweetArray = tweet.split(" ")
  newArray = []
    tweetArray.map do |word|
      if substitutions.keys.include?(word.downcase)
        newWord = substitutions[word.downcase]
        newArray << newWord
      else
        newArray << word
      end
    end
  shortened = newArray.join(" ")
  return shortened
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.bytesize > 140
    return tweet.byteslice(0, 140)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortie = word_substituter(tweet)
  final = selective_tweet_shortener(shortie)
  return final
end