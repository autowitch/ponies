"ponies" by "the autowitch"


Volume 1 - Some introductory notes


Book 1 - Include stuff


[Include Player Experience Upgrade by Aaron Reed.]
Include Approaches by Emily Short.
Include Smarter Parser by Aaron Reed.
Include Poor Man's Mistype by Aaron Reed.
Include Numbered Disambiguation Choices by Aaron Reed.
Include Default Messages by Ron Newcomb.
Include Neutral Library Messages by Aaron Reed.
Include Remembering by Aaron Reed.
Include Extended Grammar by Aaron Reed.
Include Punctuation Removal by Emily Short.
Include Small Kindnesses by Aaron Reed.

Include Spellcasting by Jim Aikin.

Include Bulky Items by Juhana Leinonen.
Include Considerate Holdall by Jon Ingold.
Include Exit Lister by Eric Eve.
Include Far Away by Jon Ingold.
Include Footnotes by Stephen Granade.
[Include Configurable Creative Commons License by Creative Commons.]
Include Hidden Items by Krister Fundin.
[Include Ignored Rules by Ron Newcomb.]
[Include Implicit Actions by Eric Eve.]
Include Introductions by Emily Short.
Include Restrictions by Jon Ingold.
[Include Senses by ShadowChaser.]
[Include Touchy Feely by Quantum Games.]
Include Simple Followers by Emily Short.

Include Conversation Package by Eric Eve.
Include Pronouns by Ron Newcomb.
[Include Atmospheric Effects by Mikael Segercrantz.]
[Include Location Images by Emily Short.]
[Include Simple Graphical Window by Emily Short.]
[Include Supplemental Actions by Al Golden.]
[Include Automap by Mark Tilford.]

Book 2 - Set game variables


Use MAX_PROP_TABLE_SIZE of 500000.
Use MAX_OBJECTS of 2000.
Use MAX_STATIC_DATA of 1800000.
Use BRIEF room descriptions.
Use no scoring.
[Use automap static allocation.]

Book 3 - General rules and stuff


Part 1 - Limiting "all"

Rule for deciding whether all includes fixed in place things:
	it does not.
Rule for deciding whether all includes people:
	it does not.

Part 2 - NPC Definition

[ Set up properties for NPCs that wander around on their own ]
A person can be wandering or static.  A person is usually static.

Definition: a person is NPC if it is not the player.

Part 3 - Settings

Setting is a kind of value.  The settings are set, unset.

Part 4 - Images

Chapter 1 - Images on and off

Pretty pictures is a setting that varies.  Pretty pictures is set.  Stopping pretty pictures is an action out of world.  Starting pretty pictures is an action out of world.  Understand "images off", "pictures off" or "pics off" as stopping pretty pictures.  Understand "images on", "pictures on" or "pics on" as starting pretty pictures.

Carry out starting pretty pictures:
	Change pretty pictures to set.
Carry out stopping pretty pictures:
	Change pretty pictures to unset.
Report starting pretty pictures:
	Say "Images is now on.  Use 'images off' to turn them back off.".
Report stopping pretty pictures:
	Say "Images are off.  Use 'images on' to turn them back on.".

Chapter 2 - On the display of images

Figure of Nothing is the file "null.png".

A room has a figure-name called room illustration.  The room illustration is usually Figure of Nothing.

A thing has a figure-name called thing illustration.  The thing illustration is usually Figure of Nothing.

A person has a figure-name called person illustration.  The person illustration is usually Figure of Nothing.

[The image-setting rule is listed in the carry out looking rules.

This is the image-setting rule:]
Before looking:
	If the room illustration of the location is not Figure of Nothing and pretty pictures is set:
		Display the Room Illustration of the location.

Before examining when pretty pictures is set:
	If the noun is a thing:
		If the thing illustration of the noun is not Figure of Nothing :
			Display the thing illustration of the noun;
	If the noun is a person:
		If the person illustration of the noun is not Figure of Nothing:
			Display the person illustration of the noun.

Before going to a room (called destination): [ for the first time:]
	If destination is unvisited:
		If the room illustration of destination is not Figure of Nothing and pretty pictures is set:
			Display the Room Illustration of destination.

[Before entering a room for the first time:
	Say "FIRST ROOM ENTER";
	If the room illustration of the location is not Figure of Nothing and pretty pictures is set:
		Display the Room Illustration of the location.]

Part 5 - Some Footnotes

Table of Footnotes (continued)
Name    	 Note    	 Index    	 Read
circular-square    	 "Circular square. Narf!"
rarity-is-best	"Rarity is best pony."
hearths-warming-trash	"Hearths Warming was six months ago."
pigeons	"You think about the pigeons and shudder."
become-a-statue	"It turns out that how you became a statue is very important in how to return to becoming a pony."
i-cant-believe	"I still can't believe you did that.  What were you thinking?"
bumped-into-sun	"By too close, I mean bumped into the Sun.  Celestia has not been raising it as high as she used to[note lazy]."
lazy	"Lazy."
no-rainboom	"You didn't"
hasbro	"Which, for the sake of argument, we will call 'Hasbro'."
cat-block	"It must be hard to run a business when your cat keeps attacking your customers."
observant	"Odd, Diamond Tiara and Silver Spoon are generally too self absorbed to notice other ponies."
windmill-wind	"You probably thought it was for milling flour or grain, didn't you.  Silly?"
cliche	"It is a common adventure game cliche to have some random animal blocking your way.  However, have you seen this cat?"

Footnotes are on.  Footnotes are given repeatedly.

Part 6 - Light and Dark

Rule for printing a refusal to act in the dark:
	If we are examining something, say "It's pitch black." instead.

Before going when in darkness:
	Say "It is pitch black.  You are likely to be eaten by a grue.";
	If a random chance of one in three succeeds:
		End the game saying "Oh, no! You have walked into the slavering fangs of a lurking grue!".

Part 7 - Flying

A room can be in_the_air or on_the_earth.  A room is usually on_the_earth.

Before going to a room (called the target_room) that is in_the_air:
	If Sweetie Belle is shadowing the player:
		Say "The Cutie Mark Crusaders are swarmed around you.  You find that you can't take off without either hurting one of them or taking them with you.";
		Stop the action;
	Otherwise:
		If the species of the player is pegasus:
			If the location of the player is not in_the_air:
				Say "You take off and fly into the sky.";
			Now the player is in the target_room;
			Stop the action;
		Otherwise:
			If the species of the player is unicorn:
				Say "You don't know any flying spells.";
				Stop the action;
			Otherwise:
				Say "Earth ponies feel more at home on the ground.";
				Stop the action.

Before entering a room (called the target_room) that is in_the_air:
	If Sweetie Belle is shadowing the player:
		Say "The Cutie Mark Crusaders are swarmed around you.  You find that you can't take off without either hurting one of them or taking them with you.";
		Stop the action;
	Otherwise:
		If the species of the player is pegasus:
			Say "You take off and fly into the sky.";
			Now the player is in the target_room;
			Stop the action;
		Otherwise:
			If the species of the player is unicorn:
				Say "You don't know any flying spells.";
				Stop the action;
			Otherwise:
				Say "Earth ponies feel more at home on the ground.";
				Stop the action.

Part 8 - Dumb stuff that I keep doing

Understand "ls" as looking.

Part 9 - Rule 34

Invoking Rule 34 is an action applying to one visible thing.
Understand "seduce [someone]" as Invoking Rule 34.
Understand "fuck [someone]" as Invoking Rule 34.
Understand "screw [someone]" as Invoking Rule 34.
Understand "clop [anything]" as Invoking Rule 34.

Carry out Invoking Rule 34:
	Say "Before you can make an attempt to get freaky with [the noun], Princess Celestia appears.  Almost immediately you find yourself on the surface of the moon.[paragraph break]FOREVER.";
	Move the player to the moon.

Part 10 - Some definitions

Definition: a direction (called thataway) is viable if the room thataway from the location is a room.

Part 11 - More Commands

Chapter 1 - Showing regions or species in the status

Stopping show region is an action out of world.  Starting show region is an action out of world.  Understand "species on", "region off" as stopping show region.  Understand "species off", "region on" as starting show region.

Carry out stopping show region:
	Now the right hand status line is "[color of the player] [species of the player] pony".

Carry out starting show region:
	Now the right hand status line is "[map region of the location]".

Report starting show region:
	Say "The region is displayed in the status line. Use 'region off' to change to species information.".
Report stopping show region:
	Say "You are now displaying information about yourself.  You narcissist. Use 'region on' to show region.".

Chapter 2 - Reconsider

Reconsider_ok is a setting that varies.  Reconsider_ok is set.
Reconsider_count is a number that varies.  Reconsider_count is zero.

Reconsidering is an action out of world.  Understand "reconsider", "reconsider self" as reconsidering.
Carry out reconsidering:
	If reconsider_ok is set:
		Create the player;
		If reconsider_count is zero:
			Say "Princess Celestia flies down from out of nowhere.  As is befitting royalty you bow.  She says, 'I am giving you an opportunity to be reformed.  To live your life as a new pony.  Use this opportunity wisely.'[paragraph break]You are now a [color of player] [species of player] pony with a [length of the player], [style of the player] [hair_color of the player] mane and tail.";
		If reconsider_count is one:
			Say "Princess Celestia flies from out of nowhere.  She says 'I will grant your request and then you should start with your life.'[paragraph break]You are now a [color of player] [species of player] pony pony with a [length of the player], [style of the player] [hair_color of the player] mane and tail.";
		If reconsider_count is two:
			Say "A somewhat miffed Princess Celestia appears from nowhere.  'Most ponies are happy with the way that they are made and do not require this much changing before they walk upon Equestria.'[paragraph break]You are now a [color of player] [species of player] pony pony with a [length of the player], [style of the player] [hair_color of the player] mane and tail.";
		If reconsider_count is three:
			Say "An annoyed Princess Celestia walks over.  'Ok.  One last time and that's it.'[paragraph break]You are now a [color of player] [species of player] pony with a [length of the player], [style of the player] [hair_color of the player] mane and tail.";
		If reconsider_count is four:
			Say "A highly annoyed Princess Celestia walks over.  'Some ponies cannot be satisfied until they find themselves on the moon.'";
			Now reconsider_ok is unset;
			Move the player to the moon;
		Now reconsider_count is reconsider_count plus one;
	Otherwise if the player is in the moon:
		Say "You call for Princess Celestia to reconsider (or better yet, return you to Equestria), but nothing happens.";
	Otherwise:
		Say "Princess Celestia flies out of nowhere.  She shakes her head.  'It's too late for that now, the story has started.'".

Before doing something other than looking, examining or waiting when reconsider_ok is set:
	Now reconsider_ok is unset.


Part 12 - More Rules

Chapter 1 - Message when pushing

After going a direction (called way-pushed) with something (called the thing-pushed):
    say "You push [the thing-pushed] [way-pushed] to [the location].";
    continue the action.

Part 13 - More actions

Chapter 1 - Jumping

jumping on is an action applying to one thing.
Understand the command "jump" as something new.
Understand the command "jump on/onto" as something new.
Understand "jump on/onto [something]" as jumping on.
Understand "jump" as jumping.
Carry out jumping on:
	Say "JUMP ON".

Understand the command "stomp" as something new.
Understand "stomp on [something]" as stomping. Understand "stomp [something]" as stomping.
Stomping is an action applying to one visible thing.
[Check stomping:
	Say "Jump test.".
Carry out stomping:
	Say "Jumping.".
Report stomping:
	Say "jump report test".]

Volume 2 - In which ponies are formed


Book 1 - Ponies are people too


Understand "Pony" as a person. Understand "Ponies" as people.
Understand "Horse" as a person. Understand "Horses" as people.
Understand "Herd" as people.

Book 2 - The parts of a pony

Part 1 - Species

A pony_species is a kind of value.  The pony_species are earth, unicorn, pegasus, alicorn, dragon, zebra.

A person has a pony_species called species.  The species is usually earth. Understand the species property as describing a person.

Part 2 - Age and Gender

A age_and_gender is a kind of value.  The age_and_genders are foal, filly, colt, mare, stallion, baby.
A person has an age_and_gender called type. The type is usually mare. Understand the type property as describing a person.

Part 3 - Colors

[ The first half of the colors are colors that are safe for mane and body colors.  The second half is colors for manes and tails only. ]
A pony_color is a kind of value.  The pony_colors are alabaster, amber, amberish grey, apple green, aqua, ash brown, ash grey, azureish grey, baby blue, black, blackish blue, blue, brilliant orange, brilliant rose, brown, burgundy, chartreuse, chathams blue, cherry red, coral, cornflower blue, crimson, cyanish grey, dark blue, dark brown, dark cyan, dark green, dark grey, dark indigo, dark pink, dark purple, dark tangelo, dark violet, deep blue, deep pink, fading pink, fire orange, forest green, gold, golden yellow, green, grey, greyish brown, greyish purple, greyish violet, honey orange, hot pink, impale pink, indigo, ivory, jet black, khaki, lavender, lavender pink, lemon yellow, light amber, light blue, light briliant amber, light briliant orange, light brown, light crimson, light green, light grey, light greyish cerise, light greyish cyan, light magenta, light orange, light pink, light phthalo blue, light purple, light sapphire blue, light yellow, light yellow-green, light yellowish grey, lilac, lime green, magenta, medium aquamarine, medium sapphire blue, moderate cerulean, moderate rose, mint green, maroon, navy blue, neon yellow, ochre, orange, pale blue, pale cyan, pale gold, pale light grayish crimson, pale orange, pale red, pale pink, pale purple, pale yellow, peach, pearly purple, pearly yellow, periwinkle, purple, pink, pink-purple, pinkish purple, pinkish-white, purple, purplish pink, red, red-orange, reddish pink, rose pink, royal pink, salmon, silver, sky blue, slate blue, sunflower yellow, turquoise, turquoisish white, very deep blue, very light cerulean, violet, white, wine red, yellow, yellow chartreuse, yellow-green, rainbow colored, all_colors_of_the_rainbow, black_and_white, black_with_five_shades_of_grey, blue_and_purple, blue_and_turquoise ,blue_with_a_red_streak, blue_with_a_silver_streak, blue_with_a_white_streak, blue_with_white_streaks, brown_and_white, dark_and_moderate_tangelo, dark_blue_with_a_fading_pink_streak, dark_indigo_with_pink_and_purple_streaks, dark pink_and_blue, dark pink_and_purple, dark violet_and_pale gold, blonde, fading_pink_with_a_grey_streak, fading_pink_and_white, fire_orange_with_a_light_orange_streak, grey_and_white, greyish rose_and_greyish purple, greyish violet_and_white, impale pink_and_yellow, light_and_dark grey, light_brilliant_orange_and_crimson, light_grayish_cyan_with_a_white_streak, light_pink_and_red, moderate_rose_and_pale_gold, orange_and_purple, orange_and_yellow, orange_with_a_pale_orange_streak, orange_with_red_stripes, orange_with_yellow_and_green_streaks, pastel colored, pink_and_dark_pink, pink_and_light_violet, pink_and_light_pink, pink_and_purple, pink_and_white, pink_with_a_blue_streak, pink_with_a_yellow_streak, platinum blonde, purple_and_blue, purple_and_light_purple, purple_and_pink, purple_with_a_blue_streak, purple_with_a_pink_streak, purple_with_a_red_streak, red_and_pink, red-orange_with_a fading_pink_streak, red_with_a_purple_streak, red_with_pink_streaks, various shades of grey, various shades of pink, white_with_a pink_streak, yellow_and_orange, yellow_with_orange_streaks, yellow_with_pink_streaks.
A pony_color has an indexed text called printed_name. printed_name is usually "".
[The printed_name of white_with_a pink_streak is "white with a pink streak".
The printed_name of yellow_and_orange is "yellow and orange".
The printed_name of yellow_with_orange_streaks is "yellow with orange streaks".
The printed_name of yellow_with_pink_streaks is "yellow with pink streaks".]
To say (V -  pony_color):
	Let x be the printed_name of V;
	If x is not "":
		Say "[x]";
	Otherwise:
		Say "[V]".

When play begins:
	[ Fix up the pony colors ]
	repeat with x running through pony_color:
		If the printed_name of x is "":
			Now the printed_name of x is "[x]";
			Let y be the printed_name of x;
			Replace the regular expression "_" in y with " ";
			Replace the regular expression "\+" in y with "";
			Now the printed_name of x is y;

A person has a pony_color called color.  The color is usually grey. Understand the color property as describing a person.
A person has a pony_color called hair_color.  The hair_color is usually slate blue.

Part 4 - Mane/Tail Length

A hair_length is a kind of value.  The hair_lengths are very short, short, long.
A person has a hair_length called length.

Part 5 - Mane/Tail Style

A hair_style is a kind of value.  The hair_styles are frizzy, wavy, straight, curly, poofy, braided, flowing, wiry, silky, thick, soft, wild, bushy.
A person has a hair_style called style.

Part 6 - Cutie Marks

[ only need to list cutie marks the player can get here - other background ponies will have manual descriptions ]
A cutie_mark is a kind of value.  The cutie_marks are blank flank, two crossed pepermint sticks, a blue bottle, two roses, an_arrow_labeled_'I_am_with_stupid', empty cardboard box, dunce cap, shield, compass, six pointed star, losing poker hand, flames, three apple trees, three pine trees, diamond.  The cutie_mark is usually blank flank.
A person has a cutie_mark called cutie_mark_p. Understand the cutie_mark_p property as describing a person.

A cutie_mark has an indexed text called printed_name. printed_name is usually "".
To say (V -  cutie_mark):
	Let x be the printed_name of V;
	If x is not "":
		Say "[x]";
	Otherwise:
		Say "[V]".

When play begins:
	repeat with x running through cutie_mark:
		If the printed_name of x is "":
			Now the printed_name of x is "[x]";
			Let y be the printed_name of x;
			Replace the regular expression "_" in y with " ";
			Replace the regular expression "\+" in y with "";
			Now the printed_name of x is y;

