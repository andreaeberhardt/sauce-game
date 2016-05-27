def prep_ingredients(name, description, feature, rating)
  #the following if statement will process the first question: describe in one emoji
  if (description.to_i == 1) #heart-eyes
    description = ["you were love at first sight", "I'm like a deer caught in the headlights of your beauty", "your eyes light up my day", "you're the light of my life"].sample
  elsif (description.to_i == 2) #winky face with tongue
    description = ["you drive me crazy", "you make me laugh and smile like no one else", "you make me blush everytime you walk by"].sample
  elsif (description.to_i == 3) #fire
    description = ["you are fire", "you are lit", "you are dynamite", "your sizzling"].sample
  elsif (description.to_i == 4) #heart
    description = ["you make my heart skip a beat evertyime I see you", "when I see you it's like my heart plays hopscotch inside of my chest", "you make my heart melt", "you have a beautiful heart"].sample
  else #if they don't choose anything
    description = ["you are so unique there is no emoji to describe you"].sample
  end

  #the following if statement will process the second question: best feature
  if(feature.to_i == 1)
    feature = ["I love your smile", "Did anyone ever tell you that you have really good teeth?", "your smile lights up the room", "your teeth glisten every time you smile"].sample
  elsif(feature.to_i == 2)
    feature = ["I love your lips", "When our lips touch, I can taste forever", "everytime we kiss i fall for you even more", "your lips take me to another place"].sample
  elsif(feature.to_i == 3)
    feature = ["I love your eyes", "Your eyes are like the stars in the sky", "your eyes sparkle everytime you open them", "your eyes remind me of the beautiful sunrise"].sample
  elsif(feature.to_i == 4)
    feature = ["I love your hair", "your hair is so beautiful"].sample
  elsif(feature.to_i == 5)
    feature = ["I love how smart you are", "Conversations with you make me feel like I've known you for a long time"].sample
  elsif(feature.to_i == 6)
    feature = ["I love your muscles", "I love how strong you are"].sample
  elsif(feature.to_i == 7) #money emoji
    feature = ["I love how you take care of me", "I love how you look out for me","I love how you make sure im taken care of"].sample
  else
    feature = ["I love everything"].sample
  end

  #the following if statement will process the third question: rating
  if(rating.to_i == 1)
    rating = ["You make a really good friend."].sample
  elsif(rating.to_i == 2)
    rating = ["Text me.", "Hit me up cutie."].sample
  elsif(rating.to_i == 3)
    rating = ["Let's grab lunch.","Lets hang out some time.", "I like you.", "We should chill together."].sample
  elsif(rating.to_i == 4)
    rating = ["Let's go on a date?", "Can I take you out?","Can I take you to dinner?"].sample
  elsif(rating.to_i == 5)
    rating = ["I worship the ground you walk on.", "I love you.","Im not taking NO for an answer", "We need to be together"].sample
  else
    rating = ["My love for you can't be quantified in numbers."].sample
  end

  sauce_it(name, description, feature, rating)
end

def sauce_it(name, description, feature, rating)
  return "Hey #{name}, #{description}. #{feature}. #{rating}"
end