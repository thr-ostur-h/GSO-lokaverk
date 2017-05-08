CREATE TABLE Flytjandi
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nafn VARCHAR(55),
    faedingardagur DATE,
    danardagur DATE,
    thjoderni VARCHAR(55),
    hljodfaeri VARCHAR(55),
    flokkur_id INT ,
	FOREIGN KEY (tegund_id) REFERENCES Tegund(ID)
);
CREATE TABLE Diskur
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nafn VARCHAR(55),
    utgafudagur DATE,
    solur INT,
    lengd INT,
    fjoldi_laga INT,
    verdlaun VARCHAR(255),
    flytjandi VARCHAR(55),
    utgefandi_id INT,
    FOREIGN KEY (flytjandi) REFERENCES Flytjandi(ID),
    FOREIGN KEY (utgefandi_id) REFERENCES Utgefandi(ID)
);
CREATE TABLE Lag
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nafn VARCHAR(55),
    lengd INT,
    utgafudagur DATE,
    texti VARCHAR (1000),
    verdlaun VARCHAR(255),
    hofundur_id INT,
    diskur_id INT,
    tegund INT,
    flytjandi_id INT,
    FOREIGN KEY (hofundur_id) REFERENCES Hofundur(ID),
    FOREIGN KEY (diskur_id) REFERENCES Diskur(ID),
    FOREIGN KEY (tegund) REFERENCES Tegund(ID),
    FOREIGN KEY (flytjandi_id) REFERENCES Flytjandi(ID)
);
CREATE TABLE Tegund
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nafn_tegund VARCHAR(55)
);
CREATE TABLE Flokkur
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nafn_flokkur VARCHAR(55)
);
CREATE TABLE Utgefandi
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nafn VARCHAR(55)
);
CREATE TABLE Hofundur
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nafn VARCHAR(55),
    faedingarar DATE,
    danardagur DATE,
    thjoderni VARCHAR(55)
);

INSERT INTO Hofundur(nafn,faedingarar,danardagur,thjoderni)
VALUES
("Damon Albarn","1968-03-23",NULL,"England"),
("Odetta Holmes","1930-12-31","2008-12-02","Alabama"),
("Teren Delvon Jones","1972-8-12",NULL,"California")

INSERT INTO Utgefandi(nafn)
VALUES
("Daniel Nakamura")
("Tom Girling")
("Jason Cox")

INSERT INTO Diskur(nafn,utgafudagur,solur,lengd,fjoldi_laga,verdlaun,flytjandi_id,utgefandi_id)
VALUES
("Plastic Beach","2010-03-03",1400000,57,16,"1 Grammy. 3 EU Music Awards. 2 Video Music Awards. 1 NME Award. 3 Q Awards. 1 GQ Awards",1,1),
("Demon Days","2005-05-11",8000000,51,15,"1 Grammy. 3 EU Music Awards. 2 Video Music Awards. 1 NME Award. 3 Q Awards. 1 GQ Awards",1,3),
("The Fall","2010-12-25",170000,43,15,"1 Grammy. 3 EU Music Awards. 2 Video Music Awards. 1 NME Award. 3 Q Awards. 1 GQ Awards",1,1),
("Gorillaz","2001-03-26",7000000,57,15,"1 Grammy. 3 EU Music Awards. 2 Video Music Awards. 1 NME Award. 3 Q Awards. 1 GQ Awards",1,2),
("G Sides","2001-12-12",2400000,36,12,"1 Grammy. 3 EU Music Awards. 2 Video Music Awards. 1 NME Award. 3 Q Awards. 1 GQ Awards",1,3),
("D-Sides","2007-11-19",1400000,124,22,"1 Grammy. 3 EU Music Awards. 2 Video Music Awards. 1 NME Award. 3 Q Awards. 1 GQ Awards",1,1),
("The Singles Collection 2001–2011","2011-11-28",3500000,56,15,"1 Grammy. 3 EU Music Awards. 2 Video Music Awards. 1 NME Award. 3 Q Awards. 1 GQ Awards",1,2)