Book 3 - Constructing a pony from its parts


Part 1 - The Mane

A mane is a kind of thing.  A mane is part of every person.
Instead of examining a mane which is part of a person (called the item):
	Say "It is a [length of item], [style of item] [hair_color of item] mane.".

Part 2 - The Tail

A tail is a kind of thing. A tail is part of every person.
Instead of examining a tail which is part of a person (called the item):
	Say "It is a [length of item], [style of item] [hair_color of item] tail.".

Part 3 - The flank and cutie mark

A flank is a kind of thing. A flank is part of every person.  Understand "butt", "ass", "plot", "rear", "hiney", "rump", "tuckus", "dat flank", "dat plot", "dat ass" as flank.
Instead of examining a flank which is part of a person (called the item):
	Let cm be the cutie_mark_p of item;
	If item is the player:
		If cm is a blank flank:
			Say "Sadly, you are a blank flank.";
		Otherwise:
			Say "You proudly sport a [cm] on your flank.";
	Otherwise:
		If cm is a blank flank:
			Say "You look at the pony's flank and see no cutie mark thereon.";
		Otherwise:
			Say "On the pony's flank is a [cm].".

A cutie mark is a kind of thing.  A cutie mark is part of every person.
Instead of examining the cutie mark which is part of a person (called the item):
	Let cm be the cutie_mark_p of item;
	If item is the player:
		If cm is a blank flank:
			Say "Sadly, you are a blank flank.";
		Otherwise:
			Say "You proudly sport a [cm] on your flank.";
	Otherwise:
		If cm is a blank flank:
			Say "You look at the pony's flank and see no cutie mark thereon.";
		Otherwise:
			Say "The pony's cutie mark is a [cm].".

[ Assume that you are talking about your own cutie mark ]
Rule for supplying a missing noun while asking or telling:
	Say "ask or tell check";
	If the second noun is a cutie mark:
		Say "for a cutie mark";
		Now the noun is the player.

Rule for supplying a missing second noun while asking or telling:
	Say "ask or tell second check";
	If the noun is a cutie mark:
		Say "for a cutie mark";
		Now the second noun is the player.

Part 4 - The coat

A coat is a kind of thing.  A coat is part of every person.  Understand "skin", "hide", "fur" as coat.
Instead of examining a coat which is part of a person (called the item):
	Say "It's [color of item].".


Part 5 - The horn

A horn is a kind of thing.  A  horn is part of every person.

[Instead of examining the horn of the player for the second time:
	Say "Foo";]

Instead of examining the horn which is part of a person (called the target):
	If the species of target is earth or the species of the target is pegasus:
		Say "Only unicorns have horns.";
	Otherwise:
		If the target is the player:
			Say "Like most unicorns, you have a short squat horn that is [color of target], like your coat.[if a random chance of one in three succeeds][paragraph break]Sometimes you wonder why your horn and coat are exactly the same color given that they are made of such different materials.  Sometimes you like to imagine that some big company[note hasbro]creates little plastic dolls of the ponies in Equestria.  The lives of you and all the ponies you know are nothing but stories created by this company in order to sell the little plastic ponies.  And it would be easier to manufacture the little plastic dolls if the coat and horn were the same color.  Sometimes you even go further down the bunny hole and wonder if fans of the little plastic ponies create their own stories and your life is nothing but one of those. But that is getting into a world of crazy that makes your head dizzy..[end if]";
		Otherwise:
			Say "It's a horn.  Just like every other unicorn's".

Part 6 - The wings

A Wing is a kind of thing. Understand "wings" as wing.  A  wing is part of every person.

Instead of examining the wing which is part of a person (called the target):
	If the species of target is earth or the species of the target is unicorn:
		Say "Only pegasi have wings.";
	Otherwise:
		If the target is the player:
			Say "Like most pegasi, you oddly small wings that are [color of target], like your coat.[if a random chance of one in three succeeds][paragraph break]Sometimes you wonder why your wings and coat are exactly the same color given that one is made of hair and the other, feathers.  Sometimes you like to imagine that some big company[note hasbro]creates little plastic dolls of the ponies in Equestria.  The lives of you and all the ponies you know are nothing but stories created by this company in order to sell the little plastic ponies.  And it would be easier to manufacture the little plastic dolls if the coat and wings were the same color.  Sometimes you even go further down the bunny hole and wonder if fans of the little plastic ponies create their own stories and your life is nothing but one of those. But that is getting into a world of crazy that makes your head dizzy..[end if]";
		Otherwise:
			Say "It's wings.  Just like every other pesasi's".



Part 7 - The hooves

A Hoof is a kind of thing. Understand "hooves" as hoof.  A  hoof is part of every person.

Instead of examining the hoof which is part of a person (called the target):
	If the target is the player:
		Say "They're hooves.  You have four of them.  They connect you to the ground.[if the species of the player is pegasus] Except for when you are flying.[end if]";
	Otherwise:
		Say "As expected, [the target] has hooves.".


Volume 3 - In which a player is born


Book 1 - Describing the Player


Instead of examining a person (called the item):
	If the item is the player:
		Say "You are [color] [species of the item] [type of item] with a [length of the item], [style of the item] [hair_color of the item] mane and tail. [if cutie_mark_p of the player is a blank flank]Sadly, you haven't found your special talent yet.[otherwise]Your cutie mark is a [cutie_mark_p of the item].[end if]";
	Otherwise:
		Say "The [printed name of the item] is [color of the item] [species of the item] [type of item] with a [length of the item], [style of the item] [hair_color of the item] mane and tail. [if the cutie_mark_p of the player is a blank flank and the cutie_mark_p of the item is a blank flank]Like you, [end if][if cutie_mark_p  of the item is a blank flank][printed name of the item] has no cutie mark.[otherwise][printed name of the item]'s cutie mark is a [cutie_mark_p of the item].[end if]".


Book 2 - Creating the Player

The player has a pony_species called original_pony_species.
The player has a pony_color called original_color.
The player has a pony_color called original_hair_color.
The player has a hair_length called original_hair_length.
The player has a hair_style called original_hair_style.

To create the player:
	Let s be a random pony_species between earth and pegasus;
	Now the species of the player is s;
	Now the original_pony_species of the player is s;
	Let c be a random pony_color between alabaster and yellow-green;
	Now the color of the player is c;
	Now the original_color of the player is c;
	Let h be a random pony_color;
	Now the hair_color of the player is h;
	Now the original_hair_color of the player is h;
	Let l be a random hair_length;
	Now the length of the player is l;
	Now the original_hair_length of the player is l;
	Let hs be a random hair_style;
	Now the style of the player is hs;
	Now the original_hair_style of the player is hs;
	Now the cutie_mark_p of the player is a blank flank.

When play begins:
	Create the player.

Book 3 - In which the player gets attributes

A person can be changed or unchanged.  A person is usually unchanged.
A person can be a statue or flesh. A person is usually flesh.
A person can be everfree_ok or no_everfree. A person is usually no_everfree.
A person can be healthy or wonky.  A person is usually healthy.
A person can be awake or asleep.  A person is usually awake.

Instead of doing anything other than looking, examining or waiting when the player is wonky:
	Say "You are feeling too wonky to do much of anything.".


[Does the player mean showing the cutie mark of the player: it is very likely.]

Book 4 - The players things

The saddlebags is an open wearable player's holdall. The player is wearing the saddlebags.  It has description "Your saddle bags".  Understand "bags", "bag", "saddle bag", "saddle bags" as saddlebags.
[A Guide to Ponyville is a book.  It is in the saddlebags.]
The carrying capacity of the player is 2.

Volume 4 - In which many ponies come forth

Before asking a person about anything:
	Let x be the noun;
	Let y be the second noun;
	If y is nothing:
		Say "You are not sure yourself of what you are asking for and are unable to ask the question.";
		Stop the action.
	[If x is not seen:
		Say "You have never heard of [x], so asking about it would be tricky.";]
	[Say "PC1 [x] <- [y]".]

Before telling a person about anything:
	Let x be the noun;
	Let y be the second noun;
	If y is nothing:
		Say "You are not sure yourself of what you are talking about.  All you get is a confused stare.";
		Stop the action.

Book 1 - Mane Characters


Part 1 - Twilight Sparkle

Chapter 1 - Basic Description

Twilight Sparkle is a person. The type of Twilight Sparkle is mare. The species of Twilight Sparkle is unicorn. The color of Twilight Sparkle is light purple. The hair_color of Twilight Sparkle is dark_indigo_with_pink_and_purple_streaks. The length of Twilight Sparkle is short. The style of Twilight Sparkle is straight. [The cutie_mark_p of Twilight Sparkle is a pink_start_with_five_white_stars_surrounding_it.]

Figure of Twilight Sparkle is the file "TwilightSparkle.jpg".
The person illustration of Twilight Sparkle is Figure of Twilight Sparkle.

Instead of examining Twilight Sparkle:
	Say "Twilight Sparkle is the most ".

Chapter 2 - Conversations

Response of Twilight Sparkle when asked about Sweetie Belle:
	Say "SB1".
Response of Twilight Sparkle when asked about Princess Celestia:
	Say "PC1".
Response of Twilight Sparkle when asked for "advice":
	Say "X".

Response of Twilight Sparkle when asked about "grue":
	Say "The grue is a sinister, lurking presence in the dark places of the earth. Its favorite diet is ponies, but its insatiable appetite is tempered by its fear of light. No grue has ever been seen by the light of day, and few have survived its fearsome jaws to tell the tale.".

[Before showing your cutie mark to Twilight Sparkle when the convnode is not TS_Intro_Node:
	Say "She looks at your flank and says, 'Still blank I see.'".]

Section 1 - Intro Node

The node of Twilight Sparkle is TS_Intro_Node.

TS_Intro_Node is a [ closed ] convnode.

Response  for TS_Intro_Node when told about yourself:
	Say "xx".

Before showing your cutie mark to Twilight Sparkle when the convnode is TS_Intro_Node:
	Say "[node TS_Cutie_Mark_Node]Twilight walks over and takes a look at your cutie mark.[paragraph break]'I've never seen a fully grown pony without a cutie mark.  I think I may have something to help you. Spike! Get me those books on cutie marks!'[paragraph break]'I'm coming. I'm coming', grumbles a small dragon, 'here'. He dumps a large pile of books on the reading table.[paragraph break]The three fillies suddenly jump up and crowd around you.[paragraph break]'You haven't found your cutie mark?'[paragraph break]'Do you know how to find your special talent?'[paragraph break]'Do you think your cutie mark is in these books?'[paragraph break]'Do know how to find a cutie mark?'[paragraph break]We haven't found our cutie marks either.'[paragraph break]That's why we are the Cutie Mark Crusaders!'[paragraph break]We can help you!'[paragraph break]'We can help you find your cutie mark!'";
	Now A General Taxonomy of Cutie Marks is on the reading table;
	Now The Relationship of Names to Cutie Marks is on the reading table;
	Now The Cutie Mark in Pre-Equestrian History is on the reading table;
	Now Abstract Symbolism in Cutie Marks is on the reading table;
	Now Regional Variations in Cutie Marks is on the reading table;
	Now Cutie Mark Failure Syndrome Repercussions is on the reading table;
	Now The Magic of Cutie Marks is on the reading table;
	Now A Historical Case of the Treatment of an Absent Cutie Mark is on the reading table;
	Now Deviant Cutie Marks is on the reading table;
	Now Sweetie Belle is shadowing the player;
	Now Apple Bloom is shadowing the player;
	Now Scootaloo is shadowing the player;
	Stop the action.

Response of Twilight Sparkle when asked-or-told about Opalescence:
	Say "I don't know how Rarity handles that cat.".

Response of Twilight Sparkle when asked-or-told about your cutie mark:
	Say "[node TS_Cutie_Mark_Node]'I was wondering if you might be able to help me find some books on how to find your cutie mark?'[paragraph break]'Do you have colt or filly that is having trouble finding their cutie mark?', Twilight says, 'we have several around here that...'.[paragraph break]She looks up and notices that you are talking about your own cutie mark.[paragraph break]'I've never seen a fully grown pony without a cutie mark.  I think I may have something to help you. Spike! Get me those books on cutie marks!'[paragraph break]'I'm coming. I'm coming', grumbles a small dragon, 'here'. He dumps a large pile of books on the reading table.[paragraph break]The three fillies suddenly jump up and crowd around you.[paragraph break]'You haven't found your cutie mark?'[paragraph break]'Do you know how to find your special talent?'[paragraph break]'Do you think your cutie mark is in these books?'[paragraph break]'Do know how to find a cutie mark?'[paragraph break]We haven't found our cutie marks either.'[paragraph break]That's why we are the Cutie Mark Crusaders!'[paragraph break]We can help you!'[paragraph break]'We can help you find your cutie mark!'";
	Now A General Taxonomy of Cutie Marks is on the reading table;
	Now The Relationship of Names to Cutie Marks is on the reading table;
	Now The Cutie Mark in Pre-Equestrian History is on the reading table;
	Now Abstract Symbolism in Cutie Marks is on the reading table;
	Now Regional Variations in Cutie Marks is on the reading table;
	Now Cutie Mark Failure Syndrome Repercussions is on the reading table;
	Now The Magic of Cutie Marks is on the reading table;
	Now A Historical Case of the Treatment of an Absent Cutie Mark is on the reading table;
	Now Deviant Cutie Marks is on the reading table;
	Now Sweetie Belle is shadowing the player;
	Now Apple Bloom is shadowing the player;
	Now Scootaloo is shadowing the player;
	Stop the action.

Section 2 - Cutie Mark Node

TS_Cutie_Mark_Node is a closed convnode.

After saying hello to Twilight Sparkle when the greeting type is explicit:
	Say "'Hello?[paragraph break]Twilight looks up[first time]Twlight Sparkle[only].".

After saying hello to Twilight Sparkle when the greeting type is explicit:
	Say "[first time]Twlight Sparkle[only]x.".

Section 3 - General



[Default ask response for Twilight Sparkle:
	"[one of]X[or]Y[or]Z[in random order].".]

Part 2 - Fluttershy

Tree Fluttershy is a person. The printed name is "Fluttershy".
The species of Fluttershy is pegasus.
The color of Fluttershy is yellow.
The hair_color of Fluttershy is pale pink.
The length of Fluttershy is long.
The style of Fluttershy  is wavy.
[The cutie_mark_p of Fluttershy is three_pink_butterflies.]

Figure of Fluttershy is the file "Fluttershy.jpg".
The person illustration of Fluttershy is Figure of Fluttershy.


Response of Fluttershy when asked-or-told about Opalescence:
	Say "'I tried to go to the Carousel Boutique, but was stopped by an angry cat.'[paragraph break]'That poor kitty.  She must be scared. I will check on her.'[paragraph break]Fluttershy steps outside and flies off towards the Carousel Boutique.";
	Now Opalescence is in Carousel_Boutique;
	Now Fluttershy is in Carousel_Boutique.

Part 3 - Rarity

Marshmallow Rarity is a person. The printed name is "Rarity". The species of Rarity is unicorn. The color of Rarity is white. The hair_color of Rarity is purple. The length of Rarity is long. The style of Rarity is wavy. [The cutie_mark_p of Rarity is a three_cyan_diamonds.]

Figure of Rarity is the file "Rarity.jpg".
The person illustration of Rarity is Figure of Rarity.


The introduction of Rarity is "'[if Opalescence is not in Carousel_Boutique]I heard some commotion outside.  Is Opalescence misbehaving again?'[end if]".

Instead of examining Rarity, say "A white... [note rarity-is-best].".

A drawing of a cutie mark is a thing..  "A drawing of Sweetie Belle[if  the drawing of a cutie mark is worn by the player] taped to your flank[end if].[first time]  Presumably Sweetie Belle thinks that your special talent is ... Sweetie Belle?[only]". The drawing of a cutie mark can be worn.

Instead of dropping the drawing of a cutie mark:
	Say "You don't really want to do that.  It would make Sweetie Belle sad.".

Instead of taking off the drawing of a cutie mark:
	Say "You don't really want to do that.  It would make Sweetie Belle sad.".

Response of Rarity when asked-or-told about Sweetie Belle:
	If Sweetie Belle is shadowing the player:
		Say "'I suppose that it [italic type]is[roman type] my turn to watch after them.  I did promise Applejack. Sweetie Belle, '[paragraph break]'But Rarity, we are helping her find her cutie mark', says Sweetie Belle.[paragraph break]'Yeah, I think that Rainbow Dash will know how to find her cutie mark!'[paragraph break]'I think my sister can help!'[paragraph break]The room fills with shouts of ideas on how you can find your cutie mark and where to look and who to ask.  Eventually Rarity calms them down with promises of doing other things to help you find your cutie mark.  You are somewhat skeptical of Rarity being able to keep these adorable, yet high energy fillies under control.[paragraph break]During all this, Sweetie Belle drew a picture that you can use as your cutie mark until you find your own.  She tapes it to your flank.  You thank her.";
		Now a drawing of a cutie mark is worn by the player;
		Now Sweetie Belle is not shadowing the player;
		Now Apple Bloom is not shadowing the player;
		Now Scootaloo is not shadowing the player;
	Otherwise if Sweetie Belle is in Carousel_Boutique:
		Say "I'm sure I can keep the 'Cutie Mark Crusaders' working on finding your cutie mark here.";
	Otherwise:
		Say "I'm not sure where she is or what she is doing.".


