def poker_hand(user_hand)


  new_user_hand = user_hand.join #joins into a string
  new_user_hand = new_user_hand.split('').sort() #splits into array and sorts
  hand_numbers = new_user_hand[0..4] #splits into card value
  hand_suits = new_user_hand[5..10] #splits into card suits


end

#user_hand.sort!.join.split("").count("S") #Flush