INSERT INTO Flytjandi(nafn,faedingardagur,danardagur,thjoderni,hljodfaeri,tegund_id)
VALUES
("Damon Albarn","1968-03-23",NULL,"England","Vocal",3),
("Mike Smith","1970-06-14",NULL,"England","saxaphone",3),
("Gabriel Wallace","1978-10-05",NULL,"England","Drums",3),
("Jeff Woottom","1973-08-23",NULL,"England","Lead guitar",3),
("Seye Adelekan","1980-04-15",NULL,"England","Bass",3)

INSERT INTO Tegund(nafn_tegund)
VALUES
('Alternative rock'),
('pop'),
('hip hop'),
('trip hop'),
('alternative rock'),
('funk')

INSERT INTO Flokkur(nafn_flokkur)
Values
('solo'),
('duo'),
('band'),
('quartet')

INSERT INTO Lag(nafn,lengd,utgafudagur,verdlaun,hofundur_id,diskur_id,tegund,flytjandi_id,texti)
VALUES
('Re-Hash',3,"2002-10-01",NULL,1,4,1,1,"Its a sweet sensation over the dub
Oh, what a situation that dont wanna stop
Its the drugstore soul boy over the dub
With the sweetest inspiration, we dont wanna stop
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its yeah
Its a sweet sensation over the dub
Oh, what a situation that dont wanna stop
Its the drugstore soul boy over the dub
With the sweetest inspiration, we dont wanna stop
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its yeah
Lalalalalalalaaaaalalalalalaaaa
Lalalalalalalaaaaalalalalalaaaa
Lalalalalalalaaaaalalalalalaaaa
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its the money as dub
Its yeah"),
('5/4',3,"2002-10-01",NULL,1,4,1,1,"Magic for me
Magic make no sound
It good for me
It good for me underground
Magic on me
Really got me down
Invade the city
It make my heart beat no sound
Beat no sound
Beat no sound (ooh ooh ooh ooh)
Beat no sound
Beat no sound
Beat no sound (ooh ooh ooh ooh)
And let me tell myself
Tell on
She turned my dad on
She turned my dad on
Dad on
Dad on
Magic for me
Magic get me through
We pledge it money
People seem to walk through you
Magics funny
Magic get me through
All good for me
When people seem to always walk through you
Walk through you
Walk through you (ooh ooh ooh ooh)
Walk through you
Walk through you
Walk through you (ooh ooh ooh ooh)
Walk through you
Walk through you
Walk through you
And let me tell myself
Tell on
She turned my dad on
She turned my dad on
Dad on
Dad on
She made me kill myself
Come on
Come on
She turned my dad on
Come on
She turned my dad on
Come on
She turned my dad on
She turned my dad on
Dad on
Dad on"),
('Tommorow comes today',3,"2002-10-01",NULL,1,4,1,1,"Everybodys here with me 
(We) got no camera to see 
Dont think Im all in this world 
The camera wont let me roll
And the verdict doesnt love our soul 
The digital wont let me go
Yeah yeah yeah 
Ill pay (yeah yeah yeah) 
When tomorrow 
Tomorrow comes today
Stereo I want it on 
Its taken me far too long 
Dont think Im all in this world 
I dont think Ill be here too long 
I dont think Ill be here too long 
I dont think Ill be here too long
Yeah yeah yeah 
Ill pay 
When tomorrow 
Tomorrow comes today"),
('New Genius',4,"2002-10-01",NULL,1,4,1,1,"Dream of my world
I live on my world
Going off my head, down to, somewhere
Im going on a dancehall tune
Im in a pressure today
I blew a bad man away, today
Higher ground, had to be told
I blew a man away

Brother sister too
Do what you must do
Dont trust people you meet
They may promise you
That the river aint deep

Dream of a street
People passing through me, yes they do
Want my friend
Want my heart mend
Im going to bring it all back to you

Brother sister too
Do what you must do
Dont trust people you meet
They may promise you
That the river aint deep"),
("Clint Eastwood",6,"2001-03-05",NULL,1,4,1,1,"I ain't happy, I'm feeling glad
I got sunshine in a bag
I'm useless but not for long
The future is coming on
I ain't happy, I'm feeling glad
I got sunshine in a bag
I'm useless but not for long
The future is coming on
It's coming on
It's coming on
It's coming on

Yeah, ha-ha
Finally, someone let me out of my cage
Now time for me is nothing 'cause I'm counting no age
Now I couldn't be there
Now you shouldn't be scared
I'm good at repairs
And I'm under each snare
Intangible
Bet you didn't think so I command you to
Panoramic view
Look, I'll make it all manageable
Pick and choose
Sit and lose
All you different crews
Chicks and dudes
Who you think is really kickin' tunes?
Picture you gettin' down in a picture tube
Like you lit the fuse
You think it's fictional?
Mystical? Maybe
Spiritual
Hero who appears in you to clear your view when you're too crazy
Lifeless
To those the definition for what life is
Priceless
To you because I put you on the hype shit
You like it?
Gun smokin' righteous with one toke
You're psychic among those
Possess you with one go

I ain't happy, I'm feeling glad
I got sunshine in a bag
I'm useless but not for long
The future is coming on
I ain't happy, I'm feeling glad
I got sunshine in a bag
I'm useless but not for long
The future (that's right) is coming on
It's coming on
It's coming on
It's coming on
It's coming on

The essence, the basics
Without, did you make it?
Allow me to make this
Child-like in nature
Rhythm
You have it or you don't, that's a fallacy
I'm in them
Every sprouting tree
Every child of peace
Every cloud and sea
You see with your eyes
I see destruction and demise (that's right)
Corruption in disguise
From this fuckin' enterprise
Now I'm sucked into your lies
Through Russel, not his muscles but percussion he provides
For me as a guide
Y'all can see me now 'cause you don't see with your eye
You perceive with your mind
That's the inner
So I'ma stick around with Russ' and be a mentor
Bust a few rhymes so motherfuckers remember where the thought is
I brought all this
So you can survive when law is lawless (right here)
Feelings, sensations that you thought was dead
No squealing, remember that it's all in your head

I ain't happy, I'm feeling glad
I got sunshine in a bag
I'm useless but not for long
The future is coming on
I ain't happy, I'm feeling glad
I got sunshine in a bag
I'm useless but not for long
My future is coming on
It's coming on
It's coming on
It's coming on
It's coming on
My future is coming on
It's coming on
It's coming on
It's coming on
It's coming on
My future is coming on
It's coming on
It's coming on
It's coming on
It's coming on
My future is coming on
It's coming on
It's coming on
My future is coming on
It's coming on
It's coming on
My future is coming on
It's coming on
It's coming on
My future"),
("Man Re'search",4,"2001-04-29",NULL,1,4,1,1,"This is the breakfast club
Bring me coffee in the know 
See the taffu on the send 
I got sunshine, I got you, oh
Theres nothing, nothing life can do oh oh oh
Yeah yeah, ya ya ya ya ya ya ya ya ya ya ya 
Yeah yeah, ya ya ya ya ya ya ya ya ya ya ya 
Yeah yeah, ya ya ya ya ya ya ya ya ya ya ya 
Yeah yeah, ya ya ya ya ya ya ya ya ya ya ya
Bring me junkie in the love 
He said nothing in the tongue 
To kill the model from my door, oh yeah 
To kill the model from my door
Yeah yeah, ya ya ya ya ya ya ya ya ya ya ya 
Yeah yeah, ya ya ya ya ya ya ya ya ya ya ya 
Yeah yeah, ya ya ya ya ya ya ya ya ya ya ya 
Yeah yeah, ya ya ya ya ya ya ya ya ya ya ya
To kill the model from my door, oh yeah
To kill the model from my door 
From my door 
From my door
Yeah yeah yeah yeah, yeah yeah yeah
Yeah yeah yeah yeah, yeah yeah yeah
Yeah yeah yeah yeah, yeah yeah yeah
Yeah yeah yeah yeah, yeah yeah yeah
Yeah yeah yeah yeah, yeah yeah yeah
Yeah yeah yeah yeah, yeah yeah yeah
Yeah yeah yeah yeah, yeah yeah yeah"),
("Punk",2,"2001-06-15",NULL,1,4,1,1,"Bound to myself and goes home
Making of herself a number
Always tell her before I start up
Do now what I tell you shut up
Bound to the chair
Do me what you can
Bound to a door
Get down on the floor
Find out how well do with the loop
Til everybody says shut up
Yeah
Telling to Miguel I love her
Try and see what happens get up
Everybody says I should up
Last time I told them right off
Playing with the sun
I knew what I was doing
Did it to myself
Did it to myself
I let horror to myself of doing
Cause everybody tell me shut up"),
("Sound Check",5,"2001-05-13",NULL,1,4,1,1,"Gravity on me never let me down gently
Gravity with me never let me go no no
Gravity
I dont pull me down
I dont pull me down on me
I dont pull me down
I dont pull me down on you
I dont pull me down
I dont pull me down on me
I dont pull me down
I dont pull me down on you
Gravity on me never let me down gently
Gravity with me never let me go no no
Gravity
I dont pull me down
I dont pull me down on me
I dont pull me down
I dont pull me down on you
I dont pull me down
I dont pull me down on me
I dont pull me down
I dont pull me down on you"),
("Double Bass",5,"2001-03-25",NULL,1,4,1,1,"All of which makes me anxious
At times, unbearably so"),
("Rock the House",4,"2001-10-22",NULL,1,4,1,1,"I know you like that
You wanna try that
Its like a flashback
So shake your ass crack
I got the balls to
Rock the salsa
Funk the blues-a
Any groove to
Make you move cause
Taking you to
Another landscape
Its my mandate
Im highly animated even though Im decomposing
So if your feet is frozen Ima die to see you ropin

And when the MC rhyme and the DJ spin
I want yall to just get down
Now when the MC rhymin and the DJ cuttin
I want yall to just get down
And when the MC rhyme and the DJ spin
I want yall to just get down
Now when the MC rhymin and the DJ cuttin
I want yall to just get down

Tap your toes and clap your hands
(How many people ready to rock the house?)
Come on trace the globe and shake your pants
(How many people ready to rock the house?)
Just twist your hip and do the dip
(How many people ready to rock the house?)
Come on shake and bake do whatever it takes
(How many people ready to rock the house?)

Gravitational pull
I have you making a fool
Out of yourself on the dance floor
Doing back spins running man and more
Party down with Vigga and Candor
Coming to the jam
Or look like a landlubber
And do the aqua boogie
Win lots of goodies maybe
Pop a Gucci wallet turntables is talking to me
Its awfully groovy
Seeing all the treasure and the booty

And when the MC rhyme and the DJ spin
I want yall to just get down
Now when the MC rhymin and the DJ cuttin
I want yall to just get down
And when the MC rhyme and the DJ spin
I want yall to just get down
Now when the MC rhymin and the DJ cuttin
I want yall to just get down

Tap your toes and clap your hands
(How many people ready to rock the house?)
Come on trace the globe and shake your pants
(How many people ready to rock the house?)
Just twist your hip and do the dip
(How many people ready to rock the house?)
Come on shake and bake do whatever it takes
(How many people ready to rock the house?)

I wanna get down lower than Atlantis
Going toe to toe with an enchantress
Get funkier than funkadelic wearin Pampers
While you eggheads is on the wall preparin answers
Sharing transcripts while we over here
Dipping and dancin
Rhythm romancin
Wallflowers
Giving no action no
All hours we chillin and max the flow
Relaxing
Opposites attracting
Ima toss my hat in
Floss when the track spin
Like Im on a crack binge
Jigging and wiggling
Freakin booties speakin to the cuties so belligerent
No religion just bump the feed on
Youll feel reborn
Negativity we just dead it like decoy
Better lift your feet and just measure the beat on
The pulse when it respawns

Tap your toes and clap your hands
(How many people ready to rock the house?)
Come on trace the globe and shake your pants
(How many people ready to rock the house?)
Just twist your hip and do the dip
(How many people ready to rock the house?)
Come on shake and bake do whatever it takes
(How many people ready to rock the house?)"),
("19-2000",4,"2001-06-25",NULL,1,4,1,1,"Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
The world is spinning too fast
And Im buying Nike shoes
To keep myself tethered
To the days I tried to lose
My mamma said to slow down
You must make your own shoes
And stop dancing to the music
Of Gorillaz in a happy mood
Keepin my groove on
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Here you go
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Theres a monkey in the jungle
Watching a vapor trail
Caught up in the conflict
Between his brain and his tail
And if times elimination
Then weve got nothing to lose
Please repeat the message
Its the music that we choose
Keepin my groove on
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Its the music that we choose
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
They do the bump
They do the bump
They do the bump
They do the bump
They do the bump
They do the bump
They do the bump
They do the bump
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine
Get the cool
Get the cool shoeshine"),
("Latin Simone",3,"2001-11-09",NULL,1,4,1,1,"Dejalo si quieres continuar (hermano)
Sal ilumina tu vida 
Todo el cielo aplatandote
Dime que haracs (intentalo)
Ilumina ese amor
Antes que se vaya
Algo siempre te entristese
Cuando todo va bien 
Que pasa contigo?
Algo siemre te entristese
Cuando todo va bien
Que pasa contigo?
Que pasa contigo?
Dejalo si quieres continuar
No ocultes tu alma al sol
Tienes una vida preciosa
De que sirve si solo 
Mueres suavemente
Que pasa?
Que pasa contigo?
Que pasa contigo?
(mi hermano)
QQue pasa contigo?
Escucha a tu propia voz
Salva tu amor
Que pasa contigo?
Antes que se vaya
Si todo va bien
Que pasa contigo?
Que pasa contigo?
Mirate a ti mismo
Enfrentalo
Que pasa contigo?
Mi hermano 
Ven animate
Que pasa contigo?
Get up
If you wanna survive
Get oh so alive
In your life everything
Falling out the sky on top of you
Now what you do
Set yourself up now
Its the love of your life
Shead a lead on me
All I know before its gone
I always feel its getting me down
When nothings wrong
Whats the matter with me?
Whats the matter with me, me, me
Give up
If you wanna survive
Pick the sun back up
You got to get on the song, lowly
Whats the point
Its funny till your left to kill yourself
In this town
So whats the matter with me?
Whats the matter with me
Whats the matter with me
Whats the matter with me, me, me"),
("Starshine",4,"2001-01-15",NULL,1,4,1,1,"Starshine never gonna find me
Starshine, they aint gonna find me
Starshine, never gonna find me
Starshine, never gonna find me
Stand easy with myself, with myself
Jumping up, Im low, low, low, low
Show me down
Starshine never gonna find me
Starshine, they aint gonna find me
Starshine never gonna find me
Starshine, never gonna find me"),
("Slow Country",4,"2001-04-15",NULL,1,4,1,1,"City life
Calling me all the time
Me and my soul
Geared to attack
Never get another chance
So what you doing
Gotta get money
Keeping me real
Cant stand your loneliness
Cant stand loneliness
Cant stand your loneliness
Cant stand loneliness
Shit night life
Been trying not to laugh though
You wont get money
From doing what you loving
Im moving out of city
Victor of a second chance
Get a lot of problems
We kicked a lot of them
Cant stand your loneliness
Cant stand loneliness
Cant stand your loneliness
Cant stand loneliness
Cant stand your loneliness
Cant stand loneliness
Cant stand your loneliness
Cant stand your loneliness
Cant stand your loneliness
Cant stand your loneliness
Cant stand your loneliness
Cant stand your loneliness"),
("M1 A1",4,"2001-03-23",NULL,1,4,1,1,"Hello, hello, is anyone there?
Hello, hello, is anyone there?
Hello, is anyone there?
Hello, is anyone there?
Hello, is anyone there?
Hello, hello, is anyone there?
Hello, hello, is anyone there?
Hello, is anyone there?
Hello, is anyone there?
Hello, is anyone there?
M one A one
At a thousand miles an hour
Gorillaz got the base drum
Gorillaz say I want some, some
La la la la la la la hey
La la la la la la la hey
La la la la la la la hey
La la la la la la la hey
M one A one
A thousand miles an hour
Gorillaz with the beat drum
Say I want some
They go M one A one
A thousand miles an hour
Gorillaz with the base drum
Keep that sound
Can you hear me
I said M one A one (la la la la la la la hey)
La la la la la la la hey
La la la la la la la hey
La la la la la la la hey"),
("DARE",4,"2005-08-29",NULL,1,2,1,1,"It's coming up, it's coming up, it's coming up, it's coming up, it's coming up, it's coming up; it's dare

You've got to press it on you, you just, think it
That's what you do, baby, hold it down, there
Jump with them all and move it, jump back and forth
And feel like you were there yourself, work it out

Never did no harm, never did no harm... it's dare
It's coming up, it's coming up... it's dare

You've got to press it on you, you just, think it
That's what you do, baby, hold it down, there
Jump with the moon, and move it, jump back and forth
And feel like you were there yourself, work it out

Never did no harm, never did no harm... it's dare
It's coming up, it's coming up... it's dare

You've got to press it on you, you just, think it
That's what you do, baby, hold it down, there
Jump with the moon, and move it, jump back and forth
And feel like you were there yourself, work it out"),
("Feel Good Inc.",4,"2005-05-09",NULL,1,2,1,1,"Hahahahahahahahahahahahaha, feels good
Shake it, shake it, shake it, feels good
Shake it, shake it, shake it, feels good
Shake it, shake it, shake it, feels good
Shake it, shake it, shake it, feels good
Shake it, shake it, shake it, feels good
Shake it, shake it, shake it, feels good
Shake it, (shake) shake it (shake) — shake it, (shake) feels good (shake)
Shake it, (shake) shake it (shake) — shake it, (shake) feels good (shake)

City's breaking down on a camel's back.
They just have to go 'cause they don't know wack
So all you fill the streets it's appealing to see
You won't get out the county, 'cause you're bad and free
You've got a new horizon it's ephemeral style.
A melancholy town where we never smile.
And all I wanna hear is the message beep.
My dreams, they've gotta kiss me 'cause I don't get sleep, no

Windmill, windmill for the land.
Turn forever hand in hand
Take it all in on your stride
It is sinking, falling down
Love forever, love is free
Let's turn forever, you and me
Windmill, windmill for the land
Is everybody in?

Laughing gas these hazmats, fast cats,
Lining them up like ass cracks,
Ladies, ponies at the track
It's my chocolate attack.
Shit, I'm stepping in the heart of this here
Care Bear rappin' it harder this year
Watch me as I gravitate
Hahahahahahaa.

Yo, we gonna go ghost town,
This motown,
With your sound
You're in the blink
Gonna bite the dust
Can't fight with us
With your sound
You kill the INC.
So don't stop, get it, get it
Until you jet ahead.
Yo, watch the way I navigate
Hahahahahhaa

Shake it, shake it, shake it, feels good [4x]

Windmill, windmill for the land.
Turn forever hand in hand
Take it all in on your stride
It is sinking, falling down
Love forever, love is free
Let's turn forever, you and me
Windmill, windmill for the land
Is everybody in?

Don't stop, shit it, get it
We are your captains in it
Steady,
Watch me navigate,
Ahahahahahhaa.
Don't stop, shit it, get it
We are your captains in it
Steady,
Watch me navigate
Ahahahahahhaa.

Feel good, shake it shake it
Feel good, shake it shake it
Feel good, shake it shake it
Feel good...shake it shake it"),
("Dirty Harry",4,"2005-11-21",NULL,1,2,1,1,"(I need a gun to keep myself among)
(The poor people are burning in the sun)
But they ain't got a chance, they ain't got a chance
I need a gun cause all I do is dance
Cause all I do is dance
I need a gun to keep myself among
The poor people are burning in the sun
But they ain't got a chance, they ain't got a chance
I need a gun cause all I do is dance
Cause all I do is dance

In my backpack, I got my act right
In case you act quite difficult
And your result weaken with anger and discontent
Some are seeking and in search of like Nimoy
I'm a peace-loving decoy, ready for retaliation
I change your whole location to a pine box six-under
Impulsive don't ask why or wonder
Orders given to me is:
Strike and I'm thunder with lightning-fast reflexes on constant alert
From the constant hurt that seems limitless with no drop in pressure
It seeming like everybody's out to take ya' 'til they see you break
You can't conceal the hate that consumes you
I'm the reason why you fill up your Isuzu
Chill with your old lady at the tilt, I got a 90 day extension
And I'm filled with guilt from things I done and seen
Your water's from a bottle, mine's from a canteen
At night I hear the shots
Ring so I'm a light sleeper
The cost of life, it seem to get cheaper
Out in the desert with my street sweeper
The war is over so said the speaker
With the flight suit on
Maybe to him I'm just a pawn
So he can advance
Remember when I used to dance
Dang, all I wanna do is dance

(Dance)
(Dance)
(Dance)
I need a gun
To keep myself from harm"),
("Stylo",5,"2010-01-26",NULL,1,1,1,1,"Love, electricity, shockwave central
Power on the motherboard, yes!
Push up, overload, legendary heavy glow
Sunshine, thunder roll, keep this on
Yes, the lantern burn, burn that easy
And broadcast, so raw and neatly
Thunder roll, sunshine, work it out

Overload, overload, overload
Comin' up to the
Overload, overload, overload
Comin' up to the
Overload, overload, overload
Comin' up to the
Overload, overload, overload
Comin' up to the

Oh stylo (juice)
Go forth, blossom in your soul
When you know your heart is light
Electric is the love
When the mako flies (a giant fish)
Up from the bottom in your eyes
Then I know the twilight skies
Are not so broken hearted
 
If this love is electric
It'll be flowing on the streets
Night after night..just to get through the week
Sometimes it's hard right now

Sing yourself (juice) out of depression, rise above
Always searching if I know your heart
Electric is the love..

There's only one way
Let it pray a little while longer
It's got a way of passing through man and woman
In another world, in another world and in the universe
Right now, here's what we got to do

If this love is electric
It'll be flowing on the streets
Night after night, just to get through the week
Sometimes it's hard
That's what I'm talkin' 'bout

Love, electricity, shockwave central
Power on the motherboard, yes!
Push up, overload, legendary heavy glow
Sunshine, thunder roll, keep this on
Yes, the lantern burn, burn that easy
And broadcast, so raw and neatly
Thunder roll, sunshine, work it out

Right now!"),
("On Melancholy Hill",4,"2010-06-14",NULL,1,1,1,1,"Up on melancholy hill
There's a plastic tree
Are you here with me?
Just looking out on the day of another dream

Well, you can't get what you want but you can get me
So let's set out to sea, love
'Cause you are my medicine
When you're close to me
When you're close to me

So call in the submarine
'Round the world we'll go
Does anybody know her?
If we're looking out on the day of another dream

If you can't get what you want then you come with me

Up on melancholy hill sits a manatee
Just looking out for the day
When you're close to me
When you're close to me

When you're close to me")