Response of Rarity when asked-or-told about Apple Bloom:
	If Sweetie Belle is shadowing the player:
		Say "'I suppose that it [italic type]is[roman type] my turn to watch after them.  I did promise Applejack. Sweetie Belle, '[paragraph break]'But Rarity, we are helping her find her cutie mark', says Sweetie Belle.[paragraph break]'Yeah, I think that Rainbow Dash will know how to find her cutie mark!'[paragraph break]'I think my sister can help!'[paragraph break]The room fills with shouts of ideas on how you can find your cutie mark and where to look and who to ask.  Eventually Rarity calms them down with promises of doing other things to help you find your cutie mark.  You are somewhat skeptical of Rarity being able to keep these adorable, yet high energy fillies under control.[paragraph break]During all this, Sweetie Belle drew a picture that you can use as your cutie mark until you find your own.  She tapes it to your flank.  You thank her.";
		Now a drawing of a cutie mark is worn by the player;
		Now Sweetie Belle is not shadowing the player;
		Now Apple Bloom is not shadowing the player;
		Now Scootaloo is not shadowing the player;
	Otherwise if Sweetie Belle is in Carousel_Boutique:
		Say "I'm sure I can keep the 'Cutie Mark Crusaders' working on finding your cutie mark here.";
	Otherwise:
		Say "I'm not sure where she is or what she is doing.".

Response of Rarity when asked-or-told about Scootaloo:
	If Sweetie Belle is shadowing the player:
		Say "'I suppose that it [italic type]is[roman type] my turn to watch after them.  I did promise Applejack. Sweetie Belle, '[paragraph break]'But Rarity, we are helping her find her cutie mark', says Sweetie Belle.[paragraph break]'Yeah, I think that Rainbow Dash will know how to find her cutie mark!'[paragraph break]'I think my sister can help!'[paragraph break]The room fills with shouts of ideas on how you can find your cutie mark and where to look and who to ask.  Eventually Rarity calms them down with promises of doing other things to help you find your cutie mark.  You are somewhat skeptical of Rarity being able to keep these adorable, yet high energy fillies under control.[paragraph break]During all this, Sweetie Belle drew a picture that you can use as your cutie mark until you find your own.  She tapes it to your flank.  You thank her.";
		Now a drawing of a cutie mark is worn by the player;
		Now Sweetie Belle is not shadowing the player;
		Now Apple Bloom is not shadowing the player;
		Now Scootaloo is not shadowing the player;
	Otherwise if Sweetie Belle is in Carousel_Boutique:
		Say "I'm sure I can keep the 'Cutie Mark Crusaders' working on finding your cutie mark here.";
	Otherwise:
		Say "I'm not sure where she is or what she is doing.".

Part 4 - Applejack

Applejack is a person.
The species of Applejack is earth.
The color of Applejack is orange.
The hair_color of Applejack is blonde.
The length of Applejack is short.
The style of Applejack is straight.
[The cutie_mark_p of Applejack is three_red_apples.]

Figure of Applejack is the file "Applejack.jpg".
The person illustration of Applejack is Figure of Applejack.


Part 5 - Pinkie Pie

Pinkie Pie is a person.
The species of Pinkie Pie is earth.
The color of Pinkie Pie is pink.
The hair_color of Pinkie Pie is dark pink.
[The length of Pinkie Pie is medium.]
The style of Pinkie Pie is curly.
[The cutie_mark_p of Pinkie Pie is a three_yellow_and_blue_balloons.]

Figure of Pinkie Pie is the file "PinkiePie.jpg".
The person illustration of Pinkie Pie is Figure of Pinkie Pie.


Pinkie Pie can be pinkie sensing or normal.  Pinkie is normal. [really?]
Every turn when Pinkie Pie can be seen by the player:
	If Pinkie Pie is normal:
		If a random chance of one in six succeeds:
			Now Pinkie Pie is pinkie sensing;
			Say "[one of]Pinkie Pie's tail starts twitching.[paragraph break]'My tail is twitching, andyou know what that means.'[paragraph break]You don't actually know what that means, so you ask.[paragraph break]'It means that my Pinkie Sense is telling me that something is going to fall'[paragraph break]'But, what is Pinkie Sense?' you ask.[paragraph break]'Oh my Pinkie Sense is a bunch of of weird little feelings that tell me different things.  When my back is itchy, it means it's my lucky day. And when my knee gets pinchy, it means that something scary is about to happen.  And when my tail is twitching, it means stuff is going to start falling.'[paragraph break]You find this all a bit hard to believe.  Even harder to believe that she delivered that explanation in a single breath.[or]Pinkie's tail twitches.  She looks at you.  'Something's gonna to fall'. Again, this is hard to believe.[or]Pinkie's tail starts twitching. 'Twitcha-twitch!  Twitcha-twitch'. The coincidence of that happening twice...[or]Pinkie's tail starts twitching.  She looks at you.[or]Pinkie's tail starts twitching.  You are starting to believe that there is something to this.[or]Pinkie's tail is twitching.  You are getting genuinely concerned.[or]Pinkie's tail starts twitching.  You are now scared.[or]Pinkie's tail starts twitching; you cringe and wait for the inevitable.[stopping]";
			Let x be a random number from 2 to 5;
			Pinkie disaster happens in x turns from now.

At the time when Pinkie disaster happens:
	Now Pinkie Pie is normal; [seriously?]
	Say "[one of]A turnip falls on you.[first time] That's weird. You don't see anywhere that could have come from.[only][or]An egg falls on you.[first time] That doesn't make sense.  Where could that have come from?[only][or]A goofy looking frog falls from out of nowhere and lands on you.[or]A book falls on you.[or]A box of cupcakes falls on you.[first time] Where are all these things that fall out of the sky come from?[only][or]A small rock falls on you.[or]A somewhat larger rock than the previous rock that fell on you falls on you.[first time] This is starting to be a problem.[only][or]A flowerpot falls on you.[or]A brick falls on you.[or]A phonograph falls on you.[or]A bucket of water falls on you.[or]An anvil falls on you.[or]Princess Celestia falls on you.  Then flies off.[or]A rather large rock falls on you.[or]A cart of hay falls on you.[or]A piano falls on you.[or]An enormous boulder falls on you.[or]A safe falls on you.[or]A Edsel falls on you.[or]A piano, followed by another piano falls on you.[then at random]".

Part 6 - Rainbow Dash

Rainbow Dash is a person.
The species of Rainbow Dash is pegasus.
The color of Rainbow Dash is blue.
The hair_color of Rainbow Dash is rainbow colored.
The length of Rainbow Dash is short.
The style of Rainbow Dash is straight.
[The cutie_mark_p of Rainbow Dash is a rainbow_colored_lightning_bold_with_a_cloud.]

Figure of Rainbow Dash is the file "RainbowDash.jpg".
The person illustration of Rainbow Dash is Figure of Rainbow Dash.


Book 2 - The Cutie Mark Crusaders

Part 1 - Scootaloo

Chicken Scootaloo is a person. The printed name is "Scootaloo". The type of Scootaloo is filly. The species of Scootaloo is pegasus.
The color of Scootaloo is orange.
The hair_color of Scootaloo is dark pink.
The length of Scootaloo is short.
The style of Scootaloo is straight.
The cutie_mark_p of Scootaloo is a blank flank.

Figure of Scootaloo is the file "Scootaloo.png".
The person illustration of Scootaloo is Figure of Scootaloo.

Part 2 - Sweetie Belle

Dictionary Sweetie Belle is a person. The printed name is "Sweetie Belle". The type of Sweetie Belle is filly. The species of Sweetie Belle is unicorn.
The color of Sweetie Belle is white.
The hair_color of Sweetie Belle is pink_and_purple.
[The length of Sweetie Belle is medium.]
The style of Sweetie Belle is curly.
The cutie_mark_p of Sweetie Belle is a blank flank.

Figure of Sweetie Belle is the file "SweetieBelle.png".
The person illustration of Sweetie Belle is Figure of Sweetie Belle.


Part 3 - Apple Bloom

Dictionary Apple Bloom is a person. The printed name is "Apple Bloom". The type of Apple Bloom is filly. The species of Apple Bloom is earth.
The color of Apple Bloom is yellow.
The hair_color of Apple Bloom is red.
[The length of Apple Bloom is medium.]
The style of Apple Bloom is straight.
The cutie_mark_p of Apple Bloom is a blank flank..

Figure of Apple Bloom is the file "AppleBloom.png".
The person illustration of Apple Bloom is Figure of Apple Bloom.

Before showing your cutie mark to Apple Bloom:
	Say "H".

Book 3 - Princesses

Part 1 - Princess Luna

Princess Luna is a person.
The species of Princess Luna is alicorn.
[The color of Princess Luna is purplish blue.]
The hair_color of Princess Luna is light blue.
The length of Princess Luna is long.
The style of Princess Luna is wavy.
[The cutie_mark_p of Princess Luna is a crescent moon on a black background.]

Figure of Princess Luna is the file "PrincessLuna.jpg".
The person illustration of Princess Luna is Figure of Princess Luna.


Part 2 - Princess Celestia

Princess Celestia is a person.
The species of Princess Celestia is alicorn.
The color of Princess Celestia is white.
[The hair_color of Princess Celestia is pink_green_and_blue.]
The length of Princess Celestia is long.
The style of Princess Celestia is wavy.
[The cutie_mark_p of Princess Celestia is a sun.]

Figure of Princess Celestia is the file "Celestia.jpg".
The person illustration of Princess Celestia is Figure of Princess Celestia.


Book 4 - Other Ponies of Note

Part 1 - Cherilee

Cherilee is a person.
The species of Cherilee is earth.
The color of Cherilee is dark pink.
The hair_color of Cherilee is pink_and_light_pink.
[The length of Cherilee is medium.]
The style of Cherilee is straight.
[The cutie_mark_p of Cherilee is a three_smiling_flowers.]

Figure of Cherilee is the file "Cherilee.jpg".
The person illustration of Cherilee is Figure of Cherilee.


Part 2 - Trixie Lulamoon

Trixie Lulamoon is a person. "The [italic type]Great[roman type] and [bold type]Powerful[roman type] TRIXIE!". Understand "Great and Powerful Trixie" as Trixie Lulamoon.
The species of Trixie Lulamoon is unicorn.
The color of Trixie Lulamoon is blue.
The hair_color of Trixie Lulamoon is light blue.
The length of Trixie Lulamoon is short.
The style of Trixie Lulamoon is straight.
[The cutie_mark_p of Trixie Lulamoon is a magic wand.]

Figure of Trixie is the file "Trixie.png".
The person illustration of Trixie Lulamoon is Figure of Trixie.


Part 3 - The Homeless Pony

Homeless Pony is a person.  The type of Homeless Pony is stallion.  The species of Homeless Pony is earth.  The color of Homeless Pony is grey.  The hair_color of Homeless Pony is dark grey.  The length of Homeless Pony is short.  The style of Homeless Pony is bushy. The cutie_mark_p of Homeless Pony  is an empty cardboard box.
Instead of examining Homeless Pony:
	Say "He is an obviously homeless dirty grey pony with a somewhat singed mane and tail.  His cutie mark is an empty cardboard box.[paragraph break]The homeless pony looks pretty hungry.".
Instead of smelling Homeless Pony:
	Say "He smells like an unpleasant combination of muck and smoke.".

Part 4 - Big Macintosh

Big Macintosh is a person. The type of Big Macintosh is stallion.  The species of Big Macintosh is earth. The color of Big Macintosh is red. Understand "Big Mac" as Big Macintosh.
The hair_color of Big Macintosh is orange.
The length of Big Macintosh is short.
The style of Big Macintosh is straight.
[The cutie_mark_p of Big Macintosh is a single green apple.]

Figure of Big Mac is the file "BigMac.jpg".
The person illustration of Big Macintosh is Figure of Big Mac.


Part 5 - Doctor Whooves

Doctor Whooves is a person. Understand "The Doctor", "Time Lord", "Timelord" as Doctor Whooves. The type of Doctor Whooves is stallion.  The species of Doctor Whooves is earth.
The species of Doctor Whooves is earth.
The color of Doctor Whooves is brown.
The hair_color of Doctor Whooves is dark brown.
The length of Doctor Whooves is short.
The style of Doctor Whooves is straight.
[The cutie_mark_p of Doctor Whooves is an hourglass.]
Figure of Doctor Whooves is the file "DrWhooves.png".
The person illustration of Doctor Whooves is Figure of Doctor Whooves.


Part 6 - Derpy Hooves

Derpy Hooves is a person.  Understand "Derpy" as Derpy Hooves.  Understand "Ditzy Doo" as Derpy Hooves.  Understand "Ditzy" as Derpy Hooves.
The species of Derpy Hooves is pegasus.
The color of Derpy Hooves is grey.
The hair_color of Derpy Hooves is blonde.
[The length of Derpy Hooves is medium.]
The style of Derpy Hooves is straight.
[The cutie_mark_p of Derpy Hooves is bubbles.]

Figure of Derpy Hooves is the file "Derpy.jpg".
The person illustration of Derpy Hooves is Figure of Derpy Hooves.


Part 7 - Zecora

Zecora is a person. The type of Zecora is mare.  The species of Zecora is zebra.
[The color of Zecora is grey_and_dark_grey.]
[The hair_color of Zecora is white_and_dark_grey.]
[The length of Zecora is medium.]
The style of Zecora is straight.
[The cutie_mark_p of Zecora is a spiral sun.]

Figure of Zecora is the file "Zecora.jpg".
The person illustration of Zecora is Figure of Zecora.


Part 8 - The Cake Family

Chapter 1 - Mr Cake

Mr Cake is a person.

Figure of Mr Cake is the file "CarrotCake.png".
The person illustration of Mr Cake is Figure of Mr Cake.


Chapter 2 - Mrs Cake

Mrs Cake is a person.
Figure of Mrs Cake is the file "CupCake.png".
The person illustration of Mrs Cake is Figure of Mrs Cake.


Chapter 3 - Pound Cake

Pound Cake is a person.
Figure of Pound Cake is the file "PoundCake.png".
The person illustration of Pound Cake is Figure of Pound Cake.


Chapter 4 - Pumpkin Cake

Pumpkin Cake is a person.
Figure of Pumpkin Cake is the file "PumpkinCake.png".
The person illustration of Pumpkin Cake is Figure of Pumpkin Cake.


Part 9 - The Mayor

The Mayor is a person.
Figure of Mayor is the file "Mayor.png".
The person illustration of Mayor is Figure of Mayor.


Part 10 - Starswirl the Bearded

Starswirl the Bearded is a person.

Part 11 - Granny Smith

Granny Smith is a person.

Figure of Granny Smith is the file "GrannySmith.jpg".
The person illustration of Granny Smith is Figure of Granny Smith.


Part 12 - Spa Ponies

Aloe is a person.

Figure of Aloe is the file "Aloe.png".
The person illustration of Aloe is Figure of Aloe.

Lotus is a person.

Figure of Lotus is the file "Lotus.jpg".
The person illustration of Lotus is Figure of Lotus.



Part 13 - Nurse Redheart

Nurse Redheart is a person.

Part 14 - Spike

Spike is a person. The type of spike is baby.  The species of spike is dragon.

Figure of Spike is the file "Spike.jpg".
The person illustration of Spike is Figure of Spike.


Part 15 - The Proctologist

Proctologist Pony is a person. The  type of the Proctologist Pony is stallion.  The species of the Proctologist Pony is earth. The color of the Proctologist Pony is brown.  The hair_color of the Proctologist Pony is dark brown.  The length of the Proctologist Pony is short.  The style of the Proctologist Pony is straight. [The cutie_mark_p of the Proctologist Pony is a butthole.]
Instead of examining the Proctologist Pony:
	Say "The Ponyville proctologist is a brown pony with a short brown mane.  His cutie makr is appropriate for his job.  He tries to keep it hidden, but doesn't do a good job of it.[paragraph break]He is well equipped with a supply of rubber gloves.  Looking at the size of his hooves and those gloves makes you glad that you are not needing his services. You can picture th snap of those gloves in your head and it makes you shudder.".
[Instead of examining the cutie_mark_p of the Proctologist Pony:
	Say "It's... uh...a butthole.".]


Book 5 - Wandering Ponies


Part 1 - Junebug

[ponies just wandering about]
Junebug is a person.
The species of Junebug is unicorn.
The color of Junebug is lavender.
The hair_color of Junebug is indigo. [ with pink and purple streaks]
The length of Junebug is short.
The style of Junebug is straight.
[The cutie_mark_p of Twilight Sparkle is a six pointed star surrounded by five other stars].  Junebug is wandering.

Figure of Junebug is the file "Junebug.png".
The person illustration of Junebug is Figure of Junebug.


Part 2 - Lyra Heartstrings

Lyra Heartstrings is a person.
The species of Lyra Heartstrings is unicorn.
The color of Lyra Heartstrings is lavender.
The hair_color of Lyra Heartstrings is indigo. [ with pink and purple streaks]
The length of Lyra Heartstrings is short.
The style of Lyra Heartstrings is straight.
[The cutie_mark_p of Lyra Heartstrings is a lyre.]  Lyra Heartstrings is wandering.

Figure of Lyra Heartstrings is the file "Lyra.jpg".
The person illustration of Lyra Heartstrings is Figure of Lyra Heartstrings.


Part 3 - Bon-Bon

Bon-Bon is a person. The type of Bon-Bon is mare. The species of Bon-Bon is earth.
[The color of Bon-Bon is pale cream.]
The hair_color of Bon-Bon is navy blue. [ with a pink stripe]
[The length of Bon-Bon is medium.]
The style of Bon-Bon is curly.
[The cutie_mark_p of Bon-Bon is three pieces of blue and green wrapped candy]. Bon-Bon is wandering.

Figure of Bon-Bon is the file "BonBon.png".
The person illustration of Bon-Bon is Figure of Bon-Bon.


Part 4 - Diamond Tiara and Silver Spoon

Chapter 1 - Diamond Tiara

Diamond Tiara is a person.
The type of Diamond Tiara is filly.
The species of Diamond Tiara is unicorn.
The color of Diamond Tiara is lavender.
The hair_color of Diamond Tiara is indigo. [ with pink and purple streaks]
The length of Diamond Tiara is short.
The style of Diamond Tiara is straight.
[The cutie_mark_p of Diamond Tiara is a six pointed star surrounded by five other stars].  Diamond Tiara is wandering.

Figure of Diamond Tiara is the file "DiamondTiara.png".
The person illustration of Diamond Tiara is Figure of Diamond Tiara.


