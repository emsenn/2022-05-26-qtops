#lang racket

(provide <>emslogs)

(define (<>emslogs t)
  (t 'add-log! "Sep 25. 9pm. This is my first log entry within emsOps' logging system. It's a plain string stored inside a thing's \"logs\" quality, for now: it will be important that logs remain syncronized against a persistent file so they can be added more easily going forward. This is really just the first steps with them, so that I can write logs about developing them, as I develop them.

But, I do plan on using Racket's documentation for documenting the actual declarations and stuff that are a part of emsOps, the same way I am with the public library. It's unlikely that these systems won't get too complicated for me to memorize their workings, so having clear documentation that shows what relates to what will be helpful. These logs aren't meant to replace that work-output, but give me a background chatter for myself (and potential auditors or other observers).

Tangential, but with the basics of qtOps down, I've kind of opened the flood-gates in terms of adding features, and thus complexity. A lot of it is natural, good, and unavoidable, but it means that it will be important to maintain some sort of notes on what I'm doing, so I don't end up with a thousand half-started features that basically do the same things. For example right now I've got a webserver that works well-enough, but certainly isn't implemented well: I'll have to be careful about not stacking too much on top of that one until I've got it stabilized a bit. I also have this logging system, which is... barely a straw shack, in terms of stability, and I've also started adding issues to a thing named \"issue bank\" though... literally all I can do is add issues to it, it doesn't give me any mechanism for working with them yet.

So in truth a lot these things are just, heavily notated text files that happen to be valid and useless Racket code. Which is fine - as long as I make sure I keep a good bearing on what I'm working on.

To keep that bearing, let me write here explicitly that there are a few emergent domains of qtOps/emsOps development: the webserver; the handling of textual things like documents, logs, and issues; the development of Teraum, a fantasy RPG MUD; and the tracking of my land stewardship.")
  (t 'add-log! "Sep 26. 11am. Our weather has been atypical, though that's typical with the dissolution of climate. It's had me feeling acute nervous pain, and so I haven't been able to get out into the garden. I'm feeling able-enough to get out there today, but there's a fine mist that's dissuading me. Maybe after breakfast I'll feel more inclined to tolerate it. Breakfast'll be fried eggs, for lack of energy to do something more complex... well. Maybe I should surprise Esther with fried potatoes.")
  (t 'add-log! "Sep 27. 9am. I did some work on the compost this morning and tuckered myself out. For the rest of the evening I plan on tinkering with my MUD: mostly, I plan on adding content from my old D&D campaign notes.

I had a rather unpleasant conversation with a white person in New Zealand who basically said they're privileged enough to ignore things outside their country and culture, and it didn't seem like they were able to recognize the abject racism and supremacy of that. So that's bummed me out a little bit; gonna try and focus on my MUD stuff.

But, it's hard to focus on that because well, techfolk are the folk who are most interested in the MUD, and... I dunno, I don't like feeling like I'm just producing things that'll somehow be used to entrench the kyriarchy.")
  (t 'add-log! "September 28th, 10am. The birds are chirping outside, the sun is coming out in waves, and I've just mapped out, roughly, how the town of Bellybrush will be laid out in the Teraum MUD.

I also think I have the beginnings of gameplay planned for that. Players will arrive at the gates of Ack as refugees, displaced from their hometown in the Central Plains after it was burnt by anti-Union rebels. They'll have a pool of energy points that most actions will drain from, that'll recharge slowly over time. Instead of levels and experience points, players will acquire new capabilities, which'll be unlocked by other things doing stuff, like, Iunno, an NPC teaching them something, or them watching how a bird does something.

The plan is that they slowly acquire capabilities within the Ward of the city that they're in, until they're able to explore more and more of the city, eventually letting them out into the GAME itself. Obviously some capabilities won't be relevant in all situations: working in a field in South Arathel doesn't require the same capabilities as hanging posters around the Dock Ward.

Eventually players might be able to get outside the GAME, where they will learn that the majority of capabilities they have been developing are only useful within Unionist society: out here, the money they've accrued isn't too useful, and their skills, except the most basic ones, aren't useful either, and those that are, are woefully underdeveloped.

Get it? It's a metaphor for people trying to decolonize. By putting a need to question things and develop new skills as the end-game, I hopefully will encourage players to learn how to apply their \"colonial\" acculturation to a wider world.

Then, once those folk are capable of handling the world outside of the GAME, they'll come back within the GAME and realize that that world is actually full of many possibilities, they simply weren't capable of seeing them yet.")
  (t 'add-log! "Sep 30th, 2020. I imported in some of the town of Bellybrush into Teraum MUD.")
  (t 'add-log! "Oct 1, 2020. Yesterday I added a harvestable patch of flowers to the Walk, in Bellybrush. Today I had to repair a broken shower, which took all morning and now I'm exhausted. An online friend, Restioson on the Fediverse, just had a nice conversation with me that got me to thinking about Indigenous peoples' knowledge of fossisl, which I hadn't ever thought about before! Today - I mean, it's already 5pm - but today my plan is to probably just continue to develop sections of the world of Teraum. I'm increasingly confident that my base is good enough to build, at least, the sort of game I want with Teraum. So, I can pretty confidently create more content for the world. Which... is easier said than done: writing a game world requires a tremendous amount of specific creative writing. So, if I don't have the energy for /that/ sort of creative writing, maybe I'll develop the documentation further.")
  t)
