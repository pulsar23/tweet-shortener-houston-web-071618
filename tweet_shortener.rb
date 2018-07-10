# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  #Convert string to array
  word_array = string.split(" ")

  hash1 = dictionary
  key_array = hash1.keys

  new_array = []

  word_array.each do |word|
    check_word = word
    
    key_array.each do |key_match|
       if word.downcase == key_match
         temp = word
         check_word = hash1[key_match]
       end #if
    end #key_array.each do
    
    new_array << check_word
    
 end #word_array.each do
 
 return_string = new_array.join(" ") 
 return_string
  
end #word_substituter


def bulk_tweet_shortener(tweet_array)
  new_array = []
  i = 0
  
   tweet_array.each do |tweets|
       temp_array = word_substituter(tweets)
       new_array[i] = temp_array
       puts "#{new_array[i]}"
       i+=1 
   end #tweet_array
  new_array 
  
end # bulk_tweet_shortener


def selective_tweet_shortener(tweet)
  
  
end # selective_tweet_shortener