Response of Diamond Tiara when asked-or-told about nothing:
	Say "[one of]You are not important enough for Diamond Tiara to pay attention to[or]Diamond Tiara doesn't want to dignify that with a response.[purely at random]".

Default response of Diamond Tiara:
	Say "[one of]You are not important enough for Diamond Tiara to pay attention to[or]Diamond Tiara doesn't want to dignify that with a response.[purely at random]".

Response of Diamond Tiara when asked-or-told about your cutie mark:
	Say "[first time]You tell Diamond Tiara about your cutie mark.  In retrospect, this was probably not the best idea that you've had. [only]Diamond Tiara and Silver Spoon and whisper to each other.  Then start chanting 'Blank Flank! Blank Flank!'";
	Now Diamond Tiara is shadowing the player;
	Let x be a random number between 3 and 7;
	Diamond Tiara loses interest in x turns from now.

Instead of showing your cutie mark to Diamond Tiara:
	Say "[first time]You show Diamond Tiara your cutie mark.  In retrospect, this was probably not the best idea that you've had. [only]Diamond Tiara and Silver Spoon and whisper to each other.  Then start chanting 'Blank Flank! Blank Flank!'";
	Now Diamond Tiara is shadowing the player;
	Let x be a random number between 3 and 7;
	Diamond Tiara loses interest in x turns from now.

Every turn when Diamond Tiara is in the location of the player:
	If Diamond Tiara is not shadowing the player:
		If a random chance of one in four succeeds:
			Say "[first time][one of]Diamond Tiara[or]Silver Spoon[purely at random] notices your lack of cutie mark[note observant]. [only]You hear shouts of 'Blank Flank! Blank Flank!'  This can be only one thing and sure enough, two very annoying fillies are pointing at you and laughing.";
			Let x be a random number between 3 and 7;
			Diamond Tiara loses interest in x turns from now.

At the time when Diamond Tiara loses interest:
	If Diamond Tiara can be seen by the player:
		Say "Diamond Tiara and Silver Spoon have finally gotten bored with taunting you.";
	Now the schoolhouse is printing_papers;
	Now Diamond Tiara is not shadowing the player;
	The press run ends in 10 turns from now.

At the time when the press run ends:
	Now the foal free press is in Sugarcube Corner. [as well as other places]

Every turn when Diamond Tiara is shadowing the player:
	Say "[one of]Diamond Tiara and Silver Spoon point at you and giggle[or]You hear chants of 'Blank Flank! Blank Flank!' from a pair of annoying fillies[or][one of]Silver Spoon[or]Diamond Tiara[purely at random] is informing the surrounding ponies about your 'blank flank'.[or]You overhear speculation on why you have no cutie mark.  It's not good.[or]You are becoming increasingly annoyed by two obnoxious fillies.[purely at random]".

Chapter 2 - Silver Spoon

Silver Spoon is a person. [Silver Spoon shadows Diamond Tiara.]
The Type of Silver Spoon is filly.
The species of Silver Spoon is unicorn.
The color of Silver Spoon is lavender.
The hair_color of Silver Spoon is indigo. [ with pink and purple streaks]
The length of Silver Spoon is short.
The style of Silver Spoon is straight.
[The cutie_mark_p of Silver Spoon is a six pointed star surrounded by five other stars].

Figure of Silver Spoon is the file "SilverSpoon.png".
The person illustration of Silver Spoon is Figure of Silver Spoon.


Response of Diamond Tiara when asked-or-told about nothing:
	Say "[one of]You are not important enough for Silver Spoon to pay attention to[or]Silver Spoon doesn't want to dignify that with a response.[purely at random]".

Default response of Diamond Tiara:
	Say "[one of]You are not important enough for Diamond Tiara to pay attention to[or]Silver Spoon doesn't want to dignify that with a response.[purely at random]".


Response of Silver Spoon when asked-or-told about your cutie mark:
	Say "[first time]You tell Silver Spoon about your cutie mark.  In retrospect, this was probably not the best idea that you've had. [only]Diamond Tiara and Silver Spoon and whisper to each other.  Then start chanting 'Blank Flank! Blank Flank!'";
	Now Diamond Tiara is shadowing the player;
	Let x be a random number between 3 and 7;
	Diamond Tiara loses interest in x turns from now.

Instead of showing your cutie mark to Silver Spoon:
	Say "[first time]You show Silver Spoon your cutie mark.  In retrospect, this was probably not the best idea that you've had. [only]Diamond Tiara and Silver Spoon and whisper to each other.  Then start chanting 'Blank Flank! Blank Flank!'";
	Now Diamond Tiara is shadowing the player;
	Let x be a random number between 3 and 7;
	Diamond Tiara loses interest in x turns from now.


Part 5 - Octavia

Octavia is a person. Octavia is wandering.
The species of Octavia is unicorn.
The color of Octavia is lavender.
The hair_color of Octavia is indigo. [ with pink and purple streaks]
The length of Octavia is short.
The style of Octavia is straight.
[The cutie_mark_p of Twilight Sparkle is a six pointed star surrounded by five other stars].

Figure of Octavia is the file "Octavia.png".
The person illustration of Octavia is Figure of Octavia.


Part 6 - Snips and Snails

Chapter 1 - Snips

Snips is a person. Snips is wandering.
The type of Snips is colt.

Figure of Snips is the file "Snips.png".
The person illustration of Snips is Figure of Snips.


Chapter 2 - Snails

Snails is a person.
The type of Snails is colt. Snails is shadowing Snips.

Figure of Snails is the file "Snails.png".
The person illustration of Snails is Figure of Snails.


Part 7 - Twist

Twist is a person.
The type of Twist is colt. Twist is wandering.

Figure of Twist is the file "Twist.png".
The person illustration of Twist is Figure of Twist.


Part 8 - Daisy, Lily and Rose

Chapter 1 - Daisy

[TODO: Handle fainting. a person is unconccious or concious.  A persion is usually concsios

At the time when a person wakes up:
	if the person is seen by the player:
		Say "x struggles to stand back up"
	no the person is concious

Make sure wandering ponies rules do not move unconcious ponies.

Make sure pones that are following somepony are also not moved when updating wandering ponies.
]

Daisy is a person. Daisy is wandering.

Figure of Daisy is the file "Daisy.png".
The person illustration of Daisy is Figure of Daisy.

Chapter 2 - Lily

Lily is a person. Lily is shadowing Daisy.

Figure of Lily is the file "Lily.png".
The person illustration of Lily is Figure of Lily.

Chapter 3 - Rose

Rose is a person. Rose is shadowing Daisy.

Figure of Rose is the file "Rose.png".
The person illustration of Rose is Figure of Rose.


Part 9 - Berry Punch

Berry Punch is a person. Berry Punch is wandering.
The species of Berry Punch is earth.
[The color of Berry Punch is plum].
[The hair_color of Berry Punch is mulberry.] [The cutie_mark_p of Berry Punch is a bunch of grapes and strawberry.]

Figure of Berry Punch is the file "BerryPunch.jpg".
The person illustration of Berry Punch is Figure of Berry Punch.


Part 10 - Caramel

Caramel is a person. Caramel is wandering.

Figure of Caramel is the file "Caramel.png".
The person illustration of Caramel is Figure of Caramel.

Part 11 - Cloud Kicker

Cloud Kicker is a person. Cloud Kicker is wandering.

Part 12 - Dinky Doo

Dinky Doo is a person. Dinky Doo is wandering.
The type of Dinky Doo is filly.

Part 13 - DJ Pon-3

DJ Pon-3 is a person. DJ Pon-3 is wandering.

Part 14 - Merry May

Merry May is a person. Merry May is wandering.

Part 15 - Raindrops

Raindrops is a person. Raindrops is wandering.

Part 16 - Twinkleshine

Twinkleshine is a person. Twinkleshine is wandering.

Part 17 - Colgate

Colgate is a person. Colgate is wandering.

Part 18 - Amethyst Star

Amethyst Star is a person. Amethyst Star is wandering.
Figure of Amethyst Star is the file "AmethystStar.jpg".
The person illustration of Amethyst Star is Figure of Amethyst Star.

Part 19 - Cherry Berry

Cherry Berry is a person.  Cherry Berry is wandering.

Figure of Cherry Berry is the file "CherryBerry.jpg".
The person illustration of Cherry Berry is Figure of Cherry Berry.


Part 20 - Flower Wishes

Flower Wishes is a person.  Flower Wishes is wandering.

Part 21 - Golden Harvest (Aka Carrot Top)

Part 22 - Lemon Hearts

Part 23 - Moondancer

Moondancer is a person.  Moondancer is wandering.
The species of Moondancer is unicorn.
The color of Moondancer is ivory.
The hair_color of Moondancer is dark pink. [The cutie_mark_p of Moondancer is a crescent moon surrounded by stars.]

Part 24 - Roseluck

Roseluck is a person.  Roseluck is wandering.

Figure of Roseluck is the file "Roseluck.jpg".
The person illustration of Roseluck is Figure of Roseluck.

Part 25 - Sea Swirl

Sea Swirl is a woman.  "Sea Swirl is standing here looking a bit confused.". The description is "She's a lavender pony with a blue mane and tail.[if the talk count of sea swirl is zero] She looks normal enough.[end if][if the talk count of Sea Swirl is greater than two] You've talked to her, so you know that appearances can be deceiving.[end if]". Sea Swirl is wandering. Sea Swirl has a number called talk count. Talk count is zero.

Figure of Sea Swirl is the file "SeaSwirl.jpg".
The person illustration of Sea Swirl is Figure of Sea Swirl.

Default response of Sea Swirl:
	Say "'[italic type]Meep.[roman type]'[if the talk count of Sea Swirl is two][paragraph break]Something isn't right about this pony.[end if][if the talk count of Sea Swirl is four][paragraph break]Yep.  This one isn't right in the head.[end if]";
	Now the talk count of Sea Swirl is the talk count of Sea Swirl plus one.

Volume 5 - In which there are things

Book 1 - Books

Part 1 - Just what is a book

A thing has some text called printing.  The printing of a thing is usually "blank".

A book is a kind of thing. Understand "book" as a book.


Understand the command "read" as something new.

Understand "read [something]" or "consult [something]" or "read in/from [something]" as reading. Reading is an action applying to one thing, requiring light.

Does the player mean reading something in a book: it is very likely.

This is the book requirement rule:
    if the player is not carrying a book, say "You do not have the book." instead.

Before reading a book:
	Try taking the noun.

Check reading:
	If the noun is a book:
		Abide by the book requirement rule;
		If the printing of the noun is "blank":
			Say "[the noun] is far more of a tedious read than you expected";
			Stop the action;
	Otherwise:
		If the printing of the noun is "blank":
			Say "You cannot read [the noun]".

Carry out reading:
	Say "[printing of the noun][line break]".

Report reading: do nothing.

Part 2 - Books about cutie marks

Chapter 1 - General Taxonomy of Cutie Marks

A General Taxonomy of Cutie Marks is a book.  The printing is "This appears to be a very long treatise with more footnotes than text.  The bibliography alone is 143 pages long. Sadly its written in a fashion that makes it impossible to figure out just what the book is about.[if Twilight Sparkle is in the room][paragraph break]Twilight Sparkle says 'That is one of my favorites.'".

Chapter 2 - The Relationship of Names to Cutie Marks

The Relationship of Names to Cutie Marks is a book.
The Cutie Mark in Pre-Equestrian History is a book. The printing is "This book is obviously not geared towards the laypony.  It has very nice pictures though.".

Chapter 3 - Abstract Symbolism in Cutie Marks

Abstract Symbolism in Cutie Marks is a book. The printing is "A very long book filled with an endless series of enigmatic cutie marks with even more enigmatic text explaining them.  It is an autographed first edition though.".

Chapter 4 - Regional Variations in Cutie Marks

Regional Variations in Cutie Marks is a book.

Chapter 5 - Cutie Mark Failure Syndrome and Its Repercussions

Cutie Mark Failure Syndrome Repercussions is a book. The printed name is "Cutie Mark Failure Syndrome and its Repercussions".

Chapter 6 - The Magic of Cutie Marks

The Magic of Cutie Marks is a book.

Chapter 7 - A Historical Case of the Treatment of an Absent Cutie Mark

A Historical Case of the Treatment of an Absent Cutie Mark is a book.  The printing is "This is a long dull book.  But it's about something that concerns you greatly.[paragraph break]Apparently in the time of Starswirl the Bearded there was a pony that, like yourself, never developed a cutie mark. There is around 30 chapters detailing various methods of treating this condition that did not work.".

Chapter 8 - Deviant Cutie Marks

Deviant Cutie Marks is a book.

Part 3 - Books about other topics

Chapter 1 - Twilight, The Book

twilight_book is a book.  The printed name is "Twilight". The printing is "For some reason, this book has been nailed shut.".

Chapter 2 - The Book of the Foul Winds

Chapter 3 - Magic for Dumb Unicorns

Magic for Dumb Unicorns is a book.  The printing is "[if the species of the player is unicorn]This looks to be[otherwise]This book is probably interesting to unicorns.  At least dumb unicorns.  To you it's just a mess of tedious arcane text.[end if]".

When play begins:
	If the species of the player is unicorn:
		Now Magic for Dumb Unicorns is in the saddlebags;
	Otherwise:
		Now Magic for Dumb Unicorns is on the reading table.


Book 3 - Secret Doors

A secret door is a kind of door.  A secret door can be found or unfound.  A secret door is usually unfound. A secret door is scenery.  A secret door is closed. A secret door is not apparent.

