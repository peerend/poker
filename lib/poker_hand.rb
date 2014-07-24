def poker_hand(user_hand)

  spades = user_hand.sort!.join.split("").count("S") #Flush
  diamonds = user_hand.sort!.join.split("").count("D")
  hearts = user_hand.sort!.join.split("").count("H")
  clubs = user_hand.sort!.join.split("").count("C")
  result = ""
  if (spades == 5 || diamonds == 5 || hearts == 5 || clubs == 5)
    flush = "flush"
    result = flush
  end

  p new_user_hand = user_hand.join(' ') #joins into a string
  p new_user_hand = new_user_hand.tr('SDHC', '')
  p new_user_hand = new_user_hand.split(' ').sort() #splits into array and sorts

  if new_user_hand[4].to_i - new_user_hand[0].to_i == 4
    result = "straight"
  end
  if (new_user_hand[4].to_i - new_user_hand[0].to_i == 4) && (new_user_hand[0].to_i == 10) && flush
    result = "royal flush"
  end

  # make the hash default to 0 so that += will work correctly
  hand_count = Hash.new(0)

  # iterate over the array, counting duplicate entries
  new_user_hand.each do |v|
    hand_count[v] += 1
  end
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
    result
end
