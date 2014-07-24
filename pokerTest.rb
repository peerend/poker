user_hand = ['10S','10C','10S','12S','12H']


spades = user_hand.sort!.join.split("").count("S") #Flush
diamonds = user_hand.sort!.join.split("").count("D")
hearts = user_hand.sort!.join.split("").count("H")
clubs = user_hand.sort!.join.split("").count("C")
if ((spades || diamond || hearts || clubs) == 5)
   flush = "flush"
end

 new_user_hand = user_hand.join(' ') #joins into a string
 new_user_hand = new_user_hand.tr('SDHC', '')
  new_user_hand = new_user_hand.split(' ').sort() #splits into array and sorts
 new_user_hand

if new_user_hand[4].to_i - new_user_hand[0].to_i == 4
   "straight"
end
 if (new_user_hand[4].to_i - new_user_hand[0].to_i == 4) && (new_user_hand[0].to_i == 10) && flush
   "straight royal flush"
end


# make the hash default to 0 so that += will work correctly
hand_count = Hash.new(0)

# iterate over the array, counting duplicate entries
new_user_hand.each do |v|
  hand_count[v] += 1
end
result = ""
hash_hand = []
hand_count.each do |k, v|
  hash_hand << v
end
p hash_hand.sort!
  if hash_hand[1] ==4
    result = 'four of a kind'
  elsif hash_hand[0] == 2 && hash_hand[1]==3
    result = "full house"
  elsif hash_hand[2] == 3
    result = "three of a kind"
  elsif hash_hand[1] ==2 && hash_hand[2] ==2
    result = "two pairs"
  elsif hash_hand[3] == 2
    result = "pair"
end
p result
# http://blog.hulihanapplications.com/browse/view/28-ruby-array-comparison-tricks
#   if v == 4
#     result = "four of a kind"
#   elsif v == 3
#     result = "three of a kind"
#     hand_count.delete(k)
#     p hand_count
#   elsif v == 2
#     result == "pair"
#     hand_count.delete(k)
#     p hand_count
#   end
# end
# hand_count.each do |k, v|
#   if v == 2 && result == "three of a kind"
#     result = "full house"

#   end