To print the you can't go message:
	(- L__M(##Go, 2, 0); -).

To print the you can't see message:
	(- L__M(##Miscellany, 30, 0); -).

Before going through a secret door which is unfound:
	print the you can't go message instead.

Before doing something to a secret door which is unfound:
	print the you can't see message instead.

Before doing something when a secret door is the second noun:
	If the second noun is unfound:
		print the you can't see message instead.

Book 4 - Pinkie Pie's Surprise Cupcake

The Surprise Cupcake is a thing.  "A very delicious looking cupcake[first time] sitting on the counter.  There is a label next to the cupcake reading 'Surprise!'.[only]". The cupcake is edible.

Before taking the Surprise Cupcake:
	Say "'[first time]This is a delicious looking cupcake.  How much is it?' you ask Mr. Cake.[paragraph break]Mr Cake replies 'That's something special Pinkie Pie whipped up.  Usually ponies love Pinkie's cupcakes, but there is something about this one;  I haven't been able to sell it all day.  You can have it for free.'[paragraph break]Pinkie looks up with an expression of concern on her face.[only]".

Instead of eating the Surprise Cupcake for the first time:
	Let old-species be the species of the player;
	Let old-color be the color of the player;
	Let s be a random pony_species between earth and pegasus;
	Now the species of the player is s;
	Let c be a random pony_color between alabaster and yellow-green;
	Now the color of the player is c;
	Let h be a random pony_color;
	Now the hair_color of the player is h;
	Let l be a random hair_length;
	Now the length of the player is l;
	Let hs be a random hair_style;
	Now the style of the player is hs;
	Let lost-wings be false;
	If old-species is pegasus and the species of the player is not pegasus:
		Now lost-wings is true;
	Let gain-wings be false;
	If old-species is not pegasus and the species of the player is pegasus:
		Now gain-wings is true;
	Let lost-horn be false;
	If old-species is unicorn and the species of the player is not unicorn:
		Now lost-horn is true;
	Let gain-horn be false;
	If old-species is not unicorn and species of the player is unicorn:
		Now gain-horn is true;
	Say "[if Pinkie Pie can be seen by the player]Pinkie Pie looks up and yells 'Wait!'.  But it is too late. [end if]You eat the cupcake.  It is delicious.[paragraph break][if lost-wings is true and the room is in_the_air]Suddenly you are plummeting and screaming.[paragraph break][end if] Suddenly you feel different.  The world gets blurry and you fall to the ground.[paragraph break]You wake up dizzy and confused.  You feel odd... different.  Too different.[if lost-wings is true] Your wings!  Where did your wings go?[end if] [if gain-wings is true] Your back feels heavy.  You look around.  Wings?[end if] [if lost-horn is true] You attempt to levitate a mirror, but you don't seem to be able to do magic any longer[end if] [if gain-horn is true] You feel an odd weight on your head.[end if][paragraph break]You see the blurry form of a doctor walking out of the room. 'That's odd.  I thought she was supposed to be a [old-color] [old-species].' he says.";
	Now the player is in the Hospital Room;
	The player is ousted from the hospital in three turns from now;
	Let n be a random number between 20 and 30;
	The player reverts in n turns from now;
	Now the player is changed.

Instead of eating the Surprise Cupcake:
	Let old-species be the species of the player;
	Let old-color be the color of the player;
	Let s be a random pony_species between earth and pegasus;
	Now the species of the player is s;
	Let c be a random pony_color between alabaster and yellow-green;
	Now the color of the player is c;
	Let h be a random pony_color;
	Now the hair_color of the player is h;
	Let l be a random hair_length;
	Now the length of the player is l;
	Let hs be a random hair_style;
	Now the style of the player is hs;
	Say "You brace yourself and eat another Surprise Cupcake.  You know what to expect this time.[paragraph break]When you wake up, you feel different.  odd.";
	Let n be a random number between 20 and 30;
	The player reverts in n turns from now;
	Now the player is wonky;
	The player unwonkies in three turns from now;
	Now the player is changed.

At the time when the player unwonkies:
	Say "You gradually start feeling better.  The surprise cupcakes are brutal.[first time]  Pinkie Pie should work on the recipe.[only]";
	Now the player is healthy.

At the time when the player is ousted from the hospital:
	Say "Suddenly the doctor and two nurses rush in.[paragraph break]One of the nurses exclaims 'We didn't realize that you didn't have insurance!'.  You find yourself thrust into a wheelchair and then quickly dumped in the street in front of the hospital.";
	Now the player is in Road_N_2.

At the time when the player reverts:
	Say "Suddenly you feel dizzy and collapse.  A few minutes later, you stumble to your hooves.  You feel more like yourself.";
	Let old-species be the species of the player;
	Now the species of the player is the original_pony_species of the player;
	Now the color of the player is the original_color of the player;
	Now the hair_color of the player is the original_hair_color of the player;
	Now the length of the player is the original_hair_length of the player;
	Now the style of the player is the original_hair_style of the player;
	Now the player is unchanged;
	Now the player is wonky;
	The player unwonkies in three turns from now;
	Let lost-wings be false;
	If old-species is pegasus and the species of the player is not pegasus:
		Now lost-wings is true;
	If lost-wings is true and the location is in_the_air:
		Say "[paragraph break]The reversion, unfortunately, happened while you are flying.  And you are no longer a pegasus.";
		If a random chance of one in four succeeds:
			Say "Your fall is broken by the roof of the Ponyville Town Hall.  The the roof of the Ponyville Town Hall is broken by your fall.[paragraph break]You find yourself on your back, wings outstretched and hooves in the air.  Miraculously nopony else is inured. You, on the other hoof, were not so lucky.  You get rushed to the hospital.";
			Now the player is in the Hospital Room;
			The player is ousted from the hospital in four turns from now;
		Otherwise:
			Say "Your fall is broken by the roof of the Ponyville Town Hall.  The the roof of the Ponyville Town Hall is broken by your fall.[paragraph break]You find yourself on your back, wings outstretched and hooves in the air.  Miraculously you are uninjured. Nopony else is inured.  You wonder if you fell fast enough to create a sonic rainboom[note no-rainboom]. You open your eyes to find yourself looking into the face of a very disappointed (yet resigned to her fate) mayor. The air is dusty and bits of debris rain down from a new pony-sized hole in the roof.";
		Now the player is in Inside_of_Town_Hall.

Instead of asking Pinkie Pie for the surprise cupcake:
	If the player is unchanged and the surprise cupcake is in limbo:
		Say "Pinkie Pie says, 'of course! I always keep extras around! They are lots of fun!'.  She produces another surprise cupcake.";
		Now the surprise cupcake is in Sugarcube Corner;
	Otherwise if the player is unchanged:
		Say "You already have one, silly";
	Otherwise:
		Say "You should wait for this one to wear off".

Book 5 - The foal free press

The Foal Free Press is a thing. The printing is "The Foal Free Press is a local student newspaper covering the latest gossip around Ponyville.  This weeks issue features a new, mysterious mare in town.  A [species of the player] mare.  A [color of the player] [species of the player] mare.  With a [hair_color of the player] mane.  And no cutie mark. Most of the paper seems to be speculation about who you are and why you have no cutie mark.  It looks like your transition into Ponyville is going to be more difficult than you anticipated.".

Book 6 - Unusually strong cider

The player has a number called intoxication.  Intoxication is zero.
The barrel of cider is a thing.
Apple cider is a thing.

A cup is a thing.  A cup is a container.

[ add the random movement problem]
Before doing anything when the intoxication of the player is greater than zero:
	Let b be the intoxication of the player;
	Let r be a random number from 1 to 100;
	If r is greater than b:
		Say "Intox fail: snark goes here";
		Stop the action;
	Otherwise:
		Continue the action.

Instead of drinking the barrel:
	If the intoxication of the player is less than 41:
		Say "I suppose you could just chug cider right from the barrel, but that wouldn't exactly be polite.";
	Otherwise:
		Say "What the hell? You put your lips up to the barrel and take a swig";
		Now the intoxication of the player is the intoxication of the player plus 20.

Instead of drinking the cup:
	If the cup contains apple cider:
		Say "Drink T1";
		Now the intoxication of the player is the intoxication of the player plus 20;
		[ empty the cup ]
	Otherwise:
		Say "The cup is empty.".

Every turn when the intoxication of the player is greater than zero:
	If the intoxication of the player is greater than 99:
		Say "You wobble a bit. Then fall unconscious.[paragraph break]You wake to find yourself laying on your back on the ground. You look up at the stars twinkling in the night. You look to your side.  Nothing. Just bleak, barren greyness for as far as you can see. You look to your  other side.  Again, nothing but grey rock.[paragraph break]You attempt to stand up and fall over. You eventually manage to sit up; your head hurting tremendously.[paragraph break]'What happened?'[paragraph break]'You don't remember, do you?'[paragraph break]Princess Celestia is standing next to you. She looks at you with a mixture of kindness, disappointment and annoyance. This is probably not good.";
		Move the player to the moon;
	Now the intoxication of the player is the intoxication of the player minus four.


Volume 6 - in which a world if formed


Book 1 - Ponyville


Part 1 - Ponyville Regions

Outside_General is a region. The printed name is "Outside".

Ponyville is a region. The printed name is "Ponyville".
Outside_Ponyville is a region in Ponyville. The printed name is "Ponyville".
Inside_Ponyville is a region in Ponyville. The printed name is "Ponyville".
Outside_Town_Hall is a region in Outside_Ponyville. The printed name is "Town Square".
Southeast_Ponyville is a region in Outside_Ponyville. The printed name is "Southeast Ponyville".
North_Ponyville is a region in Outside_Ponyville. The printed name is "North Ponyville".
West_Ponyville is a region in Outside_Ponyville. The printed name is "West Ponyville".

Applejacks_Farm is a region in Outside_General. The printed name is "Sweet Apple Acres".
Inside_Applejacks_Farm is a region. The printed name is "Sweet Apple Acres".
Whitetail_Woods is a region in Outside_General. The printed name is "Whitetail Woods".
South_Road is a region in Outside_General. The printed name is "Sweet Apple Acres Road".
West_Road is a region in Outside_General. The printed name is "Everfree Forest Road".
Upper_Skies is a region. The printed name is "Upper Skies".

Ponyville_Skies is a region. The printed name is "Above Ponyville".

Part 2 - Town Hall and Environs

Ponyville_Town_Hall is a backdrop in Outside_Town_Hall. The description is "The Ponyville Town Hall is the most prominent building in Ponyville.[paragraph break][if the hole_count of the Ponyville_Town_Hall is one]The roof is marred by a pony-sized hole.[otherwise if the hole_count of the Ponyville_Town_Hall is two]There are a pair of pony-sized holes in the roof.  You are responsible for one of them.[otherwise if the hole_count of the Ponyville_Town_Hall is three]There are three pony-sized holes in the roof.  You created some of them.[otherwise if the hole_count of the Ponyville_Town_Hall is greater than seven]Not much of the roof is left.  This is your doing.[otherwise if the hole_count of the Ponyville_Town_Hall is greater than two]The roof is more holes than roof.  You had a hoof in this.[end if]".   Understand "town hall", "mayors office", "capitol", "courthouse" as Ponyville_Town_Hall.
[Ponyville_Town_Hall is a backdrop in Above_Town_Square.]
Ponyville_Town_Hall has a number called hole_count.  hole_count is 1.
Hole is a backdrop in Outside_Town_Hall. The description is "[if the hole_count of the Ponyville_Town_Hall is one]The roof is marred by a pony-sized hole.[otherwise if the hole_count of the Ponyville_Town_Hall is two]There are a pair of pony-sized holes in the roof.  You are responsible for one of them.[otherwise if the hole_count of the Ponyville_Town_Hall is three]There are three pony-sized holes in the roof.  You created some of them.[otherwise if the hole_count of the Ponyville_Town_Hall is greater than seven]Not much of the roof is left.  This is your doing.[otherwise if the hole_count of the Ponyville_Town_Hall is greater than two]The roof is more holes than roof.  You had a hoof in this.[end if]".
[Hole is a backdrop in Above_Town_Square.]

Chapter 1 - West of Town Hall

Figure of Town Hall is the file "PictureOfTownHall.png".
Figure of Statue is the file "Statue.png".

The West_of_Town_Hall is a room. "The most prominent feature in Ponyville is its town hall. The tower like building sits in a circular square[note circular-square]. The first two stories are wrapped in porches. The town hall is surrounded by brightly colored tents, flags and banners. [first time]You are admiring the surroundings when suddenly there is a blur of an out of control grey and yellow pegasus. The pegasus crashes into and through the roof of the town hall. You then hear a voice say 'Oops. My bad.' You start towards the town hall to see if anypony needs any help.  Then you notice that, other than a casual glance, nopony else seems particularly excited about this.  Could this be a [italic type]normal[roman type] occurrence around here.[paragraph break]The grey and yellow pegasus staggers out of the town hall and flies unsteadily to the west.  Shortly afterwards an explosion is heard coming from that direction. The reputation that Ponyville has is starting to seem justified. [only][if the hole_count of the Ponyville_Town_Hall is one]The roof is marred by a pony-sized hole in the roof.[otherwise if the hole_count of the Ponyville_Town_Hall is two]There are a pair of pony-sized holes in the roof.  You are responsible for one of them.[otherwise if the hole_count of the Ponyville_Town_Hall is three]There are three pony-sized holes in the roof.  You created some of them.[otherwise if the hole_count of the Ponyville_Town_Hall is greater than seven]Not much of the roof is left.  This is your doing.[otherwise if the hole_count of the Ponyville_Town_Hall is greater than two]The roof is more holes than roof.  You had a hoof in this.[end if]". It is in Outside_Town_Hall. The room illustration is Figure of Town Hall.  The printed name is "West Side of the Town Square".
The pink statue is scenery in the West_of_Town_Hall. The description of the pink statue is "It's a life sized pinkish statue of a rearing earth pony on a ball.  There doesn't seem to be anything indicating who this pony is or why there is a statue of her.".  The thing illustration is Figure of Statue.
The thing illustration of Ponyville_Town_Hall is Figure of Town Hall.

Chapter 2 - Southwest of Town Hall

The Southwest_of_Town_Hall is a room.  "SW". It is south of West_of_Town_Hall.  It is in Outside_Town_Hall. The printed name is "Southwest Corner of the Town Square".

Chapter 3 - South of Town Hall

The South_of_Town_Hall is a room. "This is the south side of the square that contains Ponyville town hall.  A lavender colored bridge crosses a river that flows along the south side of the square. The river curls around the east side of the square and flows down to the southwest from here.[paragraph break]You can go across the bridge to the south, or go to other parts of the square to the east, west, northeast and northwest.". It is east of Southwest_of_Town_Hall.  It is southeast of West_of_Town_Hall. It is in Outside_Town_Hall. The printed name is "South Side of the Town Square".

Chapter 4- Southeast of Town Hall

The Southeast_of_Town_Hall is a room. "SE".  It is east of South_of_Town_Hall.   It is in Outside_Town_Hall. The printed name is "Southeast Corner of the Town Square".

Chapter 5 - East of Town Hall

The East_of_Town_Hall is a room. "You are on the east side of the Ponyville town square.  The town hall dominates the center of the square. The river that flows along the southeast side of the square come in from the west here.  It continues to the south.". It is north of Southeast_of_Town_Hall.  It is northeast of South_of_Town_Hall. It is in Outside_Town_Hall. The printed name is "East Side of the Town Square".

Chapter 6 - Northeast of Town Hall

The Northeast_of_Town_Hall is a room. "You are on the northeast of the large Ponyville Town Hall. There are several brightly colored tents erected on this side of the square.".  It is north of East_of_Town_Hall. It is in Outside_Town_Hall.  The printed name is "Northeast Corner of the Town Square".

The brightly colored tents is a backdrop in Northeast_of_Town_Hall. "A trio of brightly colored tents sits in this part of the square.  They are circular with steep spiral and checkered roofs.".



Chapter 7 - North of Town Hall

The North_of_Town_Hall is a room. "N". It is west of Northeast_of_Town_Hall.  It is northwest of East_of_Town_Hall. It is northeast of West_of_Town_Hall. It is in Outside_Town_Hall. The printed name is "North Side of the Town Square".

There is a fountain in the North_of_Town_Hall.  The description is "A fountain merrily bubbling away." The fountain is fixed in place.

Chapter 8 - Northwest of Town Hall

The Northwest_of_Town_Hall is a room. "NW".  It is west of North_of_Town_Hall.  It is north of West_of_Town_Hall. It is in Outside_Town_Hall. The printed name is "Northwest Corner of the Town Square".

Chapter 9 - Inside Town Hall

The Inside_of_Town_Hall is a room.  "[first time]You walk into the town hall.  The dust has not yet settled from the incident with the grey pegasus[only]The town hall is a large room with balconies.  In the back is a rack for holding scrolls.  The building looks as if it has been repaired several times and is in serious need of repair now.  Bits of wood and ceiling are all over the place.  Plaster dust hangs in the air.[if the hole_count of the Ponyville_Town_Hall is one]The pony-sized hole is in the ceiling and you can see the sky above that..[otherwise if the hole_count of the Ponyville_Town_Hall is two]There are a pair of pony-sized holes in the ceiling.  The ponies here are very aware that you caused one of them.[otherwise if the hole_count of the Ponyville_Town_Hall is three]There are three pony-sized holes in the ceiling..[otherwise if the hole_count of the Ponyville_Town_Hall is greater than seven]Not much of the roof is left.  You have a clear view of the sky from down here.  A few beams are still up there, but it's mainly sky. The ponies here are unhappy (yet oddly impressed) at the amount of destruction you caused.[otherwise if the hole_count of the Ponyville_Town_Hall is greater than two]The ceiling is mainly holes.  Some discussions are going on with pegasi to change the rain schedule so the roof can be repaired.[end if]". It is east of West_of_Town_Hall. It is in Inside_Ponyville. The printed name is "Inside Town Hall".

Part 3 - The Carousel Boutique

Chapter 1 - The Pink Bridge

The Pink Bridge is a room. "A light pink arched bridge crosses the river.  To the northwest is the Ponyville town square. To the southeast is the elaborate pink and blue structure of the Carousel Boutique.". It is southeast of the Southeast_of_Town_Hall. It is in Southeast_Ponyville. The printed name is "Pink Bridge".

Chapter 2 - The Front of the Carousel Boutique

Figure of Carousel Boutique is the file "CarouselBoutique.png".
Front of Carousel Boutique is a room. The description is "O". It is southeast of the Pink Bridge. It is in Southeast_Ponyville. The room illustration is Figure of Carousel Boutique. The printed name is "In Front of the Carousel Boutique".

Opalescence is in limbo. "Rarity's white cat. Opalescence.". Understand "cat" as Opalescence. The description of Opalescence is "Rarity's cat doesn't like ponies she doesn't know.  She doesn't like ponies she does know either.  Either way, you are not getting by her easily.[note cliche]".

Instead of taking Opalescence, say "It only it were that easy.".
Instead of pushing Opalescence, say "You try, but get scratched up in the process.".

After going to Front of Carousel Boutique for the first time:
	Say "A wild Opalescence appears.";
	Now Opalescence is seen;
	Now Opalescence is in Front Of Carousel Boutique.

Before going southeast in Front of Carousel Boutique when Opalescence is in Front of Carousel Boutique:
	Say "[one of]Opalescence hisses at you[or]Opalescence takes a few swipes at your coat. She's surprisingly good at that[or]Opalescence takes a flying leap towards your face will fully extended claws[or]You attempt to enter the Carousel Boutique, but Opalescence prevents you from getting close.[or]A mighty scuffle with Rarity ensues.  You do not win.[or]Courtesy of Opalescence, your attempt to look at dresses fails. As a consolation, you can now look at some new scratches[or]Fashion is difficult when there is an angry cat blocking the way[or]Opalescence doesn't like you.  I mean, she really doesn't like you.  You are not getting past her[or]Opalescence tries claws.  It's super effective[or]Opalescence growls at you[or]Opalescence is blocking the door[purely at random][note cat-block].";
	Stop the action.


Chapter 3 - Inside the Carousel Boutique

Carousel_Boutique is a room.  It is southeast of the Front of Carousel Boutique. The printed name is "Carousel Boutique".  The description is "CB". It is in Inside_Ponyville.

Part 4 - Sweet Apple Acres

Chapter 1 - The Bridge

Section 1 - The Lavender Bridge

The Lavender Bridge is a room.  "An arched lavender colored bridge crosses the east/west flowing river. Large lilac bushes grow on both ends of the bridges. To the north is the Ponyville town square. A long dusty road leaves Ponyville to the south.  A wooden sign labeled 'Sweet Apple Acres' points down the road.". It is south of South_of_Town_Hall.  It is in South_Road.   The printed name is "Lavender Bridge".

The wooden sign is scenery in the Lavender Bridge. "A simple wooden sign indicating that Sweet Apple Acres is to the south. Someone has written 'no bunnys (sic)' on the backside of the sign.".

Section 2 - Under the Bridge

Under_the_Bridge is a room.  "[first time]It takes some time for your eyes to adjust to the dim light. [only]The underside of the bridge is a dark and cool place.  Dense lilac bushes keep most of the light.[paragraph break].A large, cardboard box is the home to a disheveled looking pony.".   The printed name is "Under the Lavender Bridge".

[ ------------ Secret Door -------------- ]

The steep rocky path is a secret door. It is below Lavender Bridge and above Under_the_Bridge. "It is a very steep path descending to somewhere under the bridge.  Some effort has been made to keep it hidden.".

Large lilac bushes are scenery in the Lavender Bridge.

Instead of searching or examining the large lilac bushes:
	Now the steep rocky path is found;
	Now the steep rocky path is apparent;
	Now the steep rocky path is open;
	Say "The lavender bushes are in full bloom.  Sweet smelling purple and white flowers are everywhere.  You do notice a steep rocky path under one of the bushes leading to below the bridge.".

Dense lilac bushes are scenery in Under_The_Bridge. "The bushes are amazingly dense near the river.  The flowers are not as prevalent here as they are at the top of the bridge. A faint path leads up to the top of the bridge.".

The hidden path is scenery in Under_the_Bridge. "A faint, rocky path leading to the top of the bridge.  It doesn't seem quite as steep from this side.".

Instead of smelling the large lilac bushes, say "The sweet smelling lilacs are almost overwhelming".

Instead of taking the large lilac bushes, say "You should leave the flowers here for other ponies to enjoy.".

Instead of smelling the dense lilac bushes, say "There aren't as many flowers here as there is above, but their odor is still sweet.".

Instead of taking the dense lilac bushes, say "You should leave the flowers here for any other ponies who find this place to enjoy.".

Lilac flowers is a backdrop in Under_The_Bridge.  "Sweet smelling purple and white flowers cover the bushes.".
Lilac flowers is a backdrop in Lavender Bridge.

[ ------------------ The box ------------------]

The large cardboard box is scenery in Under_The_Bridge. "A large. stained cardboard carton that is currently somepony's home. A tarp covers the entrance and part of the box and empty bottles of Applejack Daniels are scattered around.  The remnants of a campfire is in front of the box.".

The blue tarp is scenery in Under_The_Bridge.  "A largish blue tarp covers part of the box.".
The blue tarpaulin is scenery in Under_The_Bridge.  "A largish blue tarp covers part of the box.".
The bottles of applejack daniels is scenery in Under_The_Bridge.  "A large collection of empty Applejack Daniel bottles is scattered all around.".
The campfire remnants is scenery in Under_The_Bridge. The description is "A stone ring filled with ashes.".
The ashes or ash is scenery in Under_The_Bridge. "It's ashy!".

Chapter 2 - The Road

Section 1 - Road 1

Road_SAA_1 is a room.  "DR".  It is south of the Lavender Bridge. It is in South_Road. The printed name is "Sweet Apple Acres Road".

Section 2 - Road 2

Road_SAA_2 is a room. "DR". It is south of the Road_SAA_1. It is in South_Road. The printed name is "Sweet Apple Acres Road".

Section 3 - Road 3

Road_SAA_3 is a room. "DR". It is south of the Road_SAA_2. It is in South_Road. The printed name is "Sweet Apple Acres Road".

Section 4 - Road 4

Road_SAA_4 is a room.  It is south of the Road_SAA_3. It is in South_Road. The printed name is "Sweet Apple Acres Road".

Instead of going south in Road_SAA_4:
	Say "The road leads away from Ponyville, and you intend to stay in Ponyville for a while.".

Chapter 3 - The Farm

Section 1 - Sweet Apple Acres

Figure of Sweet Apple Acres is the file "SweetAppleAcres.png".
Sweet Apple Acres is a room. "You are standing in front of a large apple farm.".  It is west of the Road_SAA_3. It is in Applejacks_Farm. The room illustration is Figure of Sweet Apple Acres. The printed name is "In front of Sweet Apple Acres".
There is a cider stand in Road_SAA_3. It is fixed in place.

Section 2 - Barn

Barn is a room.  It is west of Sweet Apple Acres. It is in Inside_Applejacks_Farm. The printed name is "Barn".

Section 3 - Applejack's House

Applejack's House is a room.  It is southwest of Sweet Apple Acres. It is in Inside_Applejacks_Farm. The printed name is "In front of Applejack's House".

Chapter 4 - The Orchards

Section 1 - Orchard 1

Apple Orchard 1 is a room.  It is northwest of Sweet Apple Acres. It is in Applejacks_Farm. The printed name is "Apple Orchard".

Section 2 - Orchard 2

Apple Orchard 2 is a room.  It is south of Sweet Apple Acres. It is in Applejacks_Farm. The printed name is "Apple Orchard".

Section 3 - Orchard 3

Apple Orchard 3 is a room.  It is north of Sweet Apple Acres.  It is east of Apple Orchard 1. It is in Applejacks_Farm. The printed name is "Apple Orchard".

Section 4 - Orchard 5

Apple_Orchard_5 is north of Apple Orchard 1. It is in Applejacks_Farm. The printed name is "Apple Orchard".

Section 5 - Orchard 6

Apple_Orchard_6 is west of Apple_Orchard_5. It is in Applejacks_Farm. The printed name is "Apple Orchard".

Section 6 - Orchard 7

Apple_Orchard_7 is west of Apple_Orchard_6. It is in Applejacks_Farm. The printed name is "Apple Orchard".

Section 7 - Orchard 4

Apple_Orchard_4 is west of Apple_Orchard_7. It is in Applejacks_Farm. The printed name is "Apple Orchard".

Section 8 - Orchard 9

Apple_Orchard_9 is west of Apple Orchard 1. It is in Applejacks_Farm.  It is southeast of Apple_Orchard_7. The printed name is "Apple Orchard".

Section 9 - Orchard 10

Apple_Orchard_10 is south of Apple_Orchard_9.  It is in Applejacks_Farm. The printed name is "Apple Orchard".

Section 10 - Zap Orchard 1

Zap Apple Orchard is south of Apple_Orchard_4. It is in Applejacks_Farm. The printed name is "Zap Apple Orchard".

Section 11 - Zap Orchard 2

Zap Apple Orchard 2 is west of Zap Apple Orchard. It is in Applejacks_Farm. The printed name is "Zap Apple Orchard".

Part 5 - West Ponyville

Chapter 1 - Street 1

Figure of Street 1 is the file "Street1.png".
Street_1 is west of Northwest_of_Town_Hall. It is in West_Ponyville. The room illustration is Figure of Street 1. The printed name is "Street".

Chapter 2 - Garden

Garden is north of Street_1. It is in West_Ponyville. The printed name is "Garden".

Chapter 3 - Street 2

Figure of Street2 is the file "Street2.jpg".
Street_2 is west of West_of_Town_Hall. It is in West_Ponyville. The room illustration is Figure of Street2. The printed name is "Street".
A Well is scenery in Street_2.

Chapter 4 - Street 3

Street_3 is southwest of Southwest_of_Town_Hall.  It is in West_Ponyville. The printed name is "Street".

Chapter 5 - Plaza 1

Plaza_1 is west of Street_1. It is in West_Ponyville.
A soapbox is scenery in Plaza_1. The soapbox is fixed in place.
A Flower Stall is scenery in Plaza_1. The flower stall is fixed in place. The printed name is "North end of Plaza".

Chapter 6 - Plaza 2 (Sugarcube Corner)

Figure of SugarCube Corner is the file "SugarCubeCorner.png".
Plaza_2 is west of Street_2. "You are in a large plaza where ponies are selling all sorts of things.  The most noticeable feature is a large confectionery shop on the southeast side.".  Plaza_2 is south of Plaza_1. It is in West_Ponyville. The room illustration is Figure of SugarCube Corner. The printed name is "Middle of Plaza".

Chapter 7 - Plaza 3

Plaza_3 is west of Street_3.  Plaza_3 is south of Plaza_2. It is in West_Ponyville. The printed name is "South end of Plaza".

Chapter 8 - Street 4 (Library)

Figure of Library is the file "Library.png".
Street_4 is northwest of Plaza_1. "A northwest/southeast running street.  To the southeast you can see the activity of the Ponyville marketplace.[paragraph break]To the west is the Ponyville library.  The library is built into a large, hollowed out (yet still very much alive and healthy) tree.  Windows pop out at random intervals and there are two balconies.  There is a telescope on the upper, and an unexpectedly active beehive just below the lower one.  There is a path leading behind the library to the southwest.". It is in West_Ponyville. The room illustration is Figure of Library. The printed name is "In front of Library".

Chapter 9 - Street 5

Street_5 is northwest of Street_4. It is in Outside_Ponyville. The printed name is "Street".

Chapter 10 - Clocktower

The Clocktower is west of Street_5. It is in Inside_Ponyville. The printed name is "Inside the Clock Tower".

Chapter 11 - Behind the Clocks

Clock Door is a secret door.  It is above the Clocktower. It is locked.

Behind the Clocks is above the Clock Door. "A small room at the top of the clock tower.  The round".  It is dark. It is in Inside_Ponyville. The printed name is "Behind the Clocks".

The Dark Blue Pony Box is scenery in Behind the Clocks.


Chapter 12 - Sofa and Quills

Sofas_and_Quills is west of Plaza_3. It is in Inside_Ponyville. The printed name is "Sofa and Quills".

Part 6 - Northeast Ponyville

Chapter 1 - Joke Shop

The Joke Shop is east of Northeast_of_Town_Hall. It is in Inside_Ponyville. The printed name is "Joke Shop".

Chapter 2 - The Spa

The Spa is northeast of Northeast_of_Town_Hall. It is in Inside_Ponyville. The printed name is "Spa".

Chapter 3 - The Bookstore

The Bookstore is southeast of Northeast_of_Town_Hall. It is in Inside_Ponyville. The printed name is "Bookstore".

The Book of the Foul Winds is a book in The Bookstore.

Chapter 4 - Road 1

Figure of Road_N_1 is the file "North1.png".
Road_N_1 is north of Northeast_of_Town_Hall. It is in North_Ponyville. The room illustration is Figure of Road_N_1. The printed name is "Street".

Chapter 5 - Road 2

Road_N_2 is north of Road_N_1. It is in North_Ponyville. "... The hospital is southwest of here.  To the north is a windmill; east is a park and northwest is a railroad depot.  A street descends steeply from here on the west side and to the south is a road leading towards the town square.". The printed name is "Street".

Chapter 6 - The Windmill

The Windmill is north of Road_N_2. "The inside of is dominated by a large treadmill that drives the windmill.  ".The Windmill is in Inside_Ponyville. The printed name is "Windmill".

Wind schedule is scenery in the windmill.  "A schedule of what winds need to be blown for what day.  Today is scheduled to have 'calm'.  That is probably why nopony is here.".

Treadmill is scenery in the windmill.

[Instead of moving the treadmill:
	If the species of the player is earth:
		Say "You hop onto the treadmill, push against the yoke and start to walk.  It is hard work, but you gradually start to move the ";
		[ Now the winds are ]
	Otherwise:
		Say "You hop onto the treadmill, push against the yoke and try to walk.  After much effort, you realize that you are nowhere near strong enough to turn the windmill.".]

Chapter 7 - The Park

The Park is east of Road_N_2. It is in North_Ponyville. The printed name is "Park".

Chapter 8 - Railroad Depot

Railroad Depot is northwest of Road_N_2. The Railroad Depot is in Inside_Ponyville. The printed name is "Railroad Depot".

Chapter 9 - Steep Street

Steep Street is west of Road_N_2. It is in North_Ponyville. The description is "The street descends sharply to the west.  It would be hard to keep control of a wagon going down this hill. The street goes up to the east and down to the west.". The printed name is "Steep Street".

Chapter 10 - Cliff

Edge of Cliff is west of Steep Street. It is in North_Ponyville. The description is "The steeply descending street ends at the top of a cliff to the west.  [first time]What pony builds a road that ends by going off a cliff.  That doesn't make sense. [only]There are a couple of small houses along the south side of the street and thorn bushes along the north side.". The printed name is "Top of cliff".

Instead of going west in Edge of Cliff, say "That would involve going off the edge of a cliff. [if the species of the player is pegasus]However, you are pegasus, so that is not a big deal.  You fly around a bit, see nothing interesting and return back to the top of the cliff.[otherwise]That would probably end badly. The bad news is that the road is steep enough that you may just slip over the edge. The good news is that the hospital is not far away.".

The small houses are scenery in Edge of Cliff. "A few small houses in the tudor style so common in Ponyville."



Chapter 11 - The Hospital

Section 1 - Hospital Lobby

The Hospital Lobby is southwest of Road_N_2. The Hospital Lobby is in Inside_Ponyville. The printed name is "Hospital Lobby".

Section 2 - Hospital Room

The Hospital Room is a room. "A small". It is in Inside_Ponyville. The printed name is "Hospital Room".

Instead of doing anything other than looking, examining or waiting when the player is in the Hospital Room:
	Say "You are feeling too rotten to go anywhere.".

Chapter 12 - Narrow Path

Section 1 - Describe the path

The Narrow Path is a room.  The description is "Unlike the rest of Ponyville, this narrow path is strewn with random bits of litter.  Empty cans of 'Equestian' beer, cigarette packs and broken bottles ThunderGriffon can be found amongst the briars and bushes that surround the path.[paragraph break]You can go southeast back to the street, or further into the bushes to the north.". The printed name is "Narrow, Thorny Path".

Section 2 - Define the secret door

The thorny path is a secret door. It is northwest of the Cliff and southeast of the Narrow Path.

The wall of thorn bushes is scenery in Edge of Cliff.

Instead of searching or examining the thorn bushes:
	Now the thorny path is found;
	Now the thorny path is apparent;
	Now the thorny path is open;
	Say "The dense thorn bushes make going to the north nearly impossible.  There does appear to be a narrow path entering the bushes to the northwest.".

Before going northwest from edge of cliff:
	If the thorny path is found:
		Say "The thorn bushes tear at your coat.".

Section 3 - Scenery and stuff

The mass of thorn bushes is a scenery in the Narrow Path. "Sharp thorn bushes pull at your coat."

The Bottle of ThunderGriffon is scenery in the Narrow Path.  "If you spent two bits on a bottle of this, you got ripped off.".

The Cigarette Packs or Cigarette Pack or Mareburro Cigarettes is scenery  in the narrow path.  "Empty packages of Mareburro cigarettes.".

The Equestrian Beer Cans is scenery in the narrow path.  "Equestrian beer is probably the cheapest beer in all of Equestria.  And the nastiest.".

The garbage or trash or debris is scenery in the Narrow Path. "You don't really want to poke around the random and rather disgusting trash on this path.".

Chapter 13 - Outside Trailer

The Outside of the Trailer is north of the Narrow Path.  The description is "You are standing in front of a mid 1970s era single wide trailer. The trailer has seen better days - and those days were probably not that good either.[paragraph break]Around you is a wagon up on blocks, broken appliances, cheap plastic toys and a mostly dead pine tree with Hearths Warming lights on it[note hearths-warming-trash].[paragraph break]The only escape from here is a narrow path through the thorn bushes to the south.". The printed name is "Outside of a Trailer".

The mostly dead pine tree or the string of hearths warming lights is scenery in outside of the trailer. "The string of Hearths Warming lights on a dying tree makes for a cheerless holiday display.".

The broken appliances is scenery in outside the trailer. "The long broken and rusted appliances will never work again.".

The 1970s trailer is scenery in outside the trailer. "It's a sad looking, vaguely yellowish trailer.  The front door is accessed via a stack of concrete blocks. Tattered curtains hand in the windows. The wheels and axles are missing.[paragraph break]The smell coming from the trailer is less than pleasant.[paragraph break]You occasionally hear muffled yelling from inside the trailer.".

The concrete blocks is scenery in outside the trailer. "Concrete blocks have been used here for a variety of purposes.  Some are holding up a wagon that is missing its wheels.  Others make the steps leading into the trailer.  Some are just laying on the ground.  A lot of those are broken.".

The rotten wagon is scenery in outside the trailer. "The wagon is missing its wheels, so it is propped up on some concrete blocks.  Even if the wheels were there, the wagon is too rotten to be put to use.".

The wagon wheels is scenery in outside the trailer. "The wagon wheels are missing.".

The trailer wheels or axles is scenery in outside the trailer. "The wheels and axles for the trailer are missing.  You wouldn't be surprised if they were either stolen or sold for beer money.".

The tattered curtains is scenery in outside the trailer. "They look like torn sheets.".
The broken windows is scenery in outside the trailer. "The windows have been broken.  Curtains made of dirty torn sheets keep you from seeing inside.".

Cheap plastic toys is scenery in outside the trailer. "The formerly bright colors of these toys has faded due to sitting outside for a long time."

Does the player mean examining the 1970s trailer: it is very likely.
Does the player mean entering the 1970s trailer: it is very likely.
Instead of entering the trailer, say "You walk up to the door and hear some muffled yelling coming from inside the trailer.  You decide against knocking on the door.".

Does the player mean smelling the 1970s trailer: it is very likely.
Instead of smelling the trailer, say "It's not good.  It smells like something died in there.".

Does the player mean listening to the 1970s trailer: It is very likely.
Instead of listening to the trailer, say "It's mostly quiet, but every so often you hear muffled shouts coming from inside.".

Does the player mean examining the rotten wagon: it is very likely.
Does the player mean entering the rotten wagon: it is very likely.
Instead of entering the wagon, say "The wagon is too rotten to hold your weight.  Besides, the wagon is missing its wheels so it is not a useful means of transportation.".


Part 7 - Sugarcube Corner

Chapter 1 - Sugarcube Corner

Sugarcube Corner is southeast of Plaza_2.  Sugarcube Corner is in Inside_Ponyville. The printed name is "Sugarcube Corner".

The Surprise Cupcake is in Sugarcube Corner.

The label is scenery in Sugarcube Corner. "It just says 'Surprise!'".
The counter is scenery in Sugarcube Corner. "A counter for displaying the various sugary treats available for purchase.".

Part 8 - Library

Chapter 1 - The Library Itself

Figure of Library Inside is the File "LibraryInside.png".
The Library is west of Street_4. "[if not visited]You start to walk towards the library and hear the muffed sound somepony yelling 'Spike! What are you doing?', followed by a loud crash.[paragraph break][end if]The Ponyville Library is an unexpectedly cluttered and disorganized place with books scattered all over.[if unvisited][paragraph break]As soon as you walk in, a trio of fillies runs up to you and almost immediately notices your lack of cutie mark and crowd around you.[end if]". The printed name is "Library reading room". The room illustration is Figure of Library Inside. The Library is in Inside_Ponyville.

After going to the library the first time:
	[Now the player is stalled by cmc.]
	Continue the action.

A Reading Table is in the Library.  The description is "A stout reading table with a large pile of books on it.". The table is a supporter.

The pile of books is a backdrop in the Library. "Large pile of books on [one of]random[or]a wide variety[then at random] topics.".
The bookshelves or shelves or bookcase or shelf or bookshelf is a backdrop in the Library.  "The bookshelves are unexpectedly well organized given the general chaos in the library.".

After reading A Historical Case of the Treatment of an Absent Cutie Mark:
	Now the player is everfree_ok.

Every turn when Sweetie Belle is shadowing the player:
	If a random chance of one in four succeeds:
		Say "[one of]You trip over Sweetie Bell[or]Sweetie Belle asks if you have an idea of what your special talent.[or]Sweetie Belle assures you that they are just the fillies to help you find your cutie mark.[purely at random]".

Every turn when Apple Bloom is shadowing the player:
	If a random chance of one in four succeeds:
		Say "[one of]The Cutie Mark Crusaders run around you.[or]Apple Bloom wants to know how she can help.[or]The three fillies shout 'The Cutie Mark Crusader Cutie Mark Finders! Yay!'[purely at random]".

Every turn when Scootaloo is shadowing the player:
	If a random chance of one in four succeeds:
		Say "[one of]You stumble into Scootaloo[or]Scootaloo informs you that Rainbow Dash knows how to find your cutie mark.[or]Scootaloo thinks you should ask Rainbow Dash about your cutie mark.[purely at random]".

Chapter 2 - The Library Basement

The Library_Basement is below The Library. The printed name is "Library Basement".

Chapter 3 - Behind the Library

Section 1 - The Room

Backside of Library is southwest of Street_4. It is in
West_Ponyville. The printed name is "Behind the Library".

Tom is a thing.  It is in the Backside of Library.  The description of Tom is "A large, granite boulder roughly cut to appear like a giant diamond.  Carved near the top with the word 'Tom'.". It is bulky.

Section 2 - Tom

Before taking Tom:
	If the species of the player is earth:
		Say "Tom is unbelievably heavy.  It must have been one strong pony to get him stashed behind here.";
		Continue the action;
	Otherwise:
		If the species of the player is unicorn:
			Say "Your horn glows a [color of the player] glow.  Tom lifts, but only barely and then falls to the ground with a deep thud.";
			Stop the action;
		Otherwise:
			Say "You are not strong enough to move Tom";
			Stop the action.

Before dropping Tom:
	Say "Look out! Here comes Tom!".

[When the player has Tom and Rarity can be seen by the player:
	Say "Oof".]

Part 9 - The Schoolhouse

Chapter 1 - The Schoolhouse

Figure of schoolhouse is the file "Schoolhouse.png".

The Schoolhouse is north of Street_4. It is in West_Ponyville. The description is "The Ponyville school is a brightly colored one room schoolhouse with a bell on top and a flag out front.[if the schoolhouse is printing_papers]  You can hear the sound of a printing press coming from the basement.[end if]". The printed name is "In front of the Schoolhouse". The room illustration is Figure of schoolhouse. The schoolhouse can be printing_papers or idle_press.  The schoolhouse is idle_press.

Part 10 - Fluttershyland

Chapter 1 - The Road

Section 1 - Bridge

Figure of Bridge3 is the file "Bridge3.jpg".
Bridge_3 is west of Plaza_2.  It is in West_Road. The room illustration is Figure of Bridge3. The printed name is "Westerly Bridge".

Section 2 - Road 1

Road_FS_1 is west of Bridge_3. It is in West_Road. The printed name is "Everfree Forest Road".

Section 3 - Road 2

Road_FS_2 is west of Road_FS_1. It is in West_Road. The printed name is "Everfree Forest Road".

Section 4 - Road 3 (Everfree Forest)

Road_FS_3 is west of Road_FS_2. It is in West_Road. The printed name is "Everfree Forest Road".

Chapter 2 - FlutterHaus

Section 1 - Bridge In Front of the FlutterHaus

Figure of Fluttershy's Cottage is the file "FluttershyCottage.jpg".
Front of Fluttershy's House is north of Road_FS_2.  The room illustration is Figure of Fluttershy's Cottage. The printed name is "Fluttershy's Bridge".

Section 2 - The FlutterHaus

Figure of Inside Fluttershys Cottage is the file "FluttershyCottageInside.png".
Inside_Flutteryshy's_House is north of Front of Fluttershy's House. The room illustration is Figure of Inside Fluttershys Cottage. The printed name is "Fluttershy's Cottage".

Section 3 - Chicken Coop

Chicken Coop is northwest of Front of Fluttershy's House. The printed name is "Chicken Coop".

Part 11 - CMC Clubhouse

Chapter 1 - Large Tree

Figure of CMC Clubhouse is the file "CmcClubhouse.png".
The Large Tree is south of Road_FS_1. It is in West_Road. The room illustration is Figure of CMC Clubhouse. The printed name is "Large Tree".

Chapter 2 - CMC Clubhouse

The CMC Clubhouse is above the Large Tree. The printed name is "Cutie Mark Crusaders Clubhouse".

Chapter 3 - Path

Path_1 is south of the Large Tree.  Path_1 is north of Apple_Orchard_4. Path_1 is northwest of Apple_Orchard_7. It is in West_Road. The printed name is "Path".

Part 12 - Whitetail woods

Chapter 1 - Woods 1

Figure of Whitetail Woods is the file "WhitetailWoods.png".
Whitetail Woods 1 is northeast of The Park. It is in Whitetail_Woods. The room illustration is Figure of Whitetail Woods. The printed name is "Whitetail Woods".

Chapter 2 - Woods 2

Whitetail Woods 2 is northeast of Whitetail Woods 1. It is in Whitetail_Woods. The printed name is "Whitetail Woods".

Part 13 - Rainbow Dash's House

Chapter 1 - Rainbow Dash's House

Rainbow Dash's House is above Road_SAA_4. The printed name is "Rainbow Dash's House".

Part 14 - Ponyville Skies

Section 1 - Above Town Square

Above_Town_Square is a room.  It is in_the_air.  It is in Ponyville_Skies. The printed name is "Above Town Square".

Instead of going up [or flying] in Outside_Town_Hall:
	Try entering Above_Town_Square.

Instead of going down [ or landing ] in Above_Town_Square:
	Let x be a random visited room in Outside_Town_Hall;
	If x is nothing:
		Let x be a random room in Outside_Town_Hall;
		Say "You fly towards someplace random below you.";
	Otherwise:
		Say "You fly towards someplace that looks familiar.";
	Now the player is in x.

Instead of going up [or flying] in Inside_of_Town_Hall:
	If the hole_count of the Ponyville_Town_Hall is greater than two:
		Try entering Above_Town_Square;
		Say "It wasn't in the best taste to take off from the center of the town hall you destroyed.";
	Otherwise:
		Say "You might be able to fly up through one of those holes.  Maybe.  But you don't want to try.".

Section 2 - Above West Ponyville

Above_West_Ponyville is a room.  It is in_the_air. It is west of Above_Town_Square.  It is in Ponyville_Skies. The printed name is "Above West Ponyville".

Instead of going up [or flying] in West_Ponyville:
	Try entering Above_West_Ponyville.

Instead of going down [ or landing ] in Above_West_Ponyville:
	Let x be a random visited room in West_Ponyville;
	If x is nothing:
		Let x be a random room in West_Ponyville;
		Say "You haven't been to the west side of Ponyville before, so any place is probably as good as any other.";
	Otherwise:
		Say "You fly towards someplace that looks familiar.";
	Now the player is in x.

Section 3 - Above West Road

Above_West_Road is a room.  It is in_the_air.  It is west of Above_West_Ponyville.  It is in Ponyville_Skies. The printed name is "Above Everfree Forest Road".

Instead of going up [or flying] in West_Road:
	Try entering Above_West_Road.

Instead of going down [ or landing ] in Above_West_Road:
	Let x be a random visited room in West_Road;
	If x is nothing:
		Let x be a random room in West_Road;
		Say "You haven't been on this road before, so you land in a safe looking place.";
	Otherwise:
		Say "You fly towards someplace that looks familiar.";
	Now the player is in x.

Section 4 - Above North Ponyville

Above_North_Ponyville is a room. It is in_the_air.  It is north of Above_Town_Square. It is northeast of Above_West_Ponyville.  It is in Ponyville_Skies. The printed name is "Above North Ponyville".

Instead of going up [or flying] in North_Ponyville:
	Try entering Above_North_Ponyville.

Instead of going down [ or landing ] in Above_North_Ponyville:
	Let x be a random visited room in North_Ponyville;
	If x is nothing:
		Let x be a random room in North_Ponyville;
		Say "The north side of Ponyville is unfamiliar to you, so you choose a relatively clear place to land.";
	Otherwise:
		Say "You fly towards someplace that looks familiar.";
	Now the player is in x.

Section 5 - Above Whitetail Woods

Above_Whitetail_Woods is a room. It is in_the_air. It is northeast of Above_North_Ponyville.  It is in Ponyville_Skies. The printed name is "Above the Whitetail Woods".

Instead of going up [or flying] in Whitetail_Woods:
	Try entering Above_Whitetail_Woods.

Instead of going down [ or landing ] in Above_Whitetail_Woods:
	Let x be a random visited room in Whitetail_Woods;
	If x is nothing:
		Let x be a random room in Whitetail_Woods;
		Say "You've never seen these woods before.  Normally you wouldn't land in some random forest, but this is so close to Ponyville that you look for a gap in the trees and land.";
	Otherwise:
		Say "You look for a familiar looking clearing in woods.";
	Now the player is in x.

Section 6 - Above Southeast Ponyville

Above_Southeast_Ponyville is a room. "You are flying above a clear blue river.  The Carousel Boutique is just to the southeast of the river.". It is in_the_air.  It is southeast of Above_Town_Square.   It is in Ponyville_Skies. The printed name is "Above Southeast Ponyville".

Instead of going up [or flying] in Southeast_Ponyville:
	Try entering Above_Southeast_Ponyville.

Instead of going down [ or landing ] in Above_Southeast_Ponyville:
	Let x be a random visited room in Southeast_Ponyville;
	If x is nothing:
		Let x be a random room in Southeast_Ponyville;
		Say "You look for a place to land in this unfamiliar part of town.";
	Otherwise:
		Say "You fly towards someplace that looks familiar.";
	Now the player is in x.

Section 7 - Above South Road

Above_South_Road is a room.  It is in_the_air. It is south of Above_Town_Square. It is west of Above_Southeast_Ponyville. It is southeast of Above_West_Ponyville. It is in Ponyville_Skies. The printed name is "Above Sweet Apple Acres Road".

Instead of going up [or flying] in South_Road:
	Try entering Above_South_Road.

Instead of going down [ or landing ] in Above_South_Road:
	Let x be a random visited room in South_Road;
	If x is nothing:
		Let x be a random room in South_Road;
		Say "You've never been on this road south of Ponyville.  You find a good spot and land.";
	Otherwise:
		Say "You fly towards someplace that looks familiar.";
	Now the player is in x.

Section 8 - Above Applejack's Farm

Above_Applejack is a room.  It is in_the_air.  It is west of Above_South_Road.  It is south of Above_West_Ponyville.  It is southeast of Above_West_Road. It is southwest of Above_Town_Square. It is in Ponyville_Skies. The printed name is "Above Sweet Apple Acres".

Instead of going up [or flying] in Applejacks_Farm:
	Try entering Above_Applejack.

Instead of going down [ or landing ] in Above_Applejack:
	Let x be a random visited room in Applejacks_Farm;
	If x is nothing:
		Let x be a random room in Applejacks_Farm;
		Say "Unfamiliar apple orchards spread all around you.  You look for a nice spot in the orchards to land.";
	Otherwise:
		Say "You fly towards someplace that looks familiar.";
	Now the player is in x.


Chapter 2 - Above Ponyville (Surrounding Regions)

Section 1 - Above South Of Ponyville

Above_South_Of_Ponyville is a room.  It is in_the_air.  It is south of Above_South_Road.  It is southeast of Above_Applejack.  It is  southwest of Above_Southeast_Ponyville. It is in Ponyville_Skies. The printed name is "Flying South of Ponyville". The cloud is edible. The cloud can be worn.

A puffy cloud is in Above_South_Of_Ponyville.  "A small, puffy cloud". The description is "A small puffy white cloud floating in the air.". It is pushable between rooms. The puffy cloud can be stormy or not stormy. The puffy cloud is an enterable container.
Instead of pushing the cloud when the player is inside the cloud:
	Say "That is a bit tricky from inside the cloud.".
After going anywhere (called d) with the puffy cloud:
	Say "You push the cloud [d].".
Instead of eating or tasting the cloud:
	Say "You nibble at the cloud.  It tastes like cotton candy, only without the flavor.".
Instead of smelling the cloud:
	Say "It smells clean and somewhat wet.".
Instead of drinking the cloud:
	Say "You squeeze a few drops of water out of a corner of the cloud.  They taste like water.".
Instead of wearing the cloud:
	Try entering the cloud instead.
[Instead of removing the cloud:
	Try exiting the cloud instead.]
Instead of jumping on the puffy cloud:
	Try stomping the cloud instead.
Instead of pushing the puffy cloud:
	Say "You push the cloud around.".
Before going down with the puffy cloud:
	Say "You should keep the cloud in the air.";
	Stop the action.
Before going up with the puffy cloud:
	Say "You get underneath the cloud and push.  Somehow or another you trigger it to pop you with a bolt of lightning.";
	Stop the action.
Instead of taking the cloud:
	Say "The puffy cloud is not the sort of thing you can carry around.".
Instead of stomping the cloud:
	Now the puffy cloud is stormy;
	Say "The cloud turns light grey.".
Instead of stomping the cloud for two turns:
	Say "The cloud turns a darker grey.".
Instead of stomping the cloud for three turns:
	Say "The cloud starts raining lightly".
Instead of stomping the cloud for four turns:
	Say "The cloud starts raining moderately.".
Instead of stomping the cloud for five turns:
	Say "The cloud starts raining heavily.".
Instead of stomping the cloud for six turns:
	Say "Lightning starts coming from the cloud.".
Instead of stomping the cloud for more than six turns:
	Say "Lightning and heavy rain come from the cloud.".
Before jumping when the cloud can be seen by the player:
	Say "(on the puffy cloud)";
	Try stomping the puffy cloud.
Instead of stomping the cloud when the player is inside the cloud:
	Say "That is tricky to do from the inside.".

Before doing anything other than stomping when the puffy cloud is stormy:
	Now the puffy cloud is not stormy;
	If the puffy cloud can be seen by the player:
		Say "The cloud returns to its normal white puffy appearance.".

After entering the puffy cloud:
	Say "You are hiding inside the puffy cloud. Just your ears stick out.".

Section 2 - Above Northwest of Ponyville

Above_Northwest_Of_Ponyville is a room.  It is in_the_air. It is north of Above_West_Ponyville.  It is west of Above_North_Ponyville.  It is northwest of Above_Town_Square.  It is northeast of Above_West_Road. It is in Ponyville_Skies. The printed name is "Flying Northwest Of Ponyville".

Section 3 - Above East of Ponyville

Above_East_Of_Ponyville is a room. "You are above the mountainous country east of Ponyville.  You see the waterfall that feeds the river through Ponyville below you.".  It is in_the_air.  It is east of Above_Town_Square.  It is northeast of Above_South_Road. It is north of Above_Southeast_Ponyville.  It is southeast of Above_North_Ponyville.  It is south of Above_Whitetail_Woods. It is in Ponyville_Skies. The printed name is "Flying East of Ponyville".

Instead of going down in Above_East_Of_Ponyville:
	Say "The ground below you is pretty rough and a ways from Ponyville.  You decide not to land here.".

Section 4 - Above North of Ponyville

Above_North_Of_Ponyville is a room.  It is in_the_air. It is north of Above_North_Ponyville.  It is northeast of Above_Northwest_Of_Ponyville.  It is west of Above_Whitetail_Woods.  It is in Ponyville_Skies. The printed name is "Flying North of Ponyville".

Section 5 - Far Above Ponyville

Far_Above_Ponyville is a room. "You are quite a distance above Ponyville. The ponies look like ants from up here.  Brightly colored ants.[paragraph break]To the northeast you see Cloudsdale.". It is in_the_air.  It is above Above_Town_Square. The printed name is "Far Above Ponyville".  It is in Upper_Skies.

Instead of going up [or flying] in Ponyville_Skies:
	Try entering Far_Above_Ponyville.

Instead of going down [ or landing ] in Far_Above_Ponyville:
	Let x be a random room in Ponyville_Skies;
		Say "You descend closer to Ponyville.";
	Now the player is in x.

Section 6 - Very Far Above Ponyville

Very_Far_Above_Ponyville is a room.  It is in_the_air.  It is above Far_Above_Ponyville. The printed name is "Very far above Ponyville". It is in Upper_Skies.

Section 7 - Too Far Above Ponyville

Too_Far_Above_Ponyville is a room.  It is in_the_air.  It is above Very_Far_Above_Ponyville. The printed name is "Too Far Above Ponyville". It is in Upper_Skies.

Section 8 - Way Too Far Above Ponyville

Way_Too_Far_Above_Ponyville is a room. "You are a long, long ways above Ponyville.  The heat from the sun is getting pretty intense up here.". It is in_the_air.  It is above Too_Far_Above_Ponyville.  The printed name is "Way Too Far Above Ponyville".  It is in Upper_Skies.

Instead of going up in Way_Too_Far_Above_Ponyville:
	Now the hole_count of Ponyville_Town_Hall is the hole_count of Ponyville_Town_Hall plus one;
	If a random chance of one in four succeeds:
		Say "You have gotten too close to the sun[note bumped-into-sun]. Fortunately, your wings are not made of wax.  Not so fortunately, the heat makes you dizzy and you fall.[paragraph break]And fall.[paragraph break]And fall.[paragraph break]And fall.[paragraph break]And fall.[paragraph break]You have plenty of time to reflect on your life; your successes; your failures.  Mainly your failures.[paragraph break]While you wait for the inevitable crash, you wonder if you will get a 'plummeting' cutie mark.[paragraph break].Your fall is broken by the roof of the Ponyville Town Hall.  The the roof of the Ponyville Town Hall is broken by your fall.[paragraph break]You find yourself on your back, wings outstretched and hooves in the air.  Miraculously nopony else is inured. You, on the other hoof, were not so lucky.  You get rushed to the hospital.";
		Now the player is in the Hospital Room;
		The player is ousted from the hospital in four turns from now;
	Otherwise:
		Say "You have gotten too close to the sun[note bumped-into-sun]. Fortunately, your wings are not made of wax.  Not so fortunately, the heat makes you dizzy and you fall.[paragraph break]And fall.[paragraph break]And fall.[paragraph break]And fall.[paragraph break]And fall.[paragraph break]You have plenty of time to reflect on your life; your successes; your failures.  Mainly your failures.[paragraph break]While you wait for the inevitable crash, you wonder if you will get a 'plummeting' cutie mark.[paragraph break].Your fall is broken by the roof of the Ponyville Town Hall.  The the roof of the Ponyville Town Hall is broken by your fall.[paragraph break]You find yourself on your back, wings outstretched and hooves in the air.  Miraculously you are uninjured. Nopony else is inured.  You wonder if you fell fast enough to create a sonic rainboom[note no-rainboom]. You open your eyes to find yourself looking into the face of a very disappointed (yet resigned to her fate) mayor. The air is dusty and bits of debris rain down from a new pony-sized hole in the roof.";
		Now the player is in Inside_of_Town_Hall.

Section 9 - Above the Everfree

Above_The_Everfree is a room.  It is in_the_air. It is west of Above_West_Road.

Instead of going down in Above_The_Everfree:
	if the player is everfree_ok:
		Say "You know what you are looking for is somewhere in that forest.  The canopy is thick and sharp.  You look for any gaps in the foliage, but find none.";
	Otherwise:
		Say "The Everfree is a pretty dangerous place.  Not somewhere you want to go. Anyway, the canopy of the forest is too thick and sharp to land in.".

Section 10 - Ponyville Skies rules

Before going a direction (called d) in Ponyville_Skies:
	If d is not up and d is not down:
		If d is not viable:
			Say "You are flying quite a ways from Ponyville.  You loop back to closer lands.".

Every turn when in Ponyville_skies:
	If a random chance of one in four succeeds:
		Let pc be a random pony_color between alabaster and yellow-green;
		Say "[one of]A [pc] pegasus flies by.[or]A bluebird flies by you.[or]You see some butterflies.[or]A [pc] pegasus flies a loop around you.[or]You fly around a cloud.[or]You sit on a cloud for a few minutes[or]A [pc] pegasus pushes a cloud past you.[or]A [pc] pegasus flies up from below you.[or]A trio of pegasi are racing near you.[or]A [pc] pegasus races past you.[purely at random]".

Part 15 - The Tardis

The Tardis is a room.


Part 16 - The Rules of Ponyville

Chapter 1 - The River Locations

The river is a backdrop in South_of_Town_Hall.
The river is a backdrop in Southeast_of_Town_Hall.
The river is a backdrop in East_of_Town_Hall.
The river is a backdrop in  Pink Bridge.
The river is a backdrop in  Lavender Bridge.
The river is a backdrop in Bridge_3. "The crystal clear river borders Ponyville's town square along the south and east sides. You can see ripples from the occasional fish in the river. Quite some distance to the east, you can see the waterfall that feeds the river."

The waterfall is a backdrop in South_of_Town_Hall.
The waterfall is a backdrop in Southeast_of_Town_Hall.
The waterfall is a backdrop in  East_of_Town_Hall.
The waterfall is a backdrop in  Pink Bridge.
The waterfall is a backdrop in  Lavender Bridge.
The waterfall is a backdrop in  Bridge_3. "The waterfall is a slender cascade some distance east of town."

The fish are a backdrop in South_of_Town_Hall.
The fish are a backdrop in Southeast_of_Town_Hall.
The fish are a backdrop in East_of_Town_Hall.
The fish are a backdrop in Pink Bridge.
The fish are a backdrop in Lavender Bridge.
The fish are a backdrop in Bridge_3. "You stare into the river.  Every so often a brightly colored fish swims by.".



Chapter 2 - Wandering Ponies

Every turn when the player is in Ponyville:
	[ Works but seems slow]
	[ This moves wandering ponies around in Ponyville ]
	Let w be a random wandering awake person;
	Let r be the location of w;
	Let room_list be a list of object;
	Repeat with d running through directions:
		Let new_place be the room the d from r;
		If new_place is in Ponyville:
			Add new_place to room_list;
	If the number of entries in room_list is greater than 0:
		Let counter be a random number between 1 and the number of entries in room_list;
		Let next_room be the entry counter of room_list;
		Let t be the printed name of w;
		Let way be the best route from location to next_room;
		If w is Diamond Tiara or w is Silver Spoon and Diamond Tiara is not shadowing the player:
			Move Diamond Tiara to next_room;
			Move Silver Spoon to next_room;
			Now t is "Diamond Tiara followed by Silver Spoon";
		Otherwise:
			if w is Lily or w is Daisy or w is Rose:
				Move Daisy to next_room;
				Move Lily to next_room;
				Move Rose to next_room;
				Now t is "Daisy, Lily and Rose";
			Otherwise:
				Move w to next_room;
		If r is the location of the player:
			Say "[t] [one of]wanders off[or]leaves[purely at random] to the [way].";
		If next_room is location of the player:
			Say "You see [t] coming over here from the [way].".
		[ Say "[w] moves from [r] to [next_room]"; ]

Chapter 3 - Ponyville Ambiance

Every turn when the player is in Outside_Ponyville:
	If a random chance of one in three succeeds:
		Let pc be a random pony_color between alabaster and yellow-green;
		Let rs be a random pony_species between earth and pegasus;
		Say "[one of]A couple of fillies run past you.[or]A gentle breeze blows[or]A bee flies past you.[or]A [pc] [rs] pony [one of]walks[or]gallops[or]trots[purely at random] by[or]A [pc] pegasus [one of]lands[or]flies[purely at random] next to you.[or]You smell flowers from somewhere[or]You accidentally bump into a [pc] [rs] pony.[or]Three ponies burst out into song.[or]A [pc] [rs] pony bumps into you.[or]You hear birds singing.[or]A bunny runs by you.[or]A small herd of bunnies runs by you.[or]A [pc] [rs] pony is staring at your flank.[or]A large wagon pulled by an old [pc] earth pony rumbles by.[or]A [pc] mare is chasing a foal.[or]A bluebird lands on the roof of a nearby building.[or]You hear the cawing of a crow.[or]You hear some fillies giggling[or]A[purely at random]".

Book 2 - The Everfree Forest

Part 1 - Regions

Everfree_Forest is a region.

Part 2 - General rules

Chapter 1 - Flying

Instead of going up when In the Everfree_Forest:
	If the species of the player is pegasus:
		Say "The canopy above you so thick and so thorny that the best you can do is hover a couple of feet over the ground.";
	Otherwise:
		Say "You clamber up a couple of feet into a nearby tree.  You see branches.  Not much else.".


Part 3 - Outskirts

Chapter 1 - Description

The Outskirts of the Everfree Forest is west of Road_FS_3. "Things darken almost immediately ...". It is in the Everfree_Forest.

Chapter 2 - Entering

Before of going west in Road_FS_3:
	If the player is no_everfree:
		Say "That way goes to the Everfree Forest.  You have no business being there.";
		Stop the action;
	Otherwise:
		If Sweetie Belle is shadowing the player or Apple Bloom is shadowing the player or Scootaloo is shadowing the player:
			Say "The Cutie Mark Crusaders are trying to help you find your cutie mark.  You really should not let them follow you into the Everfree Forest.";
			Stop the action;
		Otherwise:
			Say "[first time]In spite of your sense of self survival, you enter the Everfree Forest.[only]".

Part 4 - Everfree Road W 1

Chapter 1 - Description

Everfree_Road_W_1 is west of Outskirts of Everfree Forest. "A dark and shadowy....". The printed name is "Narrow twisty road". It is in the Everfree_Forest.

Chapter 2 - Cockatrice

The Cockatrice is in Everfree_Road_W_1.
Instead of examining the Cockatrice:
	Say "Seriously?[paragraph break]You are going to look at the cockatrice?[paragraph break]The cockatrice is a smallish two-legged dragon that has the head of a chicken.  The comical appearance of the beast is not as fun as it sounds as the gaze of the cockatrice turns ponies to stone.  To make it short.  You looked at it.  It looked at you.  you are now a statue.[paragraph break]A bout a month later a pony finds your statue and drags it back to Ponyville.  A couple of days later, you are placed on a pedestal in front of Town Hall. You are back where you started, except now you are a statue.";
	Now the player is a statue;
	Now the player is in West_of_Town_Hall.

Instead of doing anything other than waiting or examining when the player is a statue:
	Say "You are a statue.  You aren't going to do much of anything".
Before examining when the player is a statue:
	Say "[first time]You are not sure how you can look at anything with stone eyeballs, but you do.[only]".

Every turn when the player is a statue:
	If the player has been a statue for exactly 1 turn:
		If the player is changed:
			End the game saying "While there probably are spells to convert a petrified pony back to flesh and bone, nopony seems to realize that you are anything except an anonymous statue.  After a few hundred years it is assumed that you were some pony of importance and you find yourself in a museum in Canterlot.[paragraph break]The good news is that you finally do get your cutie mark.  An image of a statue mysteriously appeared on your flank.  The bad news is that you spend eternity really, really bored.";
		Otherwise:
			Say "You hear in your head the voice of the pink statue next to you[paragraph break]'It looks like somepony else looked at a cockatrice.'[paragraph break]You are not sure how the pink statue is talking to you or how you can respond.";
	If the player has been a statue for exactly 2 turns:
		Say "'I've been here a long time. You get used to it after a while.  It will be nice to have another pony to talk to.  Don't worry, you will figure out how to talk to statues in a while.'";
	If the player has been a statue for exactly 4 turns:
		Say "Twilight Sparkle wanders by.  She stops and looks at you.[paragraph break]'Something about this statue looks familiar.'[paragraph break]Suddenly she gallops off to the south.";
	If the player has been a statue for exactly 6 turns:
		Say "Twilight Sparkle, Applejack and Big Macintosh arrive and lift you off your pedestal.  In your head you hear the pink statue sigh. The three ponies drag you to the basement of the Library.  With the exception of a mishap getting you into the basement, the trip goes smoothly, albeit slowly.  But you are a statue, time isn't that important.";
	If the player has been a statue for exactly 7 turns:
		Say "Twilight Sparkle runs upstairs, returns a few minutes later with a large pile of books, then reads for quite a long while.  Again, you are a statue, so time isn't that important.  You are mainly glad that you were not chipped while getting dragged to the library.[paragraph break]Twilight Sparkle's horn starts glowing.  Nothing happens[paragraph break]More horn glowing.  More reading.  Eventually, Twilight Sparkle finds the right spell to convert you back to a pony.[paragraph break]You find that after being a statue for a  month or two leaves the muscles a bit sore.  You thank Twilight Sparkle profusely as you really did not want to spend eternity as a statue[note pigeons].  Twilight Sparkle asks you got converted into a statue[note become-a-statue].  You him and haw a bit.  It's hard to explain that you got that way by intentionally looking at a cockatrice[note i-cant-believe].";
		Now the player is flesh;
		Now Applejack is in Library_Basement;
		Now Big Macintosh is in Library_Basement;
		Now the player is in Library_Basement.

Part 5 - Froggy Bottom Bog

Figure of Froggy Bottom Bog is the file "FroggyBottomBog.png"

Froggy Bottom Bog is northwest of Outskirts of the Everfree Forest.  It is in Everfree_Forest.  The room illustration is Figure of Froggy Bottom Bog.

Book 3 - Cloudsdale

Cloudsdale is northeast of Far_Above_Ponyville.

Book 4 - Canterlot

Book 5 - The Moon

The Moon is a room. "[first time]You feel yourself getting pulled from Equestria. When you awaken, you find yourself...[paragraph break][only]A featureless grey, rocky plain for as far as you can see.  Here and there are occasional craters.  The stars are bright and you can see Equestria far down below.[first time] Congratulations.  You are on the moon.[only]".

Book 6 - Limbo

Limbo is a room.

A General Taxonomy of Cutie Marks is in Limbo.
The Relationship of Names to Cutie Marks is in Limbo.
The Cutie Mark in Pre-Equestrian History is in Limbo.
Abstract Symbolism in Cutie Marks is in Limbo.
Regional Variations in Cutie Marks is in Limbo.
Cutie Mark Failure Syndrome Repercussions is in Limbo.
The Magic of Cutie Marks is in Limbo.
A Historical Case of the Treatment of an Absent Cutie Mark is in Limbo.
Deviant Cutie Marks is in Limbo.
The Foal Free Press is in Limbo.


Book 6 - All good ponies come home

Part 1 - Position the normal ponies

Twilight Sparkle is in the Library.
Sweetie Belle is in the Library.
Scootaloo is in the Library.
Apple Bloom is in the Library.
Spike is in the library.
Fluttershy is in Inside_Flutteryshy's_House.
Rarity is in the Carousel_Boutique.
Pinkie Pie is in Sugarcube Corner. Mr Cake is in Sugarcube Corner.  Mrs Cake is in Sugarcube Corner.
Nurse Redheart and the Proctologist Pony are in the Hospital Lobby.

Homeless Pony is in Under_the_Bridge.

Part 2 - Position the wandering ponies

[ Place background ponies randomly around Ponyville. ]
When play begins:
	Let l be the list of wandering people;
	repeat with p running through l:
		let r be a random room in Outside_Ponyville;
		Move p to r;
	Let r be a random room in Outside_Ponyville;
	Move Diamond Tiara to r;
	Move Silver Spoon to r;
	Let r be a random room in Outside_Ponyville;
	Move Snips to r;
	Move Snails to r;
	Let r be a random room in Outside_Ponyville;
	Move Daisy to r;
	Move Rose to r;
	Move Lily to r.


Volume 7 - Play Begins


[ Contains all the rules and events for when the play starts]

When play begins:
	Now the right hand status line is "[map region of the location]";
	[Now the left hand status line is "[color of the player] [species of the player] - [location]";]
	Now right alignment depth is 30.


Book 1 - Introductory text


When play begins:
	Say "Ponyville[paragraph break]You have finally arrived.[paragraph break]You are not entirely sure why you are here.  Ponyville is a strange place.  But you are a strange mare.[paragraph break]Most ponies figure out who they are and what they're good at when they are colts or fillies.  When this happens their cutie mark appears on their flank.  Most ponies.  But not all.  You are a young mare who should be thinking about having foals of her own, but have not found your cutie mark.[paragraph break]Maybe Ponyville is a good place to find it.  Ponyville does have a [italic type]reputation[roman type].  Strange things happen here.  This is where Nightmare Moon showed up.  The town has been attacked by many things including a dragon, an Ursa Minor and, oddly enough, stampeding bunnies.  That swarm of parasprites a couple of years ago.  It came from here.  If something is bizarre or disastrous, Ponyville probably has something to do with it.[paragraph break]So you might as well be here.  If you can't find your cutie mark here, everything is already so strange that maybe nopony will really care.".
[
ideas

cutie mark failure syndrome

somewhat singed pony with empty cardboard box cutie mark living under bridge?

cutie mark crusader plumbers (ala 3 stooges)

obsene text sends player to die on moon without undo

what is going to destroy equestria

what cutie marks can the player get

"tom" in back of library. only earth ponies strong enough to move.  affects rarity.

footnotes (1) rarity is best pony.

raod that ends in cliff.  in town.

player can end up on moon for causing too much destruction of pissing off celestia,
]


Volume 8 - Scenes

Welcome to Ponyville is a scene.  Welcome to Ponyville begins when play begins.  [ Welcome To Ponyville ends when the player searches for the cutie mark.  Into the Everfree begins when Welcome to Ponyville ends ].

Into the Everfree is a scene.

Tardis to the Everfree is a scene.

Cutie Mark Crisis is a scene.

Volume 9 - Magic

Table of Spells (continued)
Spell    	 Output    	 Directed Output    	 Description
frotz    	 "You cast the frotz spell, but nothing happens."    	 "You cast frotz at [the second noun], but nothing happens."    	 "The frotz spell causes spherical objects to quiver."
teleport    	 "You cast the gnusto spell, but nothing happens."    	 "You cast gnusto at [the second noun], but nothing happens."    	 "The gnusto spell causes great gusts of wind."
rocks fall everypony dies	"You cast"	"You cast"	"The Rocks Fall, Everypony Dies spell is an evil, evil spell"

Teleport is a magic-spell.  It is everywhere. Teleport is learned.
frotz is a magic-spell.  It is everywhere. Frotz is learned.
Levitate is a magic-spell. It is everywhere.  Levitate is learned.
Rocks fall everypony dies is a magic-spell.  It is everywhere.

[Definition: The player is magical if the species of the player is unicorn.]

Before casting a magic-spell:
	If the species of the player is not unicorn:
		Say "Sadly, [species of the player] ponies cannot cast magic spells.";
		Stop the action.

Does the player mean casting teleport on yourself: it is very likely.

Instead of casting teleport at something (called the target):
	[If the target is not a person:
		Try taking the target;]
	If the species of the player is not unicorn:
		Say "Sadly, [species of the player] ponies cannot cast magic spells.";
		Stop the action;
	Let r be a random visited adjacent room;
	If the target is a person and the target is not yourself:
		Say "I doubt [target] would appreciate that.";
		Stop the action;
	If the target is bulky:
		Say "[target] is too large for you to teleport.";
		Stop the action;
	If the target is fixed in place:
		Say "There is a [color of player] flash.  Nothing happens.";
	If r is nothing:
		Say "There is a [color of the player] flash... Nothing at all happens";
		Stop the action;
	Say "There is a [color of player] flash. [if the target is the player]And you find yourself at [printed name of r][otherwise] and the [target] vanishes[end if]. [if Sweetie Belle is shadowing the player and the target is the player]The Cutie Mark Crusaders [first time]are puzzled by your disappearance but[only] see where you reappear and gallop over to catch up.[end if][if the target is Opalescence] Opalescence is very upset by the teleportation and vanishes in a fury of hissing and spitting.[end if]";
	Now the target is in r.



