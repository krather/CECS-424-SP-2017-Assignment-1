"Quarrelstar Galactic" by Jason Spencer

When play begins: say "The all-too familiar quake of a nuclear detonation shocks you awake. As the commander of the last human warship, the Quarrelstar Galactic, it's up to you to get your crew and remaining fleet of human survivors safe from the onslaught of Skylon attacks."

[Captain's Quarters]
The Captain's Quarters is a room. "Your cramped, bleak quarters. The lights flicker, revealing a disheveled bed, [if the paperwork is on the desk]a messy desk with piles of paperwork[otherwise]a now-clean desk[end if], and a locker. To the East lies the Officer's Corridor. "

[All "on-stage" items.]
There is a cracked mirror, a locker, a desk, and a bed in the Captain's Quarters. The cracked mirror, locker, desk, and bed are scenery. There is paperwork is on the desk. The paperwork is undescribed. There is a uniform and a communicator in the locker. The uniform and communicator are wearable.
 
The description of the uniform is "A boxy, ill-fitted jacket and trousers, a melancholy grey color. A pair of small insignias of your rank glinted from your collar, the only adornments that had been deemed acceptable in these lean times."

The description of the communicator is "An older headset-style communicator. Great for communicating with the rest of the fleet, but you need to be in the Command Center in order to use it."

["Off-stage" items.]
There is a small bronze key.
There is a picture. "A worn picture of your estranged son. The number 1083 is written on the back." [Just an easter egg for further revisions.]

The top drawer, the bottom drawer, the cabinet, and locker are openable closed containers. The top drawer, bottom drawer, and cabinet are parts of the desk.

The description of the desk is "Bueureacracy has no place in a warzone. Stacks of official-looking paperwork drown the desk. There is a top drawer, bottom drawer, and cabinet attached to the desk."

The cabinet is lockable and locked. The matching key is the small bronze key.
The locker is lockable and locked. The matching key is the small metal key. The small metal key is in the cabinet.

Understand "look through paperwork", "look at paperwork", "look through papers" as looking at paperwork. Looking at paperwork is an action applying to nothing.

PaperCounter is a number that varies. 

Instead of looking at paperwork:
	if paperCounter is 0:
		move small bronze key to player;
		increment PaperCounter;
		say "After rummaging through the top third of your back-logged paperwork, you find a small bronze key.";
	otherwise if paperCounter is 1:
		increment PaperCounter;
		say "You find nothing in the next third of your paperwork. You feel only slightly bad for tossing away so much work.";
	otherwise if paperCounter is 2:
		move picture to player;
		increment PaperCounter;
		say "After sorting through the bottom of the stack, you find an old, forgotten photo of you and your son, Lee Skadama.";
		remove paperwork from play

Understand "look in mirror" as looking at mirror. Looking at mirror is an action applying to nothing.

The description of the cracked mirror is "A cracked mirror. In it, you can see the war-torn, tired old Commander. [one of]You are the totally non-copyright infringing totally original intellectual property Commander Billiam Ramada of the Quarrelstar Galactic. The enemies of humanity are actually AI called Skylons, and no one has heard or seen them since the Great Skylon War forty years ago. They know how to make one hell of a reappearance.[or]You look like a Edward James Olmos impersonator.[or]You should get going, this is no time for vanity.[purely at random]"

The Officer's Corridor is east of the Captain's Quarters. The Command Center is east of the Officer's Corridor.

[Officer's Corridor]
The Officer's Corridor is a room. "A gray, metallic corridor. To the West lies the Captain's Quarters, and to the east lies the Command Center."

[Command Center]

Every turn:
	if the player has been in the Command Center for exactly 7 turns:
		say "Innumerable nuclear warheads crash into the Quarrelstar Galactic and the rest of the civilian fleet. Humanity has been eradicated. Sometimes heroism doesn't pay off.";
		end the story;
	otherwise if the player is in the Command Center:
		say "[one of]The Skylons are closing in on our fleet.[or]The Skylons are getting much too close for comfort, and I'm sure the civvies agree.[or]The Skylons are positioning to launch an attack.[or]The Skylons are preparing a devastating attack.[or]The Skylons have launched a barrage of nuclear warheads.[or]The missiles are closing in, FAST. Make a decision, and make it quick![or]***WARNING*** MASSIVE WARHEAD IMMINENT.[cycling]";

The Command Center is a room. "You enter the grand Command Center, an octagonal room with ampitheater-style command stations. In the middle lies your station, a great table-like console and many large screens, collectively enough to cover a football field. 

It's far too quiet for a time of crisis. In fact, there is no trace of any of your crew anywhere. Damage from the Skylon nuke must have blocked off all entrances to the Command Center except yours. At least, that's what you'd like to think."

The Command Console is in the Command Center. "A grand, table-look console. On it you see a Faster-Than-Light (FTL) Jump button, and a Plot FTL Jump button."
The Command Console is fixed in place. The Command Console is undescribed. The Jump button is part of the Command Console.

Using is an action applying to one thing. Understand "use [something]", "use the [something]" as using.

Instead of using the communicator:
	if location is not the Command Center:
		say "Out of range. Please move to the Command Center to reconnect.";
	otherwise if the player has been in the Command Center for exactly one turn:
		say "Greetings, Commander. Here is the current sitrep:[line break]We currently are in contact with 0/50 civilian ships. You are able to jump at any time, just please ensure that your fleet has enough time to catch up with you.";
	otherwise if the player has been in the Command Center for exactly two turns:
		say "Greetings, Commander. Here is the current sitrep:[line break]We currently are in contact with 10/50 civilian ships. You are able to jump at any time, just please ensure that your fleet has enough time to catch up with you.";
	otherwise if the player has been in the Command Center for exactly three turns:
		say "Greetings, Commander. Here is the current sitrep:[line break]We currently are in contact with 20/50 civilian ships. You are able to jump at any time, just please ensure that your fleet has enough time to catch up with you.";
	otherwise if the player has been in the Command Center for exactly four turns:
		say "Greetings, Commander. Here is the current sitrep:[line break]We currently are in contact with 30/50 civilian ships. You are able to jump at any time, just please ensure that your fleet has enough time to catch up with you.";
	otherwise if the player has been in the Command Center for exactly five turns:
		say "Greetings, Commander. Here is the current sitrep:[line break]We currently are in contact with 40/50 civilian ships. You are able to jump at any time, just please ensure that your fleet has enough time to catch up with you.";
	otherwise if the player has been in the Command Center for exactly six turns:
		say "Greetings, Commander. Here is the current sitrep:[line break]We currently are in contact with 50/50 civilian ships. You are able to jump at any time, just please ensure that your fleet has enough time to catch up with you."

Instead of pushing the Jump button:
	if the player has been in the Command Center for exactly one turn:
		end the story saying "You've managed to save you, your ship, and whomever or whatever else may be on the ship. The rest of humanity is doomed.";
	otherwise if the player has been in the Command Center for exactly two turns:
		end the story saying "Only a few civilian ships were able to follow you. The rest surely will meet their maker.";
	otherwise if the player has been in the Command Center for exactly three turns:
		end the story saying "You and some of the remaining humans made it out alive.";
	otherwise if the player has been in the Command Center for exactly four turns:
		end the story saying "Good work. You managed to save enough humans to have a decent shot at repopulation and survival of the human species.";
	otherwise if the player has been in the Command Center for exactly five turns:
		end the story saying "Excellent work, Commander. You minimized the loss from the surprise attack and made it out alive to see another day.";
	otherwise if the player has been in the Command Center for more than five turns:
		end the story saying "Fantastic job! You've won in every single way possible--but what of your crew? Find out in the next installment of Totally Not A Rip Off Of A Really Good Sci Fi Series That If You Haven't Seen And You're Like Into That Thing You Should Totally Watch! Buh bye!

		P.S.: Did you find the picture? ;D"
		
Release with an existing story file.