import datetime
import os
from random import randint

MINS_PER_QUOTE = 15

quotes = [
        "Occasionally, I'll hit somebody with my car. So sue me. -MS",
        "There's too many people on this earth. We need a new plague. -DS",
        "I. DECLARE. BANKRUPTCY. ... I didn't say it. I declared it. -MS",
        "Let's have an auction! Let's do this! We'll auction off people, like it the olden days. -MS",
        "Reject a woman, and she will never let it go. One of the many defects of their kind. Also, weak arms. -DS",
        "Just pretend like we're talking until the cops leave. -CB",
        "I want you to think about it long and hard. That's what she said. Don't. Don't you dare. -MS,DS",
        "You couldn't handle my undivided attention. -DS",
        "Fact. Bears eat beets. Bears. Beets. Battlestar Galactica. -JH",
        "You don't call retarded people retards. It's bad taste. You call your friends retards when they're acting retarded. -MS",
        "Oh my goodness, you sound sexy. Oh, thank you. Woah woah woah! Pam! Pam! You are not talking to Dwight right now. You are talking to Jim. -PH,JHbDS",
        "Toby is in HR, so he's really not a part of our family. Also, he's divorced, so he's really not a part of his family. -MS",
        "One day Michael came in, complaining about a speed bump, on the highway... I wonder who he ran over then. -JH",
        "When I asked, 'what if you die, Dwight? How will we get into the office?' He said, 'if I'm dead, you guys have been dead for weeks.' -PH",
        "[pushing Michael's face into the wet cement] Force it in as deep as you can. [muffled] That's what she said. -DS, MS",
        "[to Phyllis] Are you Mother Goose? -Toby's Daughter",
        "I am fast. To give you a reference point I am somewhere between a snake and a mongoose... And a panther. -DS",
        "Through concentration, I can raise and lower my cholesterol at will. -DS",
        "Congratulations on your one cousin. I have seventy, each one better than the last! -DS",
        "No, I disagree. 'R' is one of the most menacing of sounds. That's why they call it murder not 'muckduck'. -DS",
        "It has to be official, and it has to be urine. -DS",
        "I want you to rub butter on my foot. No. Pam, please? I have Country Crock. -PB,MS",
        "If you think she's cute now, you should have seen her a couple of years ago. [growls] -MS",
        "Poop is raining from the ceilings. Poop! -AM",
        "Every time I typed my name, it said 'Diapers'. -DS",
        "Boy have you lost your mind? 'Cause I'll help you find it! Whatcha lookin' for, ain't nobody gonna help you out there. -SH",
        "Stanley yelled at me today. That was one of the most frightening experiences of my life. -RH",
        "I'd like a magazine. We just need urine, sir. I'd still like one. -KM,Urine Lady"
        "You can't fire me, I don't work in this van! -DS",
        "Not a lot of experience with vampires. I've hunted werewolves. I shot one once. By the time I got to it, it turned back into my neighbor's dog. -DS",
        "I am not a hero. I am a mere defender of the office. You know who's a real hero? Hiro, from Heroes. That's a hero. Also, Bono. -DS",
        "I'm not superstitious, but... I'm... I am a little-stitious. -MS",
        "Every little boy fantasizes about his fairy-tale wedding. -AB",
        "I am on the third day of my cleanse diet. All I have to do is drink maple syrup, lemon juice, cayenne pepper and water for all three meals. -KK",
        "Andy Bernard does not lose contests. He wins them... or he quits them because they are unfair. -AB",
        "I wish there was a way to know you're in the good old days before you've actually left them. -AB",
        "I feel like all my kids grew up, and then they married each other. It's every parent's dream. -MS",
        "I think it's time for you to bury the hatchet. Waste of a good hatchet. -JH, DS",
        "I have six roommates, which are better than friends because they have to give you one month's notice before they leave. -TF",
        "Anyone who needs to speak to me has gotta go through me first. -DS",
        "By two o'clock Dwight will choose himself to be the assistant to his own assistant, me. -DS",
        "If my parents see this, I am toast. -CB",
        "Our office has an unusually large number of unusually large people. -OM",
        "They kiss. It is super emotional, like in Toy Story. -RH",
        "I go to the bathroom for 45 minutes and everything changes. -KM",
        "Well, Michael, I under-estimated you... Yeah, Well, maybe next time you will estimate me -JL,MS"
        ]

length = len(quotes)

now = datetime.datetime.now()

current_total_minutes = now.hour * 60 + now.minute
current_day = now.timetuple().tm_yday

index = ((current_total_minutes / MINS_PER_QUOTE) +((current_total_minutes/ (MINS_PER_QUOTE * 4)) * (current_total_minutes/ MINS_PER_QUOTE)) + current_day) % length

print quotes[index]

#cur_num = -1
#count = [0, 0, 0,0,0,0,0,0,0]
#for x in range(0, 2000):
#    this_num = ((x / 10) +( (x / 40) * (x / 10)) + 102) % len(quotes)
#    if this_num != cur_num:
#        count[this_num] += 1
#        #print quotes[this_num]
#        cur_num = this_num
#        print this_num
#
#for x in count:
#    print x
#
