user_hand = ['7S', '3S','3S','4S','4S']
user_hand.sort!.join.split("").count("S") #Flush

new_user_hand = user_hand.join #joins into a string
new_user_hand = new_user_hand.split('').sort() #splits into array and sorts
hand_numbers = new_user_hand[0..4] #splits into card value
hand_suits = new_user_hand[5..10] #splits into card suits


p hand_numbers
p unique_hand_numbers = hand_numbers.uniq
p output = hand_numbers.count(unique_hand_numbers[0])
p output


# http://blog.hulihanapplications.com/browse/view/28-ruby-array-comparison-tricks
