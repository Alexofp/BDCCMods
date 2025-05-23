RSRC                 	   Resource                                                                       resource_local_to_scene    resource_name    script    version    id    data       Script )   res://Game/Datapacks/DatapackResource.gd    
   local://1       	   Resource                                   bdccdd                name    -   Broken Dreams Correctional Center: Dark Days       author       Sumobear50       version       1.0       description      Ever wonder what it'd be like if its world took an entirely different direction? If it became a truly dark and dystopian world where death is a very real possibility?

Well, you don't have to anymore. I hope you're ready, as this is going to be one brutal story.       characters              skins              scenes             bdccdarkdaysintro             name       GavinMeeting       devcomment    �   This is the meeting before the intro for Broken Dreams Correctional Center: Dark Days, something I thought of while I was playing through the base game.       states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    t  You wake up inside your cell, your eyes hung heavy as the exhaustion of last night's activity still weighs you down.

You sit up and do a big stretch, the muscles in your back popping a bit as you let out a big yawn.

You move to get out of bed, only to find a man standing inside your cell door, glowing cyan eyes staring at you. You recognize this man from your dreams.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Stand up    	   descSlot          	   rawValue    %   Get off the bed and stare them down.    
   stateSlot          	   rawValue    	   greeting       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value             isVar              varName           
   npcAction             value       stand       isVar              varName           	   greeting             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =gavin: Good morning, {pc.name}. Sorry to disturb your sleep like this, but I have a matter of importance I need to discuss with you.

You get a good look at him. This fox was wearing a very official looking uniform as he stood before you, hands behind his back like an officer.

=pc: Why should I trust you? You keep invading my dreams and fighting me, all to prepare me for something you've never elaborated on.

The fox's ears twitch and he frowns.

=gavin: I have my reasons, and I will explain it all soon-

=pc: No, I want you to explain to me what's going on.

The fox growls slightly and turns his head away... before meeting your eyes.

=gavin: Fine. Ask any question you have about me, and I'll answer it. [i]But.[/i] I will not answer any questions in regards of what I need you for.

=pc: Wait, really?

His brows furrow and his gaze gets more intense while you scramble for some questions.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   About him    	   descSlot          	   rawValue       Ask who he is.    
   stateSlot          	   rawValue    	   abouthim       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   The Void    	   descSlot          	   rawValue    1   Ask him about The Void, the land in your dreams.    
   stateSlot          	   rawValue       thevoid       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Preferences?    	   descSlot          	   rawValue       Ask him what gets him hard.    
   stateSlot          	   rawValue       preferences       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       No more questions.    
   stateSlot          	   rawValue    
   continue1       checksSlot             checks           	   codeSlot             blocks                   id       FlagGlobSetBool       data             slots             var          	   rawValue       bdccdd:meeting1       value          	   rawValue          	   abouthim             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue       =pc: Who are you, really?

The fox's ears perk slightly, and he shifts his stance a bit.

=gavin: My name is Gavin Pearson, I am one of AlphaCorp's, er... hm. How can I say this without coming off as a mental ward patient...?

He pauses, pressing a finger to his chin before looking back at you.

=gavin: AlphaCorp... manufactured me, in a sense. I used to be a normal guy, but eventually life hit me with a curveball and... well I got arrested and sent here. A long, long time ago. To keep a very long and dull story short, due to good behavior I was given a way out.

He grimaces slightly as he turns to face the wall, contemplating something.

=gavin: I was told I could sell my soul to AlphaCorp in exchange for freedom. However, the freedom came at the cost of working with AlphaCorp until the day I die. Back then, I would have given absolutely everything to be rid of the collar around my neck. So, quite foolishly might I add, I took the deal with AlphaCorp and had my collar, as well as my metaphorical chains, removed before being tossed into a fresh uniform.

He turns back to you. A look of remorse, a look of regret, fills his eyes.

=gavin: This resulted in a long list of things happening that, in all honesty, is best left for a better time. I hope you can understand.

...

You nod reluctantly.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   The Void    	   descSlot          	   rawValue    1   Ask him about The Void, the land in your dreams.    
   stateSlot          	   rawValue       thevoid       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Preferences?    	   descSlot          	   rawValue       Ask him what gets him hard.    
   stateSlot          	   rawValue       preferences       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       No more questions.    
   stateSlot          	   rawValue    
   continue1       checksSlot             checks           	   codeSlot             blocks              thevoid             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: What's with that place you keep bringing me to in my dreams? The Void you called it?

His ears perk up and he closes his eyes. His tail wags slightly and you see a brief smile forms on his face.

=gavin: Ah, yes. The Void. A space of absolute nothing. There really isn't much to say about it in all honesty. It's just a place I visit when I can in order to clear my thoughts, and to think things through. Oh, as well as meditate.

...

=pc: That's it?

He seems taken aback, seeming a bit offended.

=gavin: You mean to tell me you wouldn't love an infinite, empty space? One that you can use to clear your head? Whenever you want?

You think on it a bit more and realise that you haven't had many spaces like that in here. You reluctantly shrug your shoulders and nod.

=pc: I suppose you have a point.

The fox smiles and his tail flicks. It seems you pleased him.

=pc: How do you get to and from there?

=gavin: Story for another time. Sorry.

You frown, deciding to let it go.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   About him    	   descSlot          	   rawValue       Ask who he is.    
   stateSlot          	   rawValue    	   abouthim       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Preferences?    	   descSlot          	   rawValue       Ask him what gets him hard.    
   stateSlot          	   rawValue       preferences       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       No more questions.    
   stateSlot          	   rawValue    
   continue1       checksSlot             checks           	   codeSlot             blocks              preferences             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: What makes your dick hard?

The fox looks at you, jaw wide open for several moments.

=gavin: I beg your fucking pardon?

He asks in the most bewildered voice you've ever heard. You can't help but laugh.

=pc: Sorry, too blunt? I mean what are you into?

=gavin: You don't fucking say... In either case, I'm not sure I want to answer that.

You smirk.

=pc: You said you'll answer [i]any[/i] question unless it was about what you needed me for.

The fox frowns deeply before letting out a sigh.

=gavin: I'm a mostly vanilla type of guy. I roll both ways and I don't care if you have a cock, cunt, or both. Happy?

You smile.

=pc: Good enough.

=gavin: You're an ass.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   About him    	   descSlot          	   rawValue       Ask who he is.    
   stateSlot          	   rawValue    	   abouthim       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   The Void    	   descSlot          	   rawValue    1   Ask him about The Void, the land in your dreams.    
   stateSlot          	   rawValue       thevoid       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       No more questions.    
   stateSlot          	   rawValue    
   continue1       checksSlot             checks           	   codeSlot             blocks           
   continue1             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You press a finger to your chin as you can't think of any more questions to ask.

=pc: That's it for now.

Gavin nods, straightening his stance.

=gavin: Right then. Whenever you're ready to talk, come find me by the waterfall in the green rooms. I'll be waiting for you there.

=pc: But-

Before you can say anything else, you watch as space around him seems to distort before he suddenly disappears, as if he teleported. You're left in a stunned silence for several moments before snapping out of it. By the waterfall, he said...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       Time to go.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       FlagSetBool       data             slots             var          	   rawValue    	   meeting1       value          	   rawValue             vars              chars             gavin             realid       gavin       start             variant           	   triggers                   triggerType       WakeUpInCell       triggerSettings              executeType           	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue    	   meeting1    	   thenSlot             blocks                   id       EventEndScene       data             slots           	   elseSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:bdccdarkdaysintro             triggerType       None       triggerSettings              executeType           	   priority      �?      code             blocks              images              bdccdarkdaysintro2             name       GavinMeeting2       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You step down toward the pond, the grass soft under your feet as it makes a quiet crunch with each step you take. The air here is cool, combined with the slight moisture caused by the waterfall, giving it the perfect mix of cold and damp to make you feel like you're actually walking amongst the blades of grass of an actual planet. The feeling alone is enough to make you homesick.

You spot Gavin sitting on the grass along the shore of the pond. He is on his knees, eyes closed, appearing to be meditating. Or could he be praying? It was hard to tell from here. He lifts his head, his snout pointed toward the ceiling, eyes opening. His usually glowing cyan eyes were replaced with gorgeous green eyes that seemed to sparkle in the light.

His eyes close again, and when they open they're cyan once more. That's when he turns his head to you, hearing your approach.

=gavin: Ah, hello {pc.name}. I'm glad you decided to meet with me. I apologize for my, er... inability to be more forward inside your cell regarding my visit. I had to get us away from prying eyes.

Gavin scoots to the side and motions you closer.

=gavin: Care to take a seat? I'll answer all your questions now.             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value             isVar              varName              further             value              isVar              varName           
   npcAction             value       kneel       isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Sit    	   descSlot          	   rawValue       Sit with the fox.    
   stateSlot          	   rawValue       sitting       checksSlot             checks           	   codeSlot             blocks              sitting             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You kneel down with Gavin who smiles at you warmly. The air seemed to get a bit cooler now that you're right next to the water, yet it wasn't unwelcome.

=gavin: I suppose I should explain why I'm here?

He offered as he adjusted his sitting position. You nod in response.

=gavin: Well, to keep it simple, the stuff I was testing you for was to see how well you'd do in a new environment after being suddenly transferred to it, to see if you could overcome overwhelming odds.

You nod.

=pc: But you never explained why.

=gavin: That's because I [i]can't[/i] explain it. Something is going on, and it feels like a rift between two worlds is about to break open.

You laugh at him as he finishes that sentence.

=pc: Yeah right. 'Oh, {pc.name}, two rifts between two alternate universes are opening soon! I need to fight you to prepare myself!' Gimme a break.

Gavin growls angrily.

=gavin: You don't understand what you're talking about. AlphaCorp has been experimenting with this type of shit for decades. If something opens up I need someone to help me contain it.

You blink.

=pc: You... didn't mention that bit.

=gavin: Because I didn't want the eyes and ears of five-hundred other inmates listening in. Look, you're one of the most influential inmates in here, as well as one of the strongest. I've heard stories, good stories, and I need your help. Can you help me?

You cock an eyebrow and smirk.

=pc: Look at you, an AlphaCorp dog begging me for help-

=gavin: Do not go down that route. We aren't in The Void anymore, I can't save you if I [b]kill[/b] you.

His threat sends a shiver down your spine and you nod.

=pc: Sorry.

=gavin: Are you in? Or are you out?             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       kneel       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value             isVar              varName           
   npcAction             value       kneel       isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       Go along with it.    
   stateSlot          	   rawValue       continue 1       checksSlot             checks           	   codeSlot             blocks              continue 1             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You nod your head.

=pc: Yeah, yeah I'm with you. Tell me what I can do to help.

Gavin heaves a heavy sigh of relief.

=gavin: Thanks, {pc.name}. I knew I could count on you for this. There isn't much you can do right now. I just needed to know you could help.

=pc: So... this was all just a waste of time?

=gavin: I wouldn't call it that. I'm establishing contact. Here, give me some time and come find me. I'll be in my office up on the security floor. It's in a restricted area, so I'll need to get you some authorization. Shouldn't take too long. Here, take this card. There's a card reader in the main elevator. If you use this one, it'll override it and make it come up to the security floor.

He hands you a slim blue card with the words; [color=#00e9fe]ELEVATOR ACCESS[/color] printed on it.

=captain: Gavin! Is that you I see?

You both turn your heads to see Captain Wright coming down the path. Gavin panics, and before you can react you're thrown in a bush and out of sight.

[i][b]Keycard GET![/b] Added to keys inventory.[/i]             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Hide!    	   descSlot          	   rawValue       Don't let him see you!    
   stateSlot          	   rawValue       hide       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       keycardacquired       value          	   rawValue             hide             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  Gavin stands tall as the captain gets closer.

=gavin: Hey Corwin! Yeah, it's me!

The captain finally gets close enough to be within chatting distance.

=captain: I'm surprised you came back. I figured you'd try to put as much distance between this place and yourself as possible. What's changed?

Gavin sighs and leads the captain to a park bench, giving you an opening to slip away... or you can stay and listen to what should clearly be a private conversation.             id       SceneCharAdd       data             slots             name          	   rawValue       captain       var          	   rawValue                    id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       captain       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       You shouldn't hear this.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Listen    	   descSlot          	   rawValue       Get the juicy details    
   stateSlot          	   rawValue       listen       checksSlot             checks           	   codeSlot             blocks              leave             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    *  You use Gavin's distraction as an opportunity to slip away, using the bushes as cover to escape being noticed as you get out of the general area of the two chatting. You can briefly spot Risha guarding the entrance to the waterfall as you slip past, just barely dodging her sight as you clear out.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       waterfalldone       value          	   rawValue                   id       SceneEndScene       data             slots              listen             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  For whatever reason, you decide to hang around and listen in on this conversation.

Gavin sat hunched over, elbows on his knees while the captain sat down next to him. They sat in a long silence. Gavin said nothing, while the captain just sat back, waiting.

=gavin: ...a lot of things have happened since I left, Cor.

=captain: As if it weren't apparent enough. After all, you came back here after you told me you'd never return.

Corwin chuckles and produces something from one of his pockets, offering it to Gavin.

=captain: When I heard you were here, I figured you'd want these back.

Gavin looked over and took them immediately.

=gavin: Fuuuck, you serious? Felt like it's been thirty years since I last had one of these.

Corwin shrugged and smiled at him. You move closer to see what they are, but you hear it first before you see it. The small [b][color=#d79d0f]CHNK![/color][/b] of an old fashioned lighter reached your ears, followed by the horrible smell of burning tobacco. It seems Gavin is a smoker.             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       sit       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       captain       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       sit       isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue           
   stateSlot          	   rawValue       listen2       checksSlot             checks           	   codeSlot             blocks              listen2             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �
  Gavin leaned back in the bench, enjoying his cigarette while Corwin continued.

=captain: You know, you were one of the very few inmates to actually be, legally speaking, 'rehabilitated' from the Broken Dreams Correctional Center.

=gavin: No offense Corwin, but I don't think selling my soul to AlphaCorp counts as 'rehabilitation.' Honestly, if I were given the choice, I'd tell my younger self to say no. To stay a prisoner, even if it meant being here for the rest of his life.

The captain looked perplexed.

=captain: Why would you say that? You gained freedom, a job, got a chance at a new life. I don't think anyone would turn that down if they were in your shoes.

Gavin looked at Corwin, his glowing cyan eyes filled with remorse and sorrow before he looked away.

=gavin: Corwin, brother, I am more chained down now than I ever was as a prisoner here. Not to mention after they destroyed all of my documentation, I became the test subject for all of AlphaCorp's under-the-table experimentation. Legally speaking, I'm a phantom. I technically have no rights. Meaning AlphaCorp got free reign over what they could do to me and... well... it's the explanation for the fact my eyes glow now, as well as explains why they're cyan.

=captain: I intended to ask about them, but figured you'd bring them up yourself. So... they made you a walking glowstick and left it at that?

Gavin looked at Corwin again. The two locked eyes for several seconds before Gavin let out a snort, followed by the two breaking out into laughter that lasted for at least ten seconds.

=gavin: Ahh... god damn it Cor. I can never take you seriously.

Gavin let out a few chuckles as he took a long drag of his cigarette.

=captain: Well, perhaps you should learn to. I am the captain of this station now.

=gavin: So I heard. How is that treating you?

Corwin sighs and leans back on the park bench.

=captain: Difficult. I practically had to claw my way to the top after you left. Since then, however, I've managed to create a rather... unique, yet effective form of rehabilitation.

=gavin: You're telling me...

Corwin looked at Gavin, squinting his eyes.

=captain: What is that supposed to mean?

=gavin: Nothing, nothing. Just... different, is all.

The two go silent for a while longer until the captain suddenly stands up.

=captain: I think we should catch up some more. Would you like to come by my office?

Gavin hummed as he extinguished the cigarette on the park bench to the disappointment of Corwin.

=gavin: ...eh, sure. Why not.

Gavin got up and stashed the cigarette pack inside one of his pockets before following Corwin out of the green zone, leaving you alone in silence, as well as giving you time to contemplate all that you just heard.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       Get out of here.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       FlagSetBool       data             slots             var          	   rawValue       waterfalldone       value          	   rawValue                   id       FlagSetBool       data             slots             var          	   rawValue       gavinsmoker       value          	   rawValue             vars              chars             gavin             realid       gavin       start             variant              captain             realid       captain       start              variant           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       yard_waterfall       executeType          	   priority      �?      code             blocks                   id       FlowIf       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue    	   meeting1    	   thenSlot             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       waterfalldone    	   thenSlot             blocks                   id       EventButtonDisabled       data             slots          	   nameSlot          	   rawValue       Gavin    	   descSlot          	   rawValue       You've already met Gavin here.    	   elseSlot             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       Gavin    	   descSlot          	   rawValue       Meet Gavin near the waterfall.       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:bdccdarkdaysintro2       images              bdccdarkdayssecelevator             name    	   Elevator       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   You scan the card Gavin gave you in the card reader and the elevator kicks to life, screeching violently before sending you upward.

You lean on the wall while the elevator ascends, leaning off once you finally arrive.             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       SecurityFloorElevator1             id       GameSetPCLocation       data             slots             var          	   rawValue       SecurityFloorElevator1             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              vars              chars           	   triggers                   triggerType       InsideElevator       triggerSettings              executeType          	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       keycardacquired    	   thenSlot             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameIsPCInLocation       data             slots             var          	   rawValue       SecurityFloorElevator1    	   thenSlot             blocks                   id       EventButtonDisabled       data             slots          	   nameSlot          	   rawValue    	   Security    	   descSlot          	   rawValue       You're already here!    	   elseSlot             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue    	   Security    	   descSlot          	   rawValue       Go to the security floor.       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:bdccdarkdayssecelevator    	   elseSlot             blocks                   id       EventButtonDisabled       data             slots          	   nameSlot          	   rawValue    	   Security    	   descSlot          	   rawValue       You don't have the keycard.       images              bdccdarkdayssecelevatorb             name    
   Elevator2       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   The elevator doors part as you get near them, sliding open smoothly before shutting behind you once your inside.

It takes a few moments, but eventually the elevator starts moving and you descend back down to the main hall.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Exit    	   descSlot          	   rawValue       Exit the elevator.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       GameSetPCLocation       data             slots             var          	   rawValue       hall_elevator             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       hall_elevator             id       SceneEndScene       data             slots              vars              chars           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       SecurityFloorElevator1       executeType          	   priority      �?      code             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       Leave the Security Floor.       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue        bdccdd:bdccdarkdayssecelevatorb       images              secfloorcheckpointinitial             name    *   Security Floor Checkpoint - Initial Scene       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You step out of the elevator, being greeted by a nice, cold air as you take in the sight of the Security Floor. A tall statue of AlphaCorp's logo, as well as Captain Wright, stands in the center of the lobby as you walk deeper in.

=pc: You always seemed like a narcissist to me, Wright...

You mumble to yourself upon seeing the statue of Captain Wright. That's when you hear somebody running at you from your left side!             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Look    	   descSlot          	   rawValue       Who is running at you?    
   stateSlot          	   rawValue       tackled       checksSlot             checks           	   codeSlot             blocks                   id       GameAddAtr       data             slots             name          	   rawValue       pc       var          	   rawValue      �B      op       pain             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       defeat       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       drynn       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value    
   stunbaton       isVar              varName              tackled             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You let out a loud grunt as you get rammed by a hulking dragon wearing a guard outfit, feeling the full blunt force of his shoulder pads as you stumble back, clutching your gut before getting hit [b]hard[/b] in the face by his stun baton, forcing you to drop to the floor.

=drynn: On the floor, inmate!

He commands before getting behind you, readying cuffs as he grabbed your wrists.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Protest    	   descSlot          	   rawValue       Say he's making a mistake!    
   stateSlot          	   rawValue       cuffed       checksSlot             checks           	   codeSlot             blocks                   id       InvForceEquipItemID       data             slots             item          	   rawValue       inmatewristcuffs       name          	   rawValue       pc       cuffed             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: Hey! You're making a mistake! I have authorization!

You shout at him as you feel the cuffs tighten behind your back. The guard scoffs at you before slapping the back of your head.

=drynn: Yeah right. You most likely just stole that keycard from some guard you knocked up downstairs.

He pulls the keycard out of your pocket.

=pc: No! Gavin told me I have authorization to be up here! That he needed to talk to me!

You hear him laugh.

=drynn: Gavin? You mean the AlphaCorp officer who just arrived?

=pc: Yes! Call him or something!

You thrash around on the floor, causing him to put his foot on your back to hold you still while he reaches for his radio.

=drynn: Pearson, Gavin Pearson. This is Drynn. Come in, over.

There was a short pause.

=gavin: [i]This is Gavin. Go ahead, Drynn.[/i]

=drynn: Got an inmate here up on the Security Floor. Claims you gave them authorization. Please confirm.

=gavin: [i]Affirmative. Prisoner {pc.inmateNumber} has level one authorization on the Security Floor.[/i]

You see Drynn physically recoil as he hears that over the radio, looking down at you with a baffled expression. Suddenly, another voice came over the radio.

=risha: [i]{pc.name}? Since when?[/i]

=gavin: [i]Since I put it in the system.[/i]

=risha: [i]Why?[/i]

=gavin: [i]That is AlphaCorp's business. Not yours.[/i]

=risha: [i]Excuse me-?[/i]

=gavin: [i]You're excused, Risha. As a matter of fact, a lot of your gross misconduct has been excused so far as well. How many prisoners have you broken today? How many have you fucked? ... You can't even recall can you?[/i]

There was a long silence.

=gavin: [i]How about instead of poking your nose in my business, you instead stay out of it? In turn, I'll stay out of yours. Copy?[/i]

Another bout of silence.

=risha: [i]...yes sir.[/i]

=gavin: [i]Good. Drynn?[/i]

=drynn: Yes sir?

=gavin: [i]Send {pc.inmateNumber} to the receptionist if you're done interrogating them.[/i]

=drynn: Yes sir.

He puts the radio up and uncuffs you, standing you up.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Get Uncuffed    	   descSlot          	   rawValue       Finally...    
   stateSlot          	   rawValue       stood       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       drynn       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName                    id       InvClearSlot       data             slots             item          	   rawValue       wrists       name          	   rawValue       pc       stood             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    O  Once you're stood up on your feet and steady, Drynn shoves you from behind.

=drynn: Get the hell out of here, {pc.inmateNumber}. We're watching you, so don't try anything funny.

You look back at him as he pushed you toward the receptionist on the other side of the room.

=pc: Dick...

You mutter under your breath before moving on.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       FlagSetBool       data             slots             var          	   rawValue    	   drynnmet       value          	   rawValue             vars              chars             drynn             realid       drynn       start             variant           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       SecurityFloorLobby       executeType           	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue    	   drynnmet    	   thenSlot             blocks                   id       EventEndScene       data             slots           	   elseSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue    !   bdccdd:secfloorcheckpointinitial       images              secfloorreceptionistinitial             name    ,   Security Floor Receptionist - Initial Scene       devcomment              states                          code             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       receptionist       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       sit       isVar              varName                    id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You step up to the desk on the other end of the room from Drynn, meeting a stunningly beautiful feline behind the counter who looks up at you from the papers she was working on.

=receptionist: Can I help you?

=pc: I'm looking for Gavin? Gavin Pearson?

=receptionist: Down the hall to my left, then hang a right into the offices. He'll be all the way in the back past the break room.

You blink as she looks back down at the papers. That was easy...             id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   Thank her    	   descSlot          	   rawValue    +   Thank her for the information and move on.    
   stateSlot          	   rawValue       thank       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Hit on    	   descSlot          	   rawValue    8   Try your luck with the receptionist out of your league.    
   stateSlot          	   rawValue       flirt       checksSlot             checks           	   codeSlot             blocks              thank             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    5   You say your thanks to the receptionist and move on.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       majamet       value          	   rawValue                   id       SceneEndScene       data             slots              flirt             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    9  =pc: Damn girl, are your eyes galaxies? Cause I can't stop staring at them.

She looks up at you.

=receptionist: ...really?

She cocks an eyebrow and you nod your head.

=receptionist: ...you get one chance to get me interested. You waste it, you fuck off. Got it?

She puts her paws up on her desk and you nod.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Tits    	   descSlot          	   rawValue       Compliment her tits    
   stateSlot          	   rawValue       rejecttits       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Ass    	   descSlot          	   rawValue       Comment about her ass    
   stateSlot          	   rawValue    
   rejectass       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Paws    	   descSlot          	   rawValue       Comment about her paws.    
   stateSlot          	   rawValue       paws       checksSlot             checks           	   codeSlot             blocks                    id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       LewdHasBodypart       data             slots             val          	   rawValue       penis       name          	   rawValue       pc    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Cock    	   descSlot          	   rawValue    %   Say your cock would look good in her    
   stateSlot          	   rawValue       rejectcock       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Cock    	   descSlot          	   rawValue       You don't have one, genius.       rejecttits             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   =pc: Your tits, they-

The receptionist makes a buzzer sound with her mouth.

=receptionist: You missed. Get out of here, inmate.

You blink and she goes back to her papers.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue    '   You don't need her stupid cunt anyway.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       FlagSetBool       data             slots             var          	   rawValue       majamet       value          	   rawValue                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Beg    	   descSlot          	   rawValue       Beg for another chance.    
   stateSlot          	   rawValue       beg       checksSlot             checks           	   codeSlot             blocks           
   rejectass             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   =pc: Your ass, it-

The receptionist makes a buzzer sound with her mouth.

=receptionist: You missed. Can you even see my ass over there? Get out of here, inmate.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue    '   You don't need her stupid cunt anyway.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       majamet       value          	   rawValue                   id       SceneEndScene       data             slots                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Beg    	   descSlot          	   rawValue       Beg for another chance.    
   stateSlot          	   rawValue       beg       checksSlot             checks           	   codeSlot             blocks              rejectcock             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    x   =pc: My cock would look good in-

The receptionist makes a really long buzzer sound.

=receptionist: Yeah, no. Get out.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue    '   You don't need her stupid cunt anyway.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       FlagSetBool       data             slots             var          	   rawValue       majamet       value          	   rawValue                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Beg    	   descSlot          	   rawValue       Beg for another chance.    
   stateSlot          	   rawValue       beg       checksSlot             checks           	   codeSlot             blocks              paws             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: Your paws look so soft and delicate... I'd love to busy my face into them all night long.

The receptionist hums and looks at her paws before smirking.

=receptionist: Prove it. Come around and bury yourself in my paws~

You nod and come around to her side of the desk. But that's when she stopped you with an outstretched paw.

=receptionist: Ah ah~ On your knees~ Crawl to me~             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Obey    	   descSlot          	   rawValue       Crawl to your mistress.    
   stateSlot          	   rawValue       crawl       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       crawl       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       receptionist       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       sit       isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Nope!    	   descSlot          	   rawValue       This is too much for you.    
   stateSlot          	   rawValue       nope!       checksSlot             checks           	   codeSlot             blocks              beg             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    W  You frown and you put on your best puppy-dog eyes and whine pathetically before her.

=receptionist: Are... are you serious...? Are you that needy for attention that you must beg when you don't get your way?

You nod pathetically, and she sighs.

=receptionist: Fine. Prove to me how much you want me. Crawl to me like the dirty slut you are.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Obey    	   descSlot          	   rawValue       Crawl to your mistress.    
   stateSlot          	   rawValue       crawl       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       crawl       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       receptionist       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       sit       isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Nope!    	   descSlot          	   rawValue       This is too much for you.    
   stateSlot          	   rawValue       nope!       checksSlot             checks           	   codeSlot             blocks              nope!             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   You blink.

=pc: Nope! Fuck this!

You turn on your heel and walk away to the disappointment, and confusion, of the receptionist.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue           
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       majamet       value          	   rawValue                   id       SceneEndScene       data             slots              crawl             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You get down on all fours and approach the receptionist whose face slowly twists upward in a cocky smirk as she rests her head on her hand, using her chair's armrest for support as you get closer and closer.

You stop just shy of her paws when one is put in your face.

=receptionist: Worship me, pet~ Show me how much you want me~

She commands with a suddenly much stronger, more domineering voice. You cannot help yourself but to obey as you sit up on your knees and take ahold of her paw. You play with her soft pink beans, dragging your thumb across them as the receptionist lets out a small moan.

You lean in, giving her paw a gentle lick and she chuckles.

=receptionist: Good pet~

Your body warms with her praise and, before you know it, you've been attached to a leash.             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       LewdIsWearing       data             slots             name          	   rawValue       pc       op       isWearingChastityCage    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue           
   stateSlot          	   rawValue       worshipawkward       checksSlot             checks           	   codeSlot             blocks                   id       SceneCharAdd       data             slots             name          	   rawValue       gavin       var          	   rawValue                    id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       receptionist       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       sit       isVar              varName           	   elseSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue           
   stateSlot          	   rawValue       worship       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       receptionist       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       sit       isVar              varName                    id       SceneCharAdd       data             slots             name          	   rawValue       gavin       var          	   rawValue              worship             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      Using the leash, she pulls you under her desk, concealing you in it's shadow while using you as a paw rest. Eagerly, you lap your tongue at her pink pads while you hear her writing various papers above you.

=receptionist: Such a pawslut~

She teases, pushing the paw further into your face and making you groan.

=receptionist: I just realised I never introduced myself. I am Maja, Maja Cortez. But, you may call me your mistress~

She giggles and that's when you hear someone walking up.

=receptionist: Ah, hello sir.

=gavin: Hello Maja. Have you seen where {pc.name} went? I've been waiting for them in my office but so far they haven't shown up.

You try your best to keep quiet when suddenly Maja presses her paw against your crotch, making you just barely stifle a moan against her paw.

=receptionist: They asked me where the restroom is, sir. They shouldn't be too long now.

=gavin: You pointed him to the barracks restroom? Damn it Maja, those guards will eat them alive. I'm getting them out of there.

You shake your head at Maja rapidly, but she pushes your head down with her paw.

=receptionist: I'm sure they're fine, sir.

You hear Gavin sigh before he starts walking back the way he came... before stopping.

=gavin: Are you feeling alright Maja? You sound a lot more chipper than I remember.

You barely stifle another moan as she presses against your crotch even harder, starting to gently stroke you.

=receptionist: I'm feeling alright... a bit burnt out perhaps but overall I don't feel any worse than I usually do.

=gavin: Mhm... well, if you see {pc.name}, send them to my office.

Maja nods and Gavin leaves, letting Maja return to stroking you with no need to worry about your moaning.

You feel yourself becoming more sensitive the more she strokes you, starting to make you squirm underneath her.

=receptionist: Don't tell me you're close already?

Another moan tells her you are. She lets out a disappointed sigh and leans back, starting to stroke faster and faster.

=receptionist: Go on then... finish like a good pet~             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Cum!    	   descSlot          	   rawValue       Finish what you started.    
   stateSlot          	   rawValue       finish       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       receptionist       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value             isVar              varName           
   npcAction             value       sit       isVar              varName              worshipawkward             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    ,  Using the leash, she pulls you under her desk, concealing you in it's shadow while using you as a paw rest. Eagerly, you lap your tongue at her pink pads while you hear her writing various papers above you.

=receptionist: Such a pawslut~

She teases, pushing the paw further into your face and making you groan.

=receptionist: I just realised I never introduced myself. I am Maja, Maja Cortez. But, you may call me your mistress~

She giggles and that's when you hear someone walking up.

=receptionist: Ah, hello sir.

=gavin: Hello Maja. Have you seen where {pc.name} went? I've been waiting for them in my office but so far they haven't shown up.

You try your best to keep quiet when suddenly Maja presses her paw against your crotch, a rather loud clank being heard, made by Eliza's chastity cage. This causes Maja to look down at you, a look of bewilderment on her face as she looks up at gavin again.

=gavin: The fuck was that?

She pulls her paw off your cage and rests it gently on your belly.

=maja: N-Nothing! I just kicked a box on accident.

Gavin lets out a small 'ah' and laughs a bit.

=gavin: Careful. Don't break a toe. Anywho. About {pc.name}?

=maja: Ah, yes, they went downstairs. Something about having to grab something or something... I wasn't paying attention.

This causes Gavin to sigh.

=gavin: Damn it... ah well. Let them come at their own pace. Send them to me when they're back up, alright?

She nods and he walks away. As soon as she's gone, she looks down at you.

=maja: So... that was awkward. I wish you told me about that.

=pc: Sorry...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Get Up?    	   descSlot          	   rawValue       That was awkward.    
   stateSlot          	   rawValue       awkwardfinish       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       majamet       value          	   rawValue                   id       FlagSetBool       data             slots             var          	   rawValue       majafucked       value          	   rawValue             awkwardfinish             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    B  You get out from under Maja's desk, brushing yourself off a bit.

=maja: I mean, it was fun. I just wasn't expecting you to be caged like that. Mmm... makes me wonder what's down there all the same~

She giggles and leans back as you walk off.

=maja: You're welcome to come worship me whenever you like~! Come back soon~             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              finish             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    G  You let out a muffled moan right into Maja's paw as you feel your climax overcome you, your body seizing up slightly as your fluids are wasted between your legs, missing Maja's paw completely.

=receptionist: Such a good pet~

Maja giggles and unclips you from the leash allowing you to return to where you were, albeit with a bit of a shaky gait.

=receptionist: Right, that concludes our transaction. I will have details as to our agreement delivered to your cell at a later date, at which point assuming you still retain authorization to be on the Security Floor you may return and cconsolidate further.

You put on a look of confusion before you hear some guards walk behind you. You turn your head to look at them before turning back to Maja who has a sneaky smirk on your face.

=receptionist: Please cum again soon~

You go to step away when she suddenly grabs your hand.

=receptionist: Before I forget. Here. I saw Drynn rough you up. Take one of these, should make things better.

She puts something in your palm. It's a painkiller, and a strong one at that. Should clear up any pain!             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       Take your leave.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       majamet       value          	   rawValue                   id       FlagSetBool       data             slots             var          	   rawValue       majafucked       value          	   rawValue                   id       SceneEndScene       data             slots                    id       GameAddAtr       data             slots             name          	   rawValue       pc       var          	   rawValue      ��      op       pain       vars              chars             receptionist             realid       receptionist       start             variant              gavin             realid       gavin       start              variant           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       SecurityFloorLobby8       executeType           	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       majamet    	   thenSlot             blocks                   id       EventEndScene       data             slots           	   elseSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue    #   bdccdd:secfloorreceptionistinitial       images              secfloorgavinsoffice1             name    "   Security Floor - Gavin's Office 1       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You enter Gavin's office, seeing him sitting at his desk reading some papers as you come in.

=gavin: Yeah sure, just enter whenever you guys feel like it, it's not like I-

Gavin looks up at you and cuts himself off mid-sentence.

=gavin: Ah, sorry. I didn't know it was you. Please, come in and take a seat. We don't have to worry about being overheard here.

He smiles at you and motions to the chair across from him as he sets aside the papers he was reading.             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       sit       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   Get Comfy    	   descSlot          	   rawValue       Sit and listen.    
   stateSlot          	   rawValue       comfy       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       sit       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       sit       isVar              varName              comfy             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    1  You sit down across from him and he pulls over a computer, tapping at it.

=gavin: Right, so, let's do a quick overview. The stuff I'm sharing with you is confidential, by the way, so don't go blabbering about this.

You nod, and Gavin pushes a button under his desk. You hear the door lock behind you as a panel goes over it.

=gavin: AlphaCorp has recently been making a few breakthroughs in their Bluespace Technology Field, mainly thanks to me being the perfect test subject. I'm sure you wonder where my powers come from? Well, it was from their experimentation with Bluespace Tech's effectiveness with organic beings.

He pulls up some holographic screens and angles them so you can read it. It contained endless amounts of data about the uses of Bluespace on living creatures as well as other people. A lot of the data is redacted, and a lot of it you can't make sense of, but it seems that AlphaCorp was trying to use Bluespace to give their officers special powers akin to something you'd find in a fantasy book.

=gavin: A lot of their experiments were failures, resulting in either nothing happening or the death of the subject in question. I was one of a lucky few to survive initial testing, as well as the only one to survive continuous testing. We couldn't figure out why in the moment, but it was suspected to be directly linked to a subject's ability to absorb and manipulate Bluespace Matter within their own bodies, but it ended up being a wash as it was revealed that I actually wasn't absorbing it at all.

You blink.

=pc: And you still got the powers from it?

=gavin: Yes. It was later discovered that instead of absorbing it into my body, I was rather pulling energy from sources of Bluespace and using it to fuel my powers, absorbing only what was absolutely necessary in the current moment. This in turn led to a lot of advancement once they figured out that pulling energy from the crystal to fuel what they needed it for was more effective than having whatever they were fueling absorbing it and storing it for when it was needed and risking destabilization. One of the first things to come of this tech was the collars you wear, but I don't want to go into that as I don't want you escaping, despite how useful you are.

You cross your arms and watch as the screens Gavin pulled up disappear.

=gavin: It was also decided that individuals like me, who managed to survive the initial testing processes and gain powers through Bluespace, would carry their own crystals to fuel their abilities. However, the people who survived were very few and far between, so the project was abandoned. I think there's only like... twenty to forty of us left. But in either case, it isn't what I wanted to talk to you about.

He closes his computer and stands up, grabbing some files out of his desk and tossing them on the desk.

=gavin: Have a look.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Read    	   descSlot          	   rawValue       Read the documents.    
   stateSlot          	   rawValue       files       checksSlot             checks           	   codeSlot             blocks              files             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  A big red [CONFIDENTIAL] was stamped on the front of the folder as you opened it up. Inside the files were the designs of some kind of transporter or wormhole device, however the document stated it was a BSRT, or BlueSpace Reality Transporter. You can't make out a lot of the details, but it seems this is supposed to transport people to alternate realities. The entire concept is baffling to you and seems utterly impossible, yet... here we are.

=gavin: That is a BS.R.T. BlueSpace Reality Transporter. As you can see, it uses Bluespace to rip apart the fabric of reality, and open a portal to another one, an [i][b]extremely[/b][/i] dangerous concept given our limited understanding of Bluespace and it's abilities. Sure, we can use it with ships and transport them with ease using it, but tearing apart reality just to go to a new one? That is insane, and if it isn't managed properly we could probably [i]destroy[/i] all of reality.

=pc: So where do I of, all people, fit into this?

=gavin: You're going to help me shut down the program before it even starts. Not directly, though. The process is way too precise and, personally, I wouldn't trust anyone near the controls, let alone the safety devices and power regulators.

=pc: That doesn't answer my question.

=gavin: Well... I need you to to accompany me as a test subject.

=pc: You fucking what?!

=gavin: I know, I know! I know how it sounds but that's why I'm here. I need to find a suitable prisoner here in the Broken Dreams Correctional Center to be transported to and from this transporter. But don't worry. I won't let anything happen to you. I just need you to go along with it for now.

You think about it. Stopping AlphaCorp from destroying all of reality? Getting to do a cool adventure possibly? Sounds right up your alley, really. So you, hesitantly, nod your head. Gavin lets out a sigh of relief.

=gavin: Thank you, {pc.name}. Now I just need to inform the head that I've 'found someone' for the project. Wait right there, and be dead silent, understand?

You nod.

Gavin opens up his computer again and put in an earpiece before going silent for several moments.

=gavin: Whittaker, sir. I've found a suitable subject onboard the Broken Dreams Correctional Center for Project-7115. ...yes sir. Prisoner ID is {pc.inmateNumber} of the {pc.inmateType} block. ...Their name is {pc.name}. ...yes sir. ...sir it will not be necessary. I will ensure they are ready and willing to partake in the experiment. ...understood. ...good day, sir.

He pushes a button and shuts off the computer before leaning back.

=gavin: And now we wait. The project won't be ready for a while, so now's your time to prepare. I'm most likely going to have to strip search you, and anything I find is definitely going to get lost, so make sure you stash everything on you in your cell.

You nod.

=gavin: That's all I need from your for now. When the time comes, I'll come find you in your cell. In the meantime, got any questions you need answering?             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Powers    	   descSlot          	   rawValue       Ask about his powers.    
   stateSlot          	   rawValue       powers       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Prisoner    	   descSlot          	   rawValue    -   Ask about his history as a prisoner of BDCC.    
   stateSlot          	   rawValue    	   Prisoner       checksSlot             checks           	   codeSlot             blocks                    id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavinsmoker    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Smoker    	   descSlot          	   rawValue       Ask why Gavin smokes.    
   stateSlot          	   rawValue       smoker       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Smoker    	   descSlot          	   rawValue       You don't know this.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       No further questions.    
   stateSlot          	   rawValue       ending       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       sit       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName              powers             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    {  =pc: What kind of powers did you get as a result from the experiments?

=gavin: You saw a few of them already. Increased strength, speed, ability to phase or teleport, the void... but among other things I've gained the ability to attack using the Bluespace in my crystal as a projectile. I don't like to use it, as it's rather painful to shoot Bluespace out of my hand. I also gained very minor reality manipulation, but I can't like... rip it apart, more like change things or move them around as if I were a telepath.

His cyan eyes glow brighter and you see a mug start to float in front of you. It currently says; "Feelin' Foxy", but with a flash of his eyes the mug changes to a picture of your bare ass, as well as the text; "ButtSlut". The mug floats back to Gavin before going back to normal.

=gavin: See? Rather cool isn't it? Of course, it's rather exhausting to do it with larger items and it expends the crystal a lot faster, so I don't use it that much.

=pc: What does your crystal look like? You never showed me.

Gavin makes an uncomfortable face before pulling his shirt forward slightly, letting a glowing bluespace crystal float up and out of his shirt, defying gravity as it floated near his neck, attached to a loose strap. It was actually rather beautiful, like those moon charged crystals girls obsessed with Astrology would get, but actually serving a purpose. It's glow matched with Gavin's eyes, but it suddenly flickers. Gavin's eyes lost their glow for a few moments, showcasing their beautiful green color before returning to it's cyan glow.

=gavin: Damn, looks like I'll have to get another one soon. This one's wearing out.

             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Prisoner    	   descSlot          	   rawValue    -   Ask about his history as a prisoner of BDCC.    
   stateSlot          	   rawValue    	   Prisoner       checksSlot             checks           	   codeSlot             blocks                    id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavinsmoker    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Smoker    	   descSlot          	   rawValue       Ask why Gavin smokes.    
   stateSlot          	   rawValue       smoker       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Smoker    	   descSlot          	   rawValue       You don't know this.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       No further questions.    
   stateSlot          	   rawValue       ending       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       sit       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName           	   Prisoner             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �	  =pc: What was life for you like when you were a prisoner here?

Gavin blinks and looks at you.

=gavin: When did I tell you that? I don't remember talking about it.

=pc: Back in the cell. You mentioned you used to be a prisoner.

Gavin thinks on it a bit before nodding.

=gavin: I suppose I did. In either case...

He sits back, putting his paws on the desk.

=gavin: Yes, I was once a prisoner of the Broken Dreams Correctional Center. I was a Red Block inmate, as I had gotten arrested on a false murder charge. What had really happened was that this guy, a drunk... stoat I think it was, came at me and tried to kick my ass. I never figured out why, because the moment I felt him bite into my leg, I grabbed the little fucker and swung him around before hitting his back into a lamp post and making something in him crunch.

You visualize it in your head and recoil.

=gavin: I didn't realise it at the time, but I snapped the poor bastard's spine and, as if it weren't bad enough, caused a lung to collapse from the sheer force of the strike. By the time I realised he was dying, it was too late. The poor fucker was gone, [i]way[/i] before the medics could arrive. Naturally, I got arrested and put in jail for a little bit, awaited a trial and... never got one. I was just interrogated and told that I'd been found guilty of murder, despite all the evidence proving that it was self defense. To add salt to the wound, I was given an indefinite sentence.

You close your eyes and recall the same fate you suffered.

=pc: I know that pain all too well, Gavin.

He nods.

=gavin: So I heard. One of the reasons I came to you, honestly. Figured you and I would connect over that. ...anyway. I went in at about eighteen or nineteen and scraped by for about four years, made easier from my Red status, which other inmates away... excluding other Reds, but they went away when I started using the canteen chairs as a weapon when they went too far.

=pc: But the canteen doesn't have chairs?

=gavin: I know. I was the reason why they swapped to benches.

Gavin lets out a chuckle before his face turned to a frown.

=gavin: On my twenty third birthday, I was approached with the offer that made me who I am today. I still regret taking it, because at least I'd still be normal and, while dealing with inmates still, happy. You can see how it went.

He looks away and sits normally. 

=pc: How old are you now?

=gavin: Thirty-two...

His face takes on a somber expression. You should probably ask something else.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Powers    	   descSlot          	   rawValue       Ask about his powers.    
   stateSlot          	   rawValue       powers       checksSlot             checks           	   codeSlot             blocks                    id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavinsmoker    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Smoker    	   descSlot          	   rawValue       Ask why Gavin smokes.    
   stateSlot          	   rawValue       smoker       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Smoker    	   descSlot          	   rawValue       You don't know this.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       No further questions.    
   stateSlot          	   rawValue       ending       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       sit       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName              smoker             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: How long have you been smoking?

Gavin blinks before leaning in.

=gavin: How do you know I smoke?

You go silent and Gavin stands up, putting his hands on his desk and staring you down. The air seems to get colder and colder as he waits for his answer.

=pc: I- I-I might have listened in on your conversation with Captain Wright...

He growls lowly.

=gavin: You should not have listened in, [b]{pc.name}[/b]. But to answer your question, I've been smoking since I was fifteen.

He sits back down and you can't help but ask...

=pc: How long have you know him?

=gavin: Corwin, you mean?

You nod.

=gavin: I've known him since I was a prisoner here in the Broken Dreams Correctional Center. He was a different man back then. He was strict, sure, but he was kind. Or at least he was to me after I told him that I truly [i]was[/i] innocent. Behind that tough guy and commandeering persona he's developed over the years... he's actually a rather nice guy. But that's gone now... I think the power's gone to his head, and it's just not the same Corwin. ...don't tell him I said that.

You nod. You'll admit that it's hard to believe he was ever nice at all, but... power changes people.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Powers    	   descSlot          	   rawValue       Ask about his powers.    
   stateSlot          	   rawValue       powers       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Prisoner    	   descSlot          	   rawValue    -   Ask about his history as a prisoner of BDCC.    
   stateSlot          	   rawValue    	   Prisoner       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       No further questions.    
   stateSlot          	   rawValue       ending       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       sit       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName              ending             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You stand up, having no more questions to ask him for now. Gavin nods and pushed the button under his desk. The panel that covered the door receeds into the floor, and the door to his office unlocks.

=gavin: Right. When the time comes, I'll come find you. I'll see you soon, {pc.name}.

You nod and wave goodbye as you exit the room.

...

=gavin: ...I hope you survive it... for all of our sakes.

Gavin opens his computer and looks over all the information he's compiled about this project over the past three months, letting out a sigh as he pulled a bottle of old whiskey out of his desk, pouring himself a glass as he lights a cigarette in his maw. He starts reminiscing about the old days... and thinking back to his [b][i]Dark Days.[/i][/b]

...

[b][i][Three Days Later][/i][/b]

...

A phone on Gavin's desk begins to ring, breaking the fox out of his stupor as he worked on other things. He quickly answered it, bringing it up to his head.

=gavin: Hello?

=director: Mr. Pearson. Are we all set?

=gavin: Almost, sir. I just need to make some last minute preparations.

=director: Do not delay, Pearson. Get it done and call me back when it's ready.

=gavin: Yes sir.

He hangs up the phone and sighs, finishing his glass.

=gavin: I'll be ready, [i][b]Director.[/b][/i] But will you?             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       Leave for now.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       gavinoffice1       value          	   rawValue                   id       SceneEndScene       data             slots                    id       GameSetPCLocation       data             slots             var          	   rawValue       cellblock_nearcells             id       SceneAddMessage       data             slots             outputSlot          	   rawValue    a   Hmm... you get the feeling you should talk with Maja, Gavin, and Drynn before you sleep today...       vars              chars             gavin             realid       gavin       start             variant           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       SecurityFloorOffice(1)14       executeType           	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavinoffice1    	   thenSlot             blocks                   id       EventEndScene       data             slots           	   elseSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:secfloorgavinsoffice1       images           	   majachat             name    
   Maja Chat       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   You walk up to Maja's desk, giving her a smile as she looks up at you.

=receptionist: Ah, welcome back, cutie~ How can I help you this time?             id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   About Her    	   descSlot          	   rawValue       Ask about her.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Gavin    	   descSlot          	   rawValue       Ask about Gavin.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Drynn    	   descSlot          	   rawValue       Ask about Drynn.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks                    id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       receptionist       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       sit       isVar              varName              Maja             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: Tell me about yourself, Maja.

She hums and crosses her legs.

=receptionist: There isn't much to tell I'm afraid. I'm just a receptionist in the Broken Dreams Correctional Center.

She sticks her tongue out at you playfully, but you aren't buying it.

=pc: Oh yeah? Then why do you have an officer's uniform on?

She pauses, staring at you for several seconds before looking at her uniform.

=receptionist: Damn, I guess you aren't as blind as the rest of them~

She giggles.

=pc: Not sorry to disappoint. So?

=receptionist: So what?

=pc: What's the story?

She hums.

=receptionist: Well, there's a lot of reasons I wear this uniform. It's comfy believe it or not, it looks good, it fits me while also accomodating my tits...

She grips her large breasts, playing with them slightly, winking as she pulled your attention to them.

=receptionist: I could go on and on, but it's all really boring. Honest.

She leans back and you decide to drop it.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Gavin    	   descSlot          	   rawValue       Ask about Gavin.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Drynn    	   descSlot          	   rawValue       Ask about Drynn.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks                    id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       majaassassin    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Assassin    	   descSlot          	   rawValue    &   Ask about her history as an assassin.    
   stateSlot          	   rawValue       MajaAssassin       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    	   Assassin    	   descSlot          	   rawValue       ??? (Hint - Talk to Gavin)       Gavin             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      =pc: What do you know about Gavin?

She hums, leaning back.

=receptionist: Not much. I know he's an AlphaCorp Officer, that he's a fox, and that his rank is on par with our captain but... that's about it.

You look slightly disappointed.

=receptionist: Don't worry, we can always check his database entry.

She sticks her tongue out at you and invites you to come around. You pull up a chair next to her as she tries to find Gavin's database entry...

...

[b]ACCESS UNAUTHORIZED - SECURITY CLASS: OMNI REQUIRED.[/b]

=receptionist: That's odd. Usually when a file needs a security class to open it, you can still open the file albeit redacted. They don't lock you out.

=pc: Not even for The Director's file?

=receptionist: Not even for The Director's file.

She hums before pulling out a USB stick from her bag.

=receptionist: Ah well. I can just use this to bypass it.

You look at her like she's crazy.

=pc: Really? Won't that get you in like... massive trouble?

=receptionist: Only if I get caught. And you wouldn't snitch on your mistress, would you~?

You go quiet and she plugs in the USB, starting to bypass the unauthorized message. It takes her several minutes but eventually the file cracks.

=receptionist: Here we are. Let's see... ah.

=receptionist: Name, Gavin Pearson. Age, thirty-two. Gender, Male. Species, Red Fox. Security Class, Omni... lets skip all the boring shit.

She starts to scroll.

=pc: Why are you showing me this by the way?

=receptionist: Because I live for this kinda thing. Here we are! Gavin Pearson first appeared on AlphaCorp's radar after he killed stoat Jackie Wickleson in self defense when he was nineteen. He was charged with murder after Jackie's father, Nathaniel Wickleson, the CEO of one of AlphaCorp's companies, demanded justice. He was sentenced to an indefinite stay in the Broken Dreams Correctional Center as a Red Block inmate. While inside, Gavin kept a low profile, however we continued to monitor him. It was eventually discovered, four years after his initial incarceration, that he had a special genetic structure that allowed him the opportunity of becoming apart of Bluespace Experimentation. After this discovery, we made him an offer he couldn't refuse. In exchange for freedom, he would become apart of AlphaCorp, and in turn, take part in the experimentation regarding the effects of Bluespace on individuals with his genetic structure.

Maja stops to take a breath and you decide to take over for her.

=pc: Gavin excelled at all testing and one of the first individuals to become part a BSEU (BlueSpace Enhanced Unit). This aided in the discovery of many other technologies that relied on Bluespace. It was during this time that Gavin became formally hired under AlphaCorp and had his Security Class raised to SC3, expanding his abilities and access. It was also around this time that Project: Exodus (see file [REDACTED] for more details) was started, a project that demanded Gavin be moved in order to aid in those research efforts. We started to keep less, and less of an eye on Gavin as he continued his research into Project: Exodus until it... eventually exploded, killing everyone inside Sector Nine where the project was being hosted... including Gavin.

You both pause for several moments, looking at each other before Maja continues.

=receptionist: Gavin was found dead, drifting in space, two hours after the incident. He was declared dead to the public after his body was delivered to Sector Eight. However, an hour after his arrival, staff found Gavin had been revived. It is unknown how Gavin came back from the dead, however it is speculated that Gavin's connection to the Bluespace was so strong, that he managed to use it to cheat death. This later proved impossible, as Gavin's body does not store Bluespace for later use like the rest of the former BSEUs, instead relying on Bluespace Crystals in close proximity. After being interrogated, it was revealed that Gavin had no memory of Project: Exodus, nor the explosion at Sector Nine. With no leads to follow on his end, the investigation was dropped and Gavin was permitted to return to work, before he eventually disappeared after Director Whittaker took an interest in him direct.

You both stare at the screen in silence, unable to believe it. Eventually you take over and navigate to his medical history.

=pc: Let's see... gunshot wounds, beatings- ...declared dead. Holy shit... so it's real. ...wait a second, he's infertile?

=receptionist: Wait what? Lemme see.

You point at the entry and she opens it.

=receptionist: After coming in for a visit, patient stated that he was having trouble producing an off-spring with a love interest. After taking a sperm sample, it was revealed that patient's extensive exposure to bluespace contaminated his semen production and made his sperm incompatible with females... fuck... Life just has it out for this guy.

=pc: No kidding...

Maja shuts the laptop and looks at you.

=receptionist: I think it's best we keep what we learned in this file to ourselves.

=pc: Agreed.

=receptionist: Did you uh... need anything else?             id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   About Her    	   descSlot          	   rawValue       Ask about her.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       gavindead1       value          	   rawValue                   id       FlagSetBool       data             slots             var          	   rawValue       gavininfertile       value          	   rawValue                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Drynn    	   descSlot          	   rawValue       Ask about Drynn.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       gavindead1       value          	   rawValue                   id       FlagSetBool       data             slots             var          	   rawValue       gavininfertile       value          	   rawValue                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       gavindead1       value          	   rawValue                   id       FlagSetBool       data             slots             var          	   rawValue       gavininfertile       value          	   rawValue             Drynn             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: So what's the deal with Drynn?

You ask as you lean over the desk.

=receptionist: Not much really. Why? You still sour about getting your ass handed to you?

She giggles and you rub the spot where Drynn rammed you.

=pc: Most likely, yeah.

=receptionist: Man up ya big baby~

She sticks her tongue out at you and she leans back in her chair.

=receptionist: You know, he's from a more... tribal society, for a lack of a better term.

Looking at Drynn now, you can definitely see it from his glowing tattoos as he stands guard, even if you can only see it up in his head.

=receptionist: Yeah. He and his people had it rough over there. Talk about laws of the jungle. But they survived, and that survival made them tough.

You look Drynn up and down and, yeah, you can see that too. Even through his armor, you can see that he is much stronger than the usual guard here, and he stands a lot taller.

=receptionist: You should have seen what he did the last time a troublemaker came through here. It was a Red Block Inmate, they nicked a card off a guard and came up here to try and find a way out I suppose. They ran into a bunch of guards and started fighting them... then came Drynn who shoulder charged the poor Red into a wall before laying into them with their baton. The Red got stuck in the medbay for about two weeks after the other guards pried Drynn off them. He's softened up since then, but I can tell the beast in him still wants to come out. Hell, I saw it when you came up. He wanted to bash your head in. Be glad he stopped with the one baton strike.

You shiver at the idea of getting your head bashed in by that dragon's baton.

=receptionist: But yeah. Drynn has gotten better, and he's actually a pretty sweet guy under the surface. Absolutely abhorrent when speaking with women though, which I find absolutely adorable.

She giggles before blinking.

=receptionist: Abhorrent in a... 'gets flustered and stumbles over his words' way, not in a 'complete and utter brute' way. Just to clarify.

You two share a smile before you turn your attention back to Drynn.

=pc: I might try talking to him.

=receptionist: By all means, he's all yours. Just be warned, he isn't fond of inmates. Tell him I sent you and he should loosen up.

You smile and nod at her.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   About Her    	   descSlot          	   rawValue       Ask about her.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue    	   drynntip       value          	   rawValue                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Gavin    	   descSlot          	   rawValue       Ask about Gavin.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue    	   drynntip       value          	   rawValue                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue    	   drynntip       value          	   rawValue                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       majawatched    	   thenSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    	   Interest    	   descSlot          	   rawValue    8   Do you really want to get your ass handed to you again?    	   elseSlot             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue    
   drynnmaja    	   thenSlot             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       majadrynnfucked    	   thenSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    	   Interest    	   descSlot          	   rawValue    /   Those two already went at it, leave 'em alone!    	   elseSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Interest    	   descSlot          	   rawValue    "   Tell Maja about Drynn's interest.    
   stateSlot          	   rawValue       MajaDrynn1       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    	   Interest    	   descSlot          	   rawValue       ??? (Hint - Talk to Drynn)       leave             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    >   You wave as you go to leave, letting Maja return to her work.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              MajaAssassin             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    x
  =pc: So... I heard that you used to be an assassin-

Before you can even finish the sentence, you're grabbed by the collar and yanked over the desk before having your back slammed against their table. You feel a sharp steel blade press against your chest, its sharp edge just barely pressing into your flesh through your uniform and ready to go for your heart, right between your ribs..

=receptionist: You better have a damn good reason to be bringing this up to me, [b]{pc.name}[/b]

The fact she used your name makes you shiver. Her gaze, once friendly and teasing has been replaced with the gaze of a stone cold killer who won't hesitate to kill.

=pc: I- I was just curious! It's why you wear the uniform right?! Because they-

She punches you square in the nose before pulling you off the desk and throwing you to the floor.

=receptionist: Fucks sake, {pc.name}. You don't bring up shit like that unless you're looking for trouble. I can kill you just for you knowing that now.

She lets out an exasperated sigh. Drynn comes over to check what the hell just happened but she shoos him away.

=receptionist: What were you even hoping to accomplish by asking me that? You want to know the people I killed for AlphaCorp? All Five-hundred and thirty-seven of them? Just to end up in a receptionist desk?

=pc: I mean-

=receptionist: [b][i]No![/i][/b]

You whince as she raises her voice.

=receptionist: Why the fuck should I ever tell you who I-

=gavin: Because I told them who you are.

You both jump when Gavin appears behind Maja, who would have accidentally stabbed him if he hadn't caught her wrist.

=gavin: Ease up Maja, we don't have a mole.

=receptionist: Now why the fuck would you tell {pc.himHer} what I was?

=gavin: Because they are to be trusted, and in turn we must be trusted. Perhaps not with all the details, but they must know the people who we are and were if they are going to work with us. You know what's coming, what we need them for.

Maja was about to say something in protest but cut herself off, letting out a sigh. Gavin comes around and picks you up off the floor.

=gavin: You really should have talked to me before asking her about that. But, to keep it short, she was an assassin. She did kill five-hundred and thirty-seven people. Were they all deserving? No. Did she have a choice? No. Does she regret it?

Gavin looks at Maja.

=receptionist: Yes.

=gavin: There. Are you satisfied?

You nod your head and Gavin pats your shoulder.

=gavin: Good. I need to get back to work. Next time... try not to get stabbed, yeah?

He walks behind you and you return to your spot in front of her.

=receptionist: Was there anything else you needed?             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       receptionist       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName                    id       SceneCharAdd       data             slots             name          	   rawValue       gavin       var          	   rawValue                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Gavin    	   descSlot          	   rawValue       Ask about Gavin.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Drynn    	   descSlot          	   rawValue       Ask about Drynn.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks              MajaDrynn1             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: You know... Drynn is actually quite taken by you.

Her eyes open a bit wider and a smirk forms on her face.

=receptionist: Is that so~? Is that what you two were talking about over there~?

You nod.

=pc: He said you were the most beautiful woman he's ever seen. Maybe that's why he struggles with talking to you~

She giggles and gets up, popping her back.

=receptionist: Thank you for the information. It's about time I went on break though, maybe take a shower. I'll be back soon~

She steps around the desk and kisses your cheek. You watch as she walks toward Drynn, her tail swishing excitedly behind her.

Drynn jumps a bit as she shows up. The two start talking and you can see the bright orange blush forming on his face from here. You can't help but laugh, but then watch in amazement as she starts to pull the huge dragon.

=drynn: What did you do...?

He asks quietly as he walks past you. You give him a cute little wave and watch as they go toward the barracks. Seems like it'll get spicy~             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Follow    	   descSlot          	   rawValue       Be a peeping tom.    
   stateSlot          	   rawValue       MajaDrynn2       checksSlot             checks           	   codeSlot             blocks                   id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       SecurityFloorBarracks10             id       SceneCharAdd       data             slots             name          	   rawValue       drynn       var          	   rawValue                    id       GameSetPCLocation       data             slots             var          	   rawValue       SecurityFloorBarracks11             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       Leave them be.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              MajaDrynn2             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    Y  You sneak through the barracks, following Maja and Drynn closely while drawing the eyes of every other security member. Drynn seems to be resisting her pulls a little bit, but the feline is clearly way too strong for him to resist, so he gives up fighting.

Eventually you pass through the locker room once they're done changing and snicker to yourself as you come up to a shower corner, leaning to listen in.

=receptionist: -do these showers work? I never come in here so I wouldn't know.

=drynn: I-It's rather simple... you uh, stand under them and the water turns on. Then you use the dials to change the temperature... I prefer mine hot... look I-

=receptionist: How hot? I can take the heat if that's what you're worried about~

She giggles and shakes her ass toward Drynn as she gets under the shower head, turning up the heat and making it practically boiling. She whinces a bit but that's when Drynn comes up behind her and turns it down just a tad, a much more comfortable level.

=drynn: This hot. Otherwise, it's too hot for the boilers to keep up-

She smirks and presses her rear against Drynn's crotch, causing the male to stiffen up, both in stance and down there. As matter of fact, it's only just now you realise that this dragon is packing a cannon between his legs.

=drynn: What are you-?

=receptionist: Don't play dumb, Drynn~ Admit it, you've been wondering what I felt like, weren't you~?

Drynn goes silent. You can't see it from here, but you know his entire face is probably a bright orange right now.

=receptionist: Exactly~

She lets out a few chuckles and turns to face him, pressing her chest against his as she looks up.

=receptionist: What's been keeping you~?

=drynn: I uh... I'm nervous-

=receptionist: Don't be, I'm ready and willing~

She smiles and turns to press her back against him before the male huffs.

=drynn: Okay.

=receptionist: Oka- [b][i]OH!![/i][/b]

Drynn pushes Maja against the wall, pinning her against it as she laughs.

=receptionist: Careful ya big fuck~! I'm fragile~

She giggles and Drynn rubs her abdomen.

=drynn: Heh, no you're not~

He smirks and prepares himself.             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       drynn       isVar              varName              npc             value       receptionist       isVar              varName              bodyState.naked             value             isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value             isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       Watch further.    
   stateSlot          	   rawValue       MajaDrynn3       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       SexPinnedBehind    	   animData             state             value       fast       isVar              varName              data             pc             value       drynn       isVar              varName              npc             value       receptionist       isVar              varName              bodyState.naked             value             isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value             isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value             isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName                    id       SceneCharAdd       data             slots             name          	   rawValue       nova       var          	   rawValue                    id       SceneCharAdd       data             slots             name          	   rawValue       risha       var          	   rawValue                    id       SceneCharAdd       data             slots             name          	   rawValue       gavin       var          	   rawValue              MajaDrynn3             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �	  You watch in awe as Drynn lines up his gargantuan cock with Maja's exposed cunt, missing his first thrust and hitting her belly.

=receptionist: Holy shit! W-wait this might not be a goood ide-[b][i][color=#e849e6]AHN~!!![/color][/i][/b]

You hear Maja let out an extremely high-pitched moan as Drynn nails her down with one singular thrust.

=drynn: What was that~?

=receptionist: Ohh fuck~! You are huuuge, unf...~! Gimme more~! Break me you brute~!

He strokes her cheek before pulling back his hips and slaming forward again, forcing out another high-pitched moan from Maja, and even more following subsequent thrusts. The wet plapping of Drynn's balls slapping against Maja's soaked pussy can be heard from where you're listening.

That's when you hear someone behind you.

=nova: {pc.name}? What are you-?

=pc: Shh!

You shush her and motion to look around the corner, Nova's eyes going wide as she sees the scene.

=nova: H-Holy shit... the big guy actually went for it...?

=pc: I kinda nudged it along... holy fuck look at him go...

You both start to blush intensely as you watch Drynn push his chest against her back and pick up one of Maja's legs, starting to thrust even faster.

=receptionist: [b][i]Yessss~!!! Fucking breed me~!!! Oh by the gods~!!![/i][/b]

You both cover your mouth as Maja gets flipped over to face Drynn, their lips locking as the dragon's ferocity doubles.

That's when you two hear someone else coming up from behind.

=risha: {pc.name}? Nova? What the fuck-?

=pc: Shh!
=nova: Shh!

Nova motions to look around the corner and Risha has the exact same reaction Nova did, although she smirks after the initial shock wears off.

=risha: Well I'll be damned~ Fireball finally got his pussy~

She giggles.

=pc: Will you shut the fuck up for two seconds?

Nova snorts and Risha goes quiet.

=drynn: Ngh~! Who's a good girl now, eh~?

The dragon taunts while Maja moans like a slut.

=receptionist: Meeee~! Ohhh fuuuuck yeeeeeessss~!!!!!

Her voice reached such a high pitch all three of you whince.

=risha: Fuck that bitch can scream...

That's when the three of you hear another person coming up from behind.

=gavin: Risha? Nova? ...[i]{pc.name}[/i]?? What the hell-?

=pc: Shh!
=nova: Shh!
=risha: Shh!

He shuts up instantly and looks around the corner, only to duck back in.

=gavin: Holy fuck, finally... been trying to match those two all week.

=nova: Gav, I love ya, but shut the fuck up.

Nova sticks her tongue out at him playfully and the two go back to looking around the corner.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       Watch further.    
   stateSlot          	   rawValue       MajaDrynn4       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       SexPinnedBehind    	   animData             state             value       inside       isVar              varName              data             pc             value       drynn       isVar              varName              npc             value       receptionist       isVar              varName              bodyState.naked             value             isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value             isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value             isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName                    id    	   LewdFuck       data             slots             name          	   rawValue       receptionist       part          	   rawValue       vagina       second          	   rawValue       drynn             id       LewdCumInside       data             slots             name          	   rawValue       drynn       second          	   rawValue       receptionist       part          	   rawValue       vagina       source          	   rawValue       Penis       val          	   rawValue      �?            id       LewdForceImpregnate       data             slots             name          	   rawValue       receptionist       second          	   rawValue       drynn       MajaDrynn4             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    u  You watch as the dragon's grunts get louder and louder.

=drynn: Fuuck~! I'm getting close~!!

=receptionist: [b][i]Breeed meeeee~!!!![/i][/b]

Once again, Maja's scream was so loud that you wished you were wearing earplugs.

=gavin: [i]...my fucking ears...?[/i]

Their grunts and moans finally reach their peak as Drynn gives one final thrust into her, trying to knot her but he's too big! Maja lets out a moan as the dragon's cock fills her to the brim!

You watch excess cum splurt out of Maja's cunt as her legs squeeze the dragon's hips, trying to pull him in deeper to no avail.

=pc: Ho-Lee... so much...
=nova: You think Eliza is in love with him?
=risha: After how much he just came? Most definitely~
=gavin: Would you three shut the fu-?

=receptionist: [b]HEY!!!![/b]

You all look at the couple who just turned around to spot you. Uh oh.

=receptionist: You motherfuckers! I'll show you to be a peeping tom!

She practically jumps off Drynn's dick, who tries to grab her but misses.

=risha: Scatter! [i]Fucking SCATTER!!![/i]

Nova and Risha take off and Gavin does the 'peace out' hand gesture before fading out of existence.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Uh... Run?    	   descSlot          	   rawValue       Try to escape Maja.    
   stateSlot          	   rawValue       MajaDrynn5       checksSlot             checks           	   codeSlot             blocks                   id       SceneCharRem       data             slots             name          	   rawValue       gavin             id       GameSetPCLocation       data             slots             var          	   rawValue       SecurityFloorElevator1             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       SecurityFloorElevator1             id       GameHasEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc       MajaDrynn5             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    /  You follow Nova and Risha as they sprint out of the showers, nearly tripping on several things as you all run out into the lobby. You don't even have to look behind to know she's keeping on your heels, as you can hear her paws slapping the floor.

You spot Nova and Risha fumbling with the elevator as you come running up.

=pc: [b][i]OPEN THE FUCKING ELEVATOR!!![/i][/b]

You shout, alerting Nova and Risha to how close you, and in turn Maja, are. The elevator doors open and the three of you rush in, the doors closing just in time as it starts to descend.

You all heave sighs of relief as the banging on the elevator doors goes away the lower you go.

=pc: That... haah... was way too close...

You three share a laugh at the absurdity of the situation before an impact on the roof of the elevator makes you all jump and... probably shit yourselves.

=nova: The fuck was that?!

=risha: She didn't...

Suddenly the elevator's escape hatch opens and the lights go out. The last thing you hear is Nova and Risha getting their shit rocked by Maja before-

...

...

...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       ...    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       MajaDrynn6       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       sit       isVar              varName              data    
         pc             value       eliza       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       SceneCharAdd       data             slots             name          	   rawValue       eliza       var          	   rawValue                    id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       med_lobbymain             id       GameSetPCLocation       data             slots             var          	   rawValue       med_lobbymain             id       GameRemoveEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc       MajaDrynn6             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    3  You let out a happy sigh as you sip at your coffee, the heat helping to warm you up just a tad bit in this empty lobby. That's when a magazine on your desk catches your eye. Picking it up, it's about your mother's company. Apparently they just- and it's in the trash now. With another sip of coffee you forget you ever saw it and decide instead to pick up the next piece of paper on the desk. It was a manifest of all currently admitted patients and their reasoning, plus treatments.

You cross reference it with any patients who were recently discharged, slowly going down the list when the chime of the elevator gets your attention. Looking up, you see a naked lynx step out of the elevator, blood dripping from her palms as she walks further in. You immediately get up to see what happened, coming over. ...until you see three unconcious people in the elevator she just came from.

=eliza: ...it's going to be a long day isn't it?

=receptionist: Yes. Got some rope burn on my hands, do you any bandages? Maybe some ointment?

=eliza: I'll get one of the nurses to check you out. Who did you beat up?

The lynx shrugs and walks over to the desk as a few nurses come out of the secured area, only to immediately take the lynx with them and send for stretchers upon noticing the bodies.

You step over to the elevator and crouch down, inspecting them in the dim light.

=eliza: Let's see... Nova, Risha... wow. Oh, and there's {pc.name} too.

She lets out a small chuckle and turns to the nurses with the stretchers.

=eliza: Get them in the back, I need to hear the story behind this.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Wake Up...    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       MajaDrynn7       checksSlot             checks           	   codeSlot             blocks    
               id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       medical_hospitalwards             id       GameSetPCLocation       data             slots             var          	   rawValue       medical_hospitalwards             id       GameDoWound       data             slots             name          	   rawValue       pc       who          	   rawValue       receptionist             id       GameDoWound       data             slots             name          	   rawValue       pc       who          	   rawValue       receptionist             id       GameDoWound       data             slots             name          	   rawValue       pc       who          	   rawValue       receptionist             id       GameDoWound       data             slots             name          	   rawValue       pc       who          	   rawValue       receptionist             id       GameDoWound       data             slots             name          	   rawValue       pc       who          	   rawValue       receptionist             id       ScenePlayAnim       data             slots             anim             animID       GivingBirth    	   animData             state             value       birth       isVar              varName              data    
         pc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       SceneCharRem       data             slots             name          	   rawValue       receptionist             id       GameAddEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc       MajaDrynn7             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    k  You slowly come to, waking up inside the hospital wards. You look around your immediate area, trying to sit up before an overwhelming pain hits you, forcing you let out a scream of near agony.

=pc: [b][i]Aughh!!![/i] Fuck!!![/b]

You clench your eyes shut as you start to squirm on your bed, arms clutching your stomach, practically seizing up as you feel someone put their hands on you.

=eliza: Easy, easy {pc.name}! Relax!

Eliza shouts as she tries to hold you down to no avail.

=eliza: Someone help me out here!

She calls and you feel a few more people come to pin you down. The pain is too much to handle! It feels like every fiber in your muscles is on fire, that every single one of your ribs was splintered, as brutal as it sounds.

=eliza: Damn it, {pc.name}! Hold [i]STILL!![/i]

 Just then you feel your head get pinned as a syringe gets jabbed into your neck, whatever was inside it being injected into your blood stream. Slowly, the pain starts to fade away and you are able to finally stop squirming, the nurses letting you go and causing Eliza to sigh.

With the pain gone, you open your eyes and look at Eliza.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       MajaDrynn8       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID    	   Sleeping    	   animData             state             value       sleep       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              hideNPC             value             isVar              varName                    id       GameRemoveEffect       data             slots             val          	   rawValue       Wounded       name          	   rawValue       pc             id       GameRemoveEffect       data             slots             val          	   rawValue       Wounded       name          	   rawValue       pc             id       GameRemoveEffect       data             slots             val          	   rawValue       Wounded       name          	   rawValue       pc             id       GameRemoveEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc             id       GameRemoveEffect       data             slots             val          	   rawValue       Wounded       name          	   rawValue       pc             id       GameRemoveEffect       data             slots             val          	   rawValue       Wounded       name          	   rawValue       pc       MajaDrynn8             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: Sorry Eliza...

You say with a strained voice, adjusting yourself on the bed. You can still feel some of the burn and discomfort from your injuries, but it's much more manageable.

=eliza: No, no. I should apologize. I shouldn't have shouted. How's the pain?

=pc: Much better... thanks.

She smiles and holds your cheek.

=eliza: Don't mention it. You probably got the worst of it, to be honest.

You let out a laugh that turned into a painful cough, to the concern of Eliza.

=pc: How so?

=eliza: Risha and Nova both had armor to take the hits. You didn't. You should consider yourself lucky you didn't get killed from your injuries.

You shudder.

=eliza: What happened anyway?

=pc: Oh you know... us being peeping toms and watching Maja get railed by Drynn.

Eliza cocked an eyebrow.

=eliza: Honestly, that does not surprise me anymore. Just don't get caught next time, okay? As much as I enjoy looking at your naked body, I don't enjoy putting it all back together~

She giggles and kisses your cheek before blinking.

=eliza: I mean that in a uh... it kinda hurts to put it back together- You get what I mean!

You laugh and Eliza walks over to the door while you sit up.

=eliza: Lemme know when you're ready to go and I'll take you back to the lobby.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Nova    	   descSlot          	   rawValue       Check on Nova    
   stateSlot          	   rawValue       MajaDrynnNova       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID    	   Sleeping    	   animData             state             value       sleep       isVar              varName              data             pc             value       nova       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value             isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              hideNPC             value             isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Risha    	   descSlot          	   rawValue       Check on Risha    
   stateSlot          	   rawValue       MajaDrynnRisha       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID    	   Sleeping    	   animData             state             value       sleep       isVar              varName              data             pc             value       risha       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value             isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              hideNPC             value             isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       Time to go.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneStartLeashParade       data             slots             name          	   rawValue       eliza       locSlot          	   rawValue       med_lobby_start    
   afterSlot             blocks                   id       SceneSetState       data             slots             name          	   rawValue       MajaDrynnEnd       MajaDrynnNova             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    j  You walk up to Nova's bed, sitting on it slightly while she lays there without her armor.

=nova: Sup?

=pc: Just checking in. You alright?

She lets out a quiet psh.

=nova: Just another day at the office, ya know? A few broken ribs here, a few sprained bones there, comes with the job really.

You two share a short laugh.

=pc: Guess we learned not to spy on Maja when she and Drynn are at it, huh?

=nova: That we did.

You both laugh a bit more.

=pc: Good chatting, take care.

You pat her shoulder.

=nova: You too. Come visit me more often! I get lonely without my puppy~

She giggles and squishes your cheek.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Risha    	   descSlot          	   rawValue       Check on Risha    
   stateSlot          	   rawValue       MajaDrynnRisha       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID    	   Sleeping    	   animData             state             value       sleep       isVar              varName              data             pc             value       risha       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value             isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              hideNPC             value             isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       Time to go.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneStartLeashParade       data             slots             name          	   rawValue       eliza       locSlot          	   rawValue       med_lobby_start    
   afterSlot             blocks                   id       SceneSetState       data             slots             name          	   rawValue       MajaDrynnEnd       MajaDrynnRisha             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You walk up to Risha, who was laying on a bed after being stripped of her armor.

=risha: You're alive?

She says with a smirk as she sat herself up.

=pc: To your disappointment I'm sure~

You wink and the two of you share a laugh.

=risha: Fuck off, after I saw what that bitch did to ya I didn't think you'd wake up. Scary stuff.

You shrug and lean back a bit.

=pc: I guess I'm just... built different.

=risha: Nah, you're built stupid.

=pc: Fuck offff!

You give her a playful shove, causing her to laugh as she lays back.

=pc: Ahh... good chat. I'll cya around Risha.

=risha: Sure you will~

She slaps your ass as you turn to walk away. You give her a 'really?' look and she just sticks her tongue out at you.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Nova    	   descSlot          	   rawValue       Check on Nova    
   stateSlot          	   rawValue       MajaDrynnNova       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID    	   Sleeping    	   animData             state             value       sleep       isVar              varName              data             pc             value       nova       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value             isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              hideNPC             value             isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       Time to go.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneStartLeashParade       data             slots             name          	   rawValue       eliza       locSlot          	   rawValue       med_lobby_start    
   afterSlot             blocks                   id       SceneSetState       data             slots             name          	   rawValue       MajaDrynnEnd       MajaDrynnEnd             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    |   =eliza: Here we are! You behave now!

She giggles and returns to her desk, leaving you to do whatever you want. ...for now.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       Time to go.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       FlagSetBool       data             slots             var          	   rawValue       majadrynnfucked       value          	   rawValue                   id       FlagSetBool       data             slots             var          	   rawValue       majawatched       value          	   rawValue             vars              chars             receptionist             realid       receptionist       start             variant              drynn             realid       drynn       start              variant              nova             realid       nova       start              variant              risha             realid       risha       start              variant              gavin             realid       gavin       start              variant              eliza             realid       eliza       start              variant           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       SecurityFloorLobby8       executeType          	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavinoffice1    	   thenSlot             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       Maja    	   descSlot          	   rawValue       Chat with Maja       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:majachat    	   elseSlot             blocks                   id       EventButtonDisabled       data             slots          	   nameSlot          	   rawValue       Maja    	   descSlot          	   rawValue    $   Maja looks busy... go bother Gavin.       images           
   drynnchat             name       Drynn Chat       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You approach the big dragon who turns to you, their orange eyes drilling into you with hostile intent. But you see right through that, aided by Maja's words.

=pc: Hey Drynn. Maja told me to come say hi.

He huffs and looks across the way at Maja, who waves at you two.

=drynn: ...hmph. Fine. Make it quick.

He turns his head back towards to elevator, but at least he's listening.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Himself    	   descSlot          	   rawValue       Ask about himself.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Gavin    	   descSlot          	   rawValue       Ask what he knows about Gavin.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Maja    	   descSlot          	   rawValue       Ask what he knows about Maja.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       Leave       checksSlot             checks           	   codeSlot             blocks                    id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       drynn       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName              Drynn             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: Tell me about yourself. Maja said you came from a uh... tribal society?

Drynn nods and turns his head toward you, arms crossed.

=drynn: I was one with the Mu'kutai. Fire breathers.

He inhales before exhaling a small stream of flame. The tattoos on his body glow a bit brighter as he breathed the flame, similar to how Gavin's eyes glow when he uses his. Perhaps there's a connection?

=pc: Wow! That's pretty cool!

Drynn smirks and you hear his tail thump. It seems you pleased him.

=drynn: Yes. Us Mu'kutai take great pride in our abilities. It may be uncomfortable, but I would rather have it and never use it rather than need it and not have it.

You nod in understanding. You would probably feel the same way if you had such an ability. Unfortunately... you aren't Mu'kutai, which means no fancy fire breathing magic for you.

=pc: How does it work?

Drynn hums in thought before shrugging.

=drynn: I don't know. We never questioned how, and instead just understood that we could.

You hum in turn. Sounds like a good philosophy... well, unless the 'how' is sacrificing your life force. In which case it'd be stupid... but you shrug that thought away.

=pc: What do you typically use it for?

He hums again.

=drynn: We would use it as illumination, or to light our torches and fires when other methods proved to be... ineffective. Have you seen a Mu'kutai Bonfire?

You shake your head and he smirks.

=drynn: Prove to be a good inmate, and maybe I'll show you one day.

You nod.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Gavin    	   descSlot          	   rawValue       Ask what he knows about Gavin.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Maja    	   descSlot          	   rawValue       Ask what he knows about Maja.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       Leave       checksSlot             checks           	   codeSlot             blocks              Gavin             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    	  =pc: What do you know about Gavin?

He huffs.

=drynn: Gavin is an AlphaCorp officer, and a powerful one at that. He holds much authority, yet not against people like the captain.

You nod.

=drynn: He may express his power in weird ways, but we all must respect it. Those who challenge it... are often reminded who he is. Such as with Risha when she challenged his authority.

You remember that. You can only imagine Risha's face turning whiter as she got called out.

=drynn: I personally felt a bit attacked with that message as... I have had some fun with the inmates too. But it's few and far between. They must earn my favor first.

You think for a moment, almost missing the subtle smirk he just gave you, which sends a shiver down your spine.

=pc: I-I see...

=drynn: Mhm... back to Gavin. I've seen examples of his power before and it is rather... confusing to me. He can blink in and out of existence at will... yet still prefers walking when he joins us on patrol.

=pc: He joins you on patrol?

=drynn: Sometimes. He mostly observes... but when we are actually in trouble, it's like watching a fighting movie. I remember one time I was patrolling with two other guards. We were just passing by the workout area when we were ambushed by about six inmates. We managed to take four down, but the last two had weapons and our batons were out of charge. One of the other guards was about to get cut up when he arrived, sending his fist right into his jaw and taking them to the floor in a mere second.

You blink.

=drynn: When the other inmate realised he was there and went for a stab, I watched as Gavin grabbed their wrist and twisted their arm, making them drop the blade before kneeing him right in the elbow. I've never heard such a disgusting crack in my life, not even when training in the Mu'kutai. To make a rather gruesome detail short, they had to get their elbow fixed and put in a cast for about four weeks. It was both sad and hilarious to see what the inmates wrote on that cast.

=pc: What happened to the other inmates?

=drynn: Most went to the stocks, but the ones with the weapons were put into solitary, as they could have easily killed us in our position. Gavin dragged them there personally, and we never had problems from those two again.

You shiver.

=drynn: Was there anything else you needed?             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Himself    	   descSlot          	   rawValue       Ask about himself.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Maja    	   descSlot          	   rawValue       Ask what he knows about Maja.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       Leave       checksSlot             checks           	   codeSlot             blocks              Maja             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      =pc: What do you know about Maja?

=drynn: Oh, Maja? Erm...

He looks at her and you see his cheeks grow a bit more orange.

=pc: ...you have a thing for her don't you?

=drynn: What?! No. Fuck off.

He crosses his arms and turns his head away. You can see his cheeks glow an even brighter orange.

=pc: You do! You fucking dooo! I see it in your cheeks!

You giggle and he snaps at you, literally, forcing you to take a step back.

=drynn: So what if I do or don't? Why is it any of [i]your[/i] fucking business?

You blink and watch as some flame comes out of his maw.

=pc: I- I meant no offense by it... I just thought it was cute that you're shy about it. I didn't really figure you to be nervous around women here.

=drynn: Yeah? Well stop teasing me about it...

=pc: Why are you nervous about it anyway?

He shuffles his feet for a second.

=drynn: Because she's the most beautiful woman I've ever seen...

You both turn your head toward her and nod your head.

=pc: Yeah. She's drop-dead gorgeous. Hm... what if I helped you out?

=drynn: Wh- What do you mean?

=pc: Talk to her for you. Ya know... move things along~?

He shakes his hands at you.

=drynn: N-No! Please don't...!

You giggle and shrug.

=pc: Fine, fine~

He sighs and you think... what if you actually did?             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Himself    	   descSlot          	   rawValue       Ask about himself.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue    
   drynnmaja       value          	   rawValue                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Gavin    	   descSlot          	   rawValue       Ask what he knows about Gavin.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue    
   drynnmaja       value          	   rawValue                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       Leave       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue    
   drynnmaja       value          	   rawValue                   id       FlowIf       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       majawatched    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Watching    	   descSlot          	   rawValue       Ask about it?    
   stateSlot          	   rawValue    	   Watching       checksSlot             checks           	   codeSlot             blocks              Leave             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    r   You nod at him and take a step back.

=pc: Good chat, Drynn.

He nods and huffs, saying nothing as you walk away.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       stand       isVar              varName              data    
         pc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName           	   Watching             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   =pc: Do you wanna talk about us watching-

=drynn: [b]No.[/b]

Drynn huffs and you saw a bit of flame come out of his mouth. Probably best to leave it alone.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Himself    	   descSlot          	   rawValue       Ask about himself.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Gavin    	   descSlot          	   rawValue       Ask what he knows about Gavin.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Maja    	   descSlot          	   rawValue       Ask what he knows about Maja.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks              vars              chars             drynn             realid       drynn       start             variant           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       SecurityFloorLobby       executeType          	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue    	   drynntip    	   thenSlot             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       Drynn    	   descSlot          	   rawValue       Try talking with Drynn.       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:drynnchat    	   elseSlot             blocks                   id       EventButtonDisabled       data             slots          	   nameSlot          	   rawValue       Drynn    	   descSlot          	   rawValue    %   Drynn doesn't look very talkative...       images           
   gavinchat             name       Gavin Chat       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   Gavin looks up from his computer as you walk in, smiling as you sit down in the chair across from him.

=gavin: Ah, {pc.name}. Welcome back. How can I help?             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       sit       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       sit       isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Himself    	   descSlot          	   rawValue       Ask about himself.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Maja    	   descSlot          	   rawValue       Ask what he knows about Maja.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Drynn    	   descSlot          	   rawValue       Ask about Drynn.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                    id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavindead1    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Death    	   descSlot          	   rawValue       Ask about his death.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Death    	   descSlot          	   rawValue       ??? (Hint - Talk to Maja)             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavininfertile    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Infertility    	   descSlot          	   rawValue       Ask about his infertility.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Infertility    	   descSlot          	   rawValue       ??? (Hint - Talk to Maja)             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks              Gavin             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: I want to hear more about you.

=gavin: Still? Aren't you tired of hearing about my stuff by now?

He asked with a chuckle.

=gavin: I don't really like talking about myself unless I have to. How about this, I'll tell you about my family and from then on we agree to not ask about me anymore, yeah?

You nod.

=gavin: Alright. I was the son of another red fox named Andrew H. Pearson, and his first name is actually where I get my middle name.

=pc: Gavin Andrew Pearson then?

=gavin: Indeed. My mother's name was Josephene L. Roberts. Or at least she [i]was[/i] a Roberts until she married my father two months after my birth. My father was a bank manager and helped run some of AlphaCorp's largest banks, while my mother was a tailor. She would always sew me these fancy little clothes for when mine were either worn out, or I grew out of them. To this day I'd still prefer her clothes to AlphaCorp's formal garb, and that is saying something. I look [i]good[/i] in an officer's suit. But I look better in my mother's. They also fit better.

He chuckles and continues.

=gavin: My father pulled in enough money to keep us in high places while my mother took on the dominant parental role, while also managing things around the house. It was a good time to be alive... until I was seventeen, when my mother became ill. She didn't last very long against it, she had a weak heart you see. It was a black day when we laid her to rest. I still visit her every now and then but, ah... I haven't been able to for a while. Maybe I should drop by again some day.

You nod.

=gavin: My father did not handle my mother's passing very well. He already had a short fuse with her around, but she was his anchor. With nothing to hold him down, to calm him, he started to crack and it wasn't long until he broke.

Tears well up in Gavin's eyes and he covers his mouth.

=gavin: I found him- ...I-

He goes silent.

=gavin: I need a-

Suddenly he vanishes, leaving you in an empty room with his computer still open on the table. You come around to the other side of his desk and decide to look up Andrew H. Pearson. The first thing you find is a news article describing how Andrew died from a... self-inflicted gunshot wound. The article also went into detail about how a note he left described the grief and anguish he felt after losing his wife, Josephene. Apparently, the next of kin, Gavin A. Pearson, was never found despite authorities declaring he was the one who called them to the scene.

So far, there are no leads as to the seventeen year old's wearabouts, but tips and knowledge are highly encouraged and rewards will be granted by The AlphaCorp General Security Commision for any information that leads to the recovery of Gavin A. Pearson.

=pc: Fuck...

You return to your seat. A few minutes later, Gavin return.

=gavin: Sorry about that, ah... I uh...

=pc: Don't say it anymore. I know what happened.

You motion to his computer where he sees the article. Immediately he closed it and let out a sigh.

=gavin: Yeah, let's... let's talk about something else.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Maja    	   descSlot          	   rawValue       Ask what he knows about Maja.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Drynn    	   descSlot          	   rawValue       Ask about Drynn.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                    id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavindead1    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Death    	   descSlot          	   rawValue       Ask about his death.    
   stateSlot          	   rawValue       Death       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Death    	   descSlot          	   rawValue       ??? (Hint - Talk to Maja)             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavininfertile    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Infertility    	   descSlot          	   rawValue       Ask about his infertility.    
   stateSlot          	   rawValue       Infertility       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Infertility    	   descSlot          	   rawValue       ??? (Hint - Talk to Maja)             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks              Maja             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    *  =pc: What can you tell me about Maja?

=gavin: You mean the receptionist? Maja Cortez?

You nod your head.

=gavin: Maja is one of AlphaCorp's top officers. She actually used to be a mercenary before she came here, a rather successful one at that, too. So successful in fact, that she was offered a position here as an assassin. Now, I can't tell you what jobs she did, as it's both none of my business, and because I don't know any of them. I wouldn't ask her about it either, as I don't think she'd take kindly to anybody, especially an inmate, knowing she used to be one of AlphaCorp's top assassins.

=pc: Is that why she's so mean?

=gavin: I wouldn't say she's mean, more like... testing you and your buttons. Seeing how far you go before you bend or break, or even submit possibly. She's a rather unique character once you get to know her, and fiercely loyal. I'd know because of one time her and I were eating lunch downstairs. While watching the inmates, some fucker came by and threw a condom balloon at me. Thankfully it didn't break, but she picked it up and threw it right back at the guy. It hit him so hard you could hear the fucking clap from miles away, not to mention he got covered in his own cum, so I'd say deserved.

Gavin let out a giggle and leaned back.

=gavin: Anywho. Anything else you needed?             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Himself    	   descSlot          	   rawValue       Ask about himself.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       majaassassin       value          	   rawValue                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Drynn    	   descSlot          	   rawValue       Ask about Drynn.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       majaassassin       value          	   rawValue                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavindead1    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Death    	   descSlot          	   rawValue       Ask about his death.    
   stateSlot          	   rawValue       Death       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       majaassassin       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Death    	   descSlot          	   rawValue       ??? (Hint - Talk to Maja)             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavininfertile    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Infertility    	   descSlot          	   rawValue       Ask about his infertility.    
   stateSlot          	   rawValue       Infertility       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       majaassassin       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Infertility    	   descSlot          	   rawValue       ??? (Hint - Talk to Maja)             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks              Drynn             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: What can you tell me about Drynn?

He hums and leans back in his chair.

=gavin: You mean the guard who nearly knocked you out on your way in?

You nod.

=gavin: I can't tell you much about him per se, but I can tell you about his people, the Mu'kutai. The Mu'kutai is a clan of dragons far away on a planet in a different solar system, who agreed to work with AlphaCorp after our initial visit. Despite his people being considered 'tribal', they were actually quite civilized. We were able to barter a lot of our supplies for interesting trinkets and whatnot with the Mu'kutai villagers. I even still have the necklace one gave me.

Gavin reached under the collar of his shirt, pulling up his Bluespace crystal necklace, still floating and defying gravity, as well as an interesting necklace adorned with shiny crystal-like balls with what looked to be flames inside them.

=gavin: The necklace actually helps me to stay warm when things get cold, as that is real fire inside the crystals. We have no idea how they managed to make these, but I've chalked it up to 'mysterious dragon magic' that we can't understand.

Gavin laughs a bit and puts the two necklaces back under the collar of his shirt.

=gavin: Sure, Drynn and his people were raised rough and that in turn made them strict and rough in their own right. But, beneath the layers of stone that protects their outsides, lay a valuable and precious heart that gives them fierce loyalty to those they deem worthy of it. Meaning, if you make friends with Drynn, you'll have a valiant protector who will probably save your ass a few times if he has to.

You two share a smile.

=gavin: Anything else ya needed?             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Himself    	   descSlot          	   rawValue       Ask about himself.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Maja    	   descSlot          	   rawValue       Ask what he knows about Maja.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                    id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavindead1    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Death    	   descSlot          	   rawValue       Ask about his death.    
   stateSlot          	   rawValue       Death       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Death    	   descSlot          	   rawValue       ??? (Hint - Talk to Maja)             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavininfertile    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Infertility    	   descSlot          	   rawValue       Ask about his infertility.    
   stateSlot          	   rawValue       Infertility       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Infertility    	   descSlot          	   rawValue       ??? (Hint - Talk to Maja             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks              Death             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    o  A bit of dread fills your being as you go to bring this up.

=gavin: I sense anxiety coming off you. What's up?

You swallow.

=pc: I uh... read on your database entry that you died.

He tilted his head, looking baffled and confused.

=gavin: First off, how did you get access to my database entry? That is locked under Security Class Omni. Secondly, what are you talking about? If I died, I wouldn't be sitting here across from you now would I?

He seemed to be getting upset.

=pc: I uh-

=gavin: Who opened my database entry, [b]{pc.name}?[/b]

His eyes start to glow brighter and you feel the temperature in the room starting to drop massively as his eyes seem to burn a hole in you.

=pc: It- It was Maja...

All of a sudden the air warmed up again and his gaze relaxed.

=gavin: Thank you, {pc.name}. Now, please don't go looking through anymore documents outside your Security Class. As an AlphaCorp officer, it is my duty to remind you that you are Security Class One in the Security Floor alone. Understand?

You nod, finding the sudden professional behavior odd.

=gavin: Good. Now, I will not pursue any punishment for you or Maja. However, if I catch wind of something similar, I will not hesitate to drop the full weight of the legal hammer on the both of you.

He fixes his stance, the air growing more... calm now as he sighs.

=gavin: Is there anything else I can help with?             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Himself    	   descSlot          	   rawValue       Ask about himself.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Maja    	   descSlot          	   rawValue       Ask what he knows about Maja.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Drynn    	   descSlot          	   rawValue       Ask about Drynn.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                    id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavininfertile    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Infertility    	   descSlot          	   rawValue       Ask about his infertility.    
   stateSlot          	   rawValue       Infertility       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Infertility    	   descSlot          	   rawValue       ??? (Hint - Talk to Maja             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks              Infertility             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =pc: I read in some medical documentation that you're... infertile?

Gavin blinks before heaving a sigh and spinning his chair away from you, taking a glass of whiskey with him.

=gavin: What about it?

He asked with a bitter tone.

=pc: How? You look so healthy, I find it hard to believe someone like you could be infertile.

=gavin: The Bluespace Experimentation projects. That's how. Being shot with raw Bluespace Energy might have given me my powers, yet in exchange I lost my ability to reproduce. It could have been worse, much much worse. I once saw someone melt away from exposure to raw Bluespace due to a genetic mutation. A genetic mutation that forced their body's cells to become unbonded from each other and... well it wasn't pretty.

You struggle to visualize the concept but given the fact you just saw Gavin shiver, it must have been pretty bad.

=gavin: I'd rather lose the ability to reproduce, and in turn have children, than get reduced to goop from a change in my molecular or genetical structure. Wouldn't you?

You see the tip of his muzzle as he looks to his right, his glowing cyan eye centered on you.

=pc: I suppose so. One of those fates worse than death...?

Gavin lets out a hum of agreement.

=gavin: I had a girlfriend around the time we found out I couldn't have offspring. We were gonna get married, have some kids, and settle down. Sure, I would still be a slave to AlphaCorp and I'd be called away to do my job, but at least we could lead a normal, happy life. ...until we got into a fight and... split ways.

=pc: When was this?

You hear a lighter as Gavin lights a cigarette.

=gavin: We learned of the infertility a year and a half ago. We split not even four months ago.

Yikes...

=gavin: If that's all, I'd like the room to myself please.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Himself    	   descSlot          	   rawValue       Ask about himself.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Maja    	   descSlot          	   rawValue       Ask what he knows about Maja.    
   stateSlot          	   rawValue       Maja       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       About Drynn    	   descSlot          	   rawValue       Ask about Drynn.    
   stateSlot          	   rawValue       Drynn       checksSlot             checks           	   codeSlot             blocks                    id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavindead1    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Death    	   descSlot          	   rawValue       Ask about his death.    
   stateSlot          	   rawValue       Death       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Death    	   descSlot          	   rawValue       ??? (Hint - Talk to Maja)             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue       No more questions for now.    
   stateSlot          	   rawValue       leave       checksSlot             checks           	   codeSlot             blocks              leave             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   You nod and stand up.

=pc: Good chat. Do it again sometime?

He raises his glass up at you before taking a swig and you take your leave.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              vars              chars             gavin             realid       gavin       start             variant           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       SecurityFloorOffice(1)14       executeType          	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue    	   drynntip    	   thenSlot             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       Gavin    	   descSlot          	   rawValue       Talk to Gavin       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:gavinchat    	   elseSlot             blocks                   id       EventButtonDisabled       data             slots          	   nameSlot          	   rawValue       Gavin    	   descSlot          	   rawValue    /   Gavin look busy. Go talk to Maja or something.       images              prologueending             name       Prologue Ending 1       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You toss and turn in your sleep, horrible nightmares assaulting your mind as you can't stop thinking about what Gavin wants you to do. The ideas, the possibilities, your fears, they all loom over you. You see yourself die, again and again, ripped apart by some blue mass of raw energy. You hear voices, screaming, explosions, alarms until finally-

[b][i]BANG!!![/i][/b]

Your eyes shoot open as you shoot up in bed, breathing quickly, heart pounding, sweat dripping down the side of your head as you hyperventilate. You do your best to calm yourself down, closing your eyes again and focusing on your breathing, reciting breathing exercises until you're calm again. You open your eyes, expecting to find your cell... except you're not in your cell.

You're in The Void.

The dark, endless mass of The Void is all around you. An eternally empty field filled with nothing but black and grey fog that conceals the floor as you lay in it. You stand up, knowing that he is close. You pick a direction and start walking.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Walk    	   descSlot          	   rawValue       What else can you do?    
   stateSlot          	   rawValue       Walk       checksSlot             checks           	   codeSlot             blocks              Walk             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You roam the endless plains of The Void's abyss. You don't know how long it's been since you woke up here. It could have been hours. It could have been days. It might have even been weeks, or months. Your mind drifted to the possibility of roaming for literal years but... no, it's not been that long. You'd be dead if it were the case. ...or would you?

You never were able to recall just how much time you spent in The Void after your previous visits. It either felt like an eternity, or like nothing happened at all. Not knowing just how much time you spent in this place was maddening, and it felt like your mind was being split in two the longer you spent here.

That's when you see Gavin off in the distance.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Run    	   descSlot          	   rawValue       Run to Gavin.    
   stateSlot          	   rawValue       Gavin       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName              Gavin             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You start to run at him, panting as The Void's heavy fog settled in your lungs, making breathing more difficult. However, the closer you got to him, the easier it was to breathe. It seems he heard your struggling, as he starts to come to you as well, stopping once he was close and letting you finish the last amount of distance.

=gavin: Heya.

You blink at him. How can he say that so casually after you've been locked up in here for so long?!

=pc: Heya?! Is that it?! Do you know how LONG I've been running around this place?!

He pulls out a stop-watch.

=gavin: Err, give or take five minutes. Why?

...

=pc: What?

=gavin: Oh, that's right, I should have explained that time feels like it's moving differently in here. That's why I keep the stop-watch. Helps prevent madness. ...sorry about that.

You- I-

=pc: I want to kill you.

=gavin: Haven't we been down that route already?

You sigh and throw your hands up.

=pc: Whatever. What am I here for? What do you want?

=gavin: The time has come. Meet me in my office when you're ready.

=pc: Wait, it's happening today?

=gavin: Well, when you wake up, you remember what we have to do, right?

=pc: We have to shut down the BSRT right?

=gavin: BlueSpace Reality Transporter, correct. I'll fill you in when you arrive in person. Maja's going to be helping us out.

=pc: That's a relief. Is she here?

=gavin: No. I can only retain one link to someone at a time, and right now you're the only one I've established a link with.

=pc: Well aren't I special?

You put a hand on your hip.

=gavin: Truly, you ended up with one of the world's most important missions to ensure that we never gain the ability to tear apart reality to invade another. Isn't it exciting?

=pc: Sure.

Gavin sighs and you can feel the presence of The Void getting weaker.

=gavin: Oh, before I forget. Make sure you stash anything you don't want to lose. I'm going to have to do a strip search on you and bring you in naked, and anything I find has to be either thrown away or incincerated. Excluding the collar, of course.

=pc: Really? That's going to be such a pain in the ass...

=gavin: Boohoo. See you soon.

You start to sink into the floor. At this point, you're just used to it. You close your eyes, and prepare to wake up...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Wake Up    	   descSlot          	   rawValue       Awaken.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       FlagSetBool       data             slots             var          	   rawValue    
   prologue1       value          	   rawValue             vars              chars             gavin             realid       gavin       start             variant           	   triggers                   triggerType       SleepInCell       triggerSettings              executeType           	   priority      �?      code             blocks                   id       FlowIf       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       majadrynnfucked    	   thenSlot             blocks                   id       FlowIf       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       gavindead1    	   thenSlot             blocks                   id       FlowIf       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       majaassassin    	   thenSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:prologueending       images              prologueending2             name       Prologue Ending 2       devcomment              states                           code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  [b][color=#ff0000]WARNING - You are entering a POINT OF NO RETURN! After carrying out the mission to stop the BSRT, you will be UNABLE to return to the main game until the BDCC: Dark Days story is concluded! It is HIGHLY advised that you finish ALL unfinished business AND make a backup save before proceeding! Any items you have on you right now will be moved to your STASH in your cell for when you conclude the story to be retrieved at your leisure.

YOU HAVE BEEN WARNED.[/color][/b]             id       ScenePlayAnim       data             slots             anim             animID       Nothing    	   animData             state             value       nothing       isVar              varName              data                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   I'm Ready    	   descSlot          	   rawValue       Start the mission.    
   stateSlot          	   rawValue       ready       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName                    id       SceneCharAdd       data             slots             name          	   rawValue       gavin       var          	   rawValue                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   Not Ready    	   descSlot          	   rawValue    '   Take your time. Gavin will be waiting.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       GameSetPCLocation       data             slots             var          	   rawValue       SecurityFloorOffice(1)11             id       SceneEndScene       data             slots              ready             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You enter Gavin's office, the fox standing there with a cigarette in his maw as he looks over an old photo with a longing look in his eye.

=pc: Hey.

You say to declare your presence. Gavin looks up at you and puts the photo away inside his uniform.

=gavin: Hey, you ready to do this?

You nod your head.

=pc: Strip search me daddy~

Gavin rolls his eyes with a disgusted face before chuckling.

=gavin: Shut your face ya damn slut.

Gavin comes over and starts to pat you down, anything on you being removed and put on his desk.

=gavin: Holy shit, how do you carry all this around?

=pc: Maaagic~

=gavin: You don't say. It might as well be. Don't think I've ever seen anyone carry this much stuff on them all at once.

He laughs and keeps patting you down, eventually removing your uniform and leaving you bare to the world.

=gavin: Alright. All clear. Now I have to restrain you. ...fully.

Gavin opens a box full of all kinds of restraints, and not the kinky ones.             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id    A   ../../../../../FoxLib/CrotchBlocks/Story/PlayerHasChastityEvents       data             slots           	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   Oh boy...    	   descSlot          	   rawValue       This'll be fun...    
   stateSlot          	   rawValue       elizachastity       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   Oh boy...    	   descSlot          	   rawValue       This'll be fun...    
   stateSlot          	   rawValue       bound       checksSlot             checks           	   codeSlot             blocks                   id       InvForceEquipItemID       data             slots             item          	   rawValue       basketmuzzle       name          	   rawValue       pc             id       InvForceEquipItemID       data             slots             item          	   rawValue       inmateanklecuffs       name          	   rawValue       pc             id       InvForceEquipItemID       data             slots             item          	   rawValue       inmatewristcuffs       name          	   rawValue       pc             id       InvClearSlot       data             slots             item          	   rawValue       body       name          	   rawValue       pc             id       FlowIf       data             slots             conditionSlot          	   rawValue          block             id       LewdHasBodypart       data             slots             val          	   rawValue       penis       name          	   rawValue       pc    	   thenSlot             blocks                   id       InvForceEquipItemID       data             slots             item          	   rawValue       ChastityCage       name          	   rawValue       pc             id       InvClearSlot       data             slots             item          	   rawValue       underwearTop       name          	   rawValue       pc             id       InvClearSlot       data             slots             item          	   rawValue       underwearBottom       name          	   rawValue       pc             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value       gavin       isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName              elizachastity             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    b  Gavin starts to undo your pants, seeing your chastity cage that Eliza proudly adorned you with. Immediately he smirked.

=gavin: Damn. I thought I'd have to put you in one myself.

He chuckled a few times, but inspecting the cage further causes the fox to grimace. After a second, he stands up and grabs a tablet off his desk.

=pc: What is it?

He doesn't say anything for a few moments... before he finds what he's looking for.

=gavin: It seems we'll have to delay this... sorry, {pc.name}.

=pc: Why? What's wrong?

The fox looks at you and sits on his desk, lifting his leg up.

=gavin: Well, you're currently involved in one of Eliza's experiments. And, erm... I don't think I'd want to get in the way of my ex girlfriend's experiments...

=pc: Wait, Eliza is your-

He cuts you off with the clap of his hand.

=gavin: [b][i]Anyway![/i][/b] We can't do this today. I'll delay the experiment until after Eliza's has concluded. You bought yourself more time, {pc.name}. Enjoy it.

Gavin shoo's you away, practically pushing you out of the room.

...weird. Maybe you should ask Eliza about that.
(Not yet implemented.)             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              bound             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You grimace as Gavin tightens the bindings on you, the cuffs being much tighter than usual.

=pc: Jeez, why so tight? ...and restrictive?

Gavin chuckles and attaches a leash to your collar, giving it a gentle tug.

=gavin: You're going to be meeting The Director. Mr. Whittaker.

You blink.

=pc: Wait what? I am?

He nods.

=gavin: He's apparently been trying to do this project for a long time. How long? No clue. It was from before I joined apparently.

 He shrugs and looks at you.

=gavin: You ready to go?

You nod.             id       FlowIf       data             slots             conditionSlot          	   rawValue          block             id       LewdHasBodypart       data             slots             val          	   rawValue       penis       name          	   rawValue       pc    	   thenSlot             blocks                   id    	   SceneSay       data             slots             name          	   rawValue       pc       var          	   rawValue    5   Did you really have to put my cock in a cage though?             id    	   SceneSay       data             slots             name          	   rawValue       gavin       var          	   rawValue    ;   Yep! Anything can be a weapon. Especially a cock 'n balls.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue           
   stateSlot          	   rawValue       guard       checksSlot             checks           	   codeSlot             blocks                   id       GameSetPCLocation       data             slots             var          	   rawValue       SecurityFloorHall16             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       walk       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value       gavin       isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value             isVar              varName              further             value              isVar              varName           
   npcAction             value       walk       isVar              varName                    id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       SecurityFloorHall16       guard             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    9  You both move to the Restricted Zone where Gavin shoved the Elite Guard who gave you problems earlier.

=gavin: Out of the way, Jackie. Pay more attention.

=riotguard: Er- Y-Yes sir!

The guard stepped to the side and allowed you to pass.

=pc: Huh. Nice.

You stick your tongue out at the guard as you pass by.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue           
   stateSlot          	   rawValue    	   elevator       checksSlot             checks           	   codeSlot             blocks                   id       GameSetPCLocation       data             slots             var          	   rawValue       BSRTElevator             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       BSRTElevator    	   elevator             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    R  You enter the High-Command Elevator on the Security Floor and Gavin doesn't even have to push a button.

=gavin: Gavin Pearson, authorization code; Gamma, Security Class Omni. Override destination, Bravo Sierra Romeo Tango.

The elevator suddenly kicked to life and you feel yourself going down.

=pc: What the hell was all that?

=gavin: Security stuff. We can't have buttons or cards in this elevator in the event inmates manage to break through our defenses. So we all just have to remember the authorization codes and destinations based off the military alphabet. Like Alpha, Bravo, Charlie... stuff like that.

=pc: So the room with the Reality Transporter is literally just the acronym of it's name?

=gavin: Pretty much! Here's hoping we don't have to use the room ever again after this day though.

You both share a nod.

...

...

...

...

=pc: This is a really long elevator isn't it?

=gavin: Nah. Just really slow.

...

...

...

...

=pc: We aren't stuck are we?

=gavin: Would you relax? It's fine.

Suddenly the elevator stops and the doors open.

=gavin: See? Quit being a baby. Lets go.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue           
   stateSlot          	   rawValue       convo1       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value    	   director       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName                    id       GameSetPCLocation       data             slots             var          	   rawValue       BSRTOverlook             id       SceneCharAdd       data             slots             name          	   rawValue    	   director       var          	   rawValue                    id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       BSRTOverlook       convo1             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    s  You step out onto The Overlook above the BlueSpace Reality Transporter. It is an absolutely massive machine, taking up an entire floor below you. Gavin leans on the railing, looking down at it.

=gavin: Wait... something about this is famil-

=director: Mr. Pearson.

You both jump as a giant wolf in a red version of the Officer's Uniform appears. He looks to be covered in blood, but upon closer inspection, it seems to just be a type of paint...? Or perhaps his fur is just like that? Either way, he reminds you of a certain someone, but you can't put your finger on it...

=gavin: Ah, hello Mr. Whittaker, sir.

=director: This is the prisoner you chose for the project?

=gavin: Yes sir. They agreed to it and everything.

He looks at you and you nod. This illicits a hmph out of the giant wolf.

=director: I wouldn't have picked someone so small. But I would suppose you know best.

He turns and walks away.

=gavin: What do you mean by that?

=director: What? Can't recognize your own work when you see it?

He looks over his shoulder at Gavin, a smirk forming on his face before he continues to walk away.

=gavin: Oh... Oh no...             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue           
   stateSlot          	   rawValue       convo2       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       captain       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName                    id       SceneCharRem       data             slots             name          	   rawValue    	   director             id       SceneCharAdd       data             slots             name          	   rawValue       captain       var          	   rawValue              convo2             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      Gavin grabs his head as he looks down at the machine. His breathing starts to accelerate and it looks like he's losing control.

=gavin: Oh fuck, fuck, fuck!

He exclaims, drawing the attention of The Captain who came over.

=captain: Gavin?

=gavin: We have to stop it!

Corwin looks down at the machine.

=captain: What do you-?

=gavin: It's Project: Exodus!

Corwin tilted his head.

=captain: Project... Exodus?

=gavin: Project Exodus was a project I was assigned to a few years ago where I had to aid in the research, design, and implementation of a similar machine capable of ripping apart reality to access a new one.

=captain: How have I never heard of this?

=gavin: Because all traces of Project: Exodus were wiped from the databases after it's failure! It exploded and killed anyone involved in the project!

=captain: ...but you're still here.

Gavin's breath hitches as he realised he revealed that secret.

=captain: Ga-

=gavin: Corwin, brother, please, you have to trust me!

Gavin put his hands on Corwin's shoulders, shaking him slightly. Corwin just sighed.

=captain: There is nothing we can do. This is The Director's orders. Even if what you said is true, I can't stop it.

Gavin gently pushed Corwin to the side, putting your leash in his hands and rushing after the director.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Gavin    	   descSlot          	   rawValue       Take on Gavin's perspective.    
   stateSlot          	   rawValue       gconvo1       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       jog       isVar              varName              data    
         pc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       GameSetPCLocation       data             slots             var          	   rawValue       BSRTOverlook3             id       SceneCharRem       data             slots             name          	   rawValue       pc             id       SceneCharRem       data             slots             name          	   rawValue       captain             id       SceneCharAdd       data             slots             name          	   rawValue    	   director       var          	   rawValue              gconvo1             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   You rush toward The Director.

=gavin: Whittaker! Director! Please!

You shout as you chase him down, grabbing his arm just before he can turn the corner and catching the eyes of nearby researchers.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Desperation    	   descSlot          	   rawValue       Plea.    
   stateSlot          	   rawValue       gconvo2       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Choking    	   animData             state             value       idle       isVar              varName              data             pc             value    	   director       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              gconvo2             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      The moment your hand touches his arm, Whittaker shoves you up against the wall, grabbing your neck and squeezing it.

=director: Touch me again and I'll snap your neck, Pearson.

You put your hands on his arms.

=gavin: You can't- ngh! Do this! You'll... kill us all!             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Beg    	   descSlot          	   rawValue           
   stateSlot          	   rawValue       gconvo3       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Choking    	   animData             state             value       choke       isVar              varName              data             pc             value    	   director       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName                    id       SceneAddMessage       data             slots             outputSlot          	   rawValue    ,   His hands squeeze tighter around your neck.       gconvo3             code             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Beg More    	   descSlot          	   rawValue           
   stateSlot          	   rawValue       gconvo4       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Choking    	   animData             state             value       hard       isVar              varName              data             pc             value    	   director       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName                    id       SceneAddMessage       data             slots             outputSlot          	   rawValue    E   His hands squeeze even harder around your neck... you can't breathe!             id    	   SceneSay       data             slots             name          	   rawValue    	   director       var          	   rawValue    6   I'm not going to kill anyone. This time it will work.             id    	   SceneSay       data             slots             name          	   rawValue       gavin       var          	   rawValue    \   N-No it-it won't! We ran... chk-! all the calcu-l-a-ations...! Didn't save- nhgaal...! us!!       gconvo4             code             blocks                   id    	   SceneSay       data             slots             name          	   rawValue    	   director       var          	   rawValue    )   Anything else you want to add, Pearson?!             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Submit    	   descSlot          	   rawValue       It's no use...    
   stateSlot          	   rawValue       gconvo5       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value    	   director       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       defeat       isVar              varName              gconvo5             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    o  You can't breathe. His hands only keep squeezing your neck tighter and tighter. It was a clear message... resistance will not be tolerated.

=gavin: [i]...if you wanna die... fine...[/i]

You say in your head before tapping on his arm.

=gavin: ok-! ok-!

He lets go of your neck and you fall to your knees, eyes watering as you take a long, painful gasp through your sore windpipe.

=director: Excellent, Mr. Pearson. I'm glad we could come to an understanding. Whenever you're ready, proceed down to the testing floor with your selected inmate and we will begin the project.

The Director smiles wickedly and walks away.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       You    	   descSlot          	   rawValue       Return to your perspective.    
   stateSlot          	   rawValue       preparation       checksSlot             checks           	   codeSlot             blocks                   id       GameSetPCLocation       data             slots             var          	   rawValue       BSRTOverlook             id       SceneCharAdd       data             slots             name          	   rawValue       captain       var          	   rawValue                    id       SceneCharRem       data             slots             name          	   rawValue    	   director             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       captain       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value       captain       isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value             isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName              preparation             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You both watch in shock as the situation played out before you, a growing discomfort forming in both of your bodies as you watch Gavin weakily stumble back over, taking the leash from Corwin.

=gavin: It's no use... bastard is gonna kill us all...

He says with a hoarse voice as he rubbed his throat with his free hand. You can't help but feel remorse for the fox.

=pc: Is there anything that can be done?

=captain: No. We must do anything The Director orders us to do. If he were to tell us to walk off a cliff into certain death... well, we'd have to follow. That goes for all of us.

You think back to Corwin's words when you first arrived.

=captain: [i]'You better start learning how to follow orders, a very useful skill.'[/i]
=pc: 'You better start learning how to follow orders, a very useful skill.'

Corwin smiles a bit.

=captain: I'm glad you remember. You didn't think I was referring to this prison alone, did you?

You shrug while Gavin drinks some water.

=pc: In the moment? Yeah. ...guess we're all slaves, regardless of standing.

=captain: That's a cynical way of putting it.

=gavin: What's left but cynisism in a world with no freedom?

Gavin asked, his voice having recovered a bit. Corwin finds no retort.

=gavin: You ready?

=pc: No.

=gavin: Neither am I. Corwin, when things start going wrong, be ready to run.

The captain looks concerned but says nothing, just nodding in agreement while you two descend the ladder in the floor.

...

=captain: [i]Good luck, brother.[/i]             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Down    	   descSlot          	   rawValue       Descend the ladder    
   stateSlot          	   rawValue       down       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value             isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName                    id       InvRemoveItemsWithTag       data             slots             tagSlot          	   rawValue       BDSMRestraint       name          	   rawValue       pc       op    	   anywhere             id       GameSetPCLocation       data             slots             var          	   rawValue       BSRTFloor13             id       SceneCharRem       data             slots             name          	   rawValue       captain             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       BlueSpaceRealityTransporter       down             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  I'd oddly easy to descend a ladder with a leash on you, provided the leash is long enough. What wasn't easy was doing it in cuffs. Both your wrist and ankle cuffs make descending the ladder significantly harder and more exhausting. At least Gavin, who was above you, was patient.

Mr. Whittaker on the other hand was clearly impatient regarding the situation.

=director: [i]If you two would please hurry up, we might be able to finish this by the end of the week.[/i]

This caused something to snap in Gavin.

=gavin: [b]Maybe if you installed cargo elevators like in the original FUCKING test chamber we wouldn't have this problem, now would we Whittaker?![/b]

The Director goes quiet for a moment.

=director: [i]Insubordination will not be tolerated, Mr. Pearson. But please. Continue.[/i]

Gavin lets out a loud sigh as you two finally arrived on the BSRT Floor. With the both of you down there, Gavin starts to remove your restraints, letting them fall to the floor.

=director: [i]Wonderful. Welcome everyone to the reveal of Project: Exodus, Mk. 2. An upgraded and enhanced version of a failed project that predates this one. For the first time in history, we are going to be able to tear apart the fabrics of our reality and traverse to a new one, one that may be similar to our own, and allow us to expand the already broad reach of our corporation from galaxies, to entire universes.[/i]

You look up just in time to see Corwin mouth 'My God...' as he looks at The Director with a mixture of concern and intrigue.

=director: [i]Mr. Pearson, the individual down there with Inmate {pc.inmateNumber}, was a former developer of the Exodus project. As such, he will be guiding you through the whole process. Mr. Pearson, when you're ready.[/i]

The Director throws the microphone he was using at Gavin, the fox catching it with ease. He heaves a sigh before speaking.

=gavin: The original concept of the BlueSpace Reality Transporter utilized a hyper concentrated form of PBSM, Pure BlueSpace Matter, in a concentrated location before splitting the matter using several hyper-sync conductors powering magnets powerful enough to attract the subatomic particles that mamake upll forms of BlueSpace Matter. The PBSM in the center, which would be referred to as The Core in our documentation, would then split apart and, in theory, create a wormhole through reality as we know it. The original concept worked as intended. However, something went wrong that resulted in the detonation and complete destruction of Sector Nine's R&D sector, killing almost everyone who was involved in the project.

Gavin paused to inspect the machine, his cyan eyes glowing brighter than ever before.

=gavin: It appears to be this BSRT is utilizing BSM as it's own fuel source, separate from the PBSM that will be used in the core. While theoretically safer, as once the BSM is expended and reduced to it's impure form, it would shut down and not cause a chain reaction of explosions within the facility from all the nuclear generators required to power several hyper-sync conductors, however at the risk of instead causing a BlueSpace meltdown, forming an extremely radioactive substance we are yet to identify and combat. In a worst case scenario, a detonation of the PBSM within The Core of the BSRT is to be considered the Best Possible Outcome in such event of complete destruction, as we would not be destroying the entire station or irradiating the area for several million miles from the sheer volume of radiation.

The room was dead silent. Everyone was staring at The Director who looked rather angry at Gavin. Nonetheless, Gavin threw the microphone all the way back up to them, aided by his own powers.

=director: [i]Proceed with the project.[/i]

Gavin nodded and stepped forward and into the area housing the core. Naturally, you followed close bebehind, but Gavin held up his hand, as a way of telling you to stay back.

Gavin got in the center and you watched as hydraulics on the support beams engage, an ungodly amount of force being put on them. When your eyes turn back to Gavin, you see him manipulating some form of Blue Matter, watching as he makes all these different connections with different strands and forming links within The Core, the giant glass-like ball housing the PBSM. You feel a tightness in your throat as the connections all start to come together on their own, which is when Gavin phases out of existence and appears next to you again.

=gavin: [b]BEGIN PHASE ONE!!![/b]

The fox shouts, his voice echoing in the chamber. A few alarms blare as you see energy forming at the tips of the support beams before being shot into The Core. You watch as the connections that Gavin made start to shift into a bigger and bigger mass. The bigger it gets, the bigger the energy on the tips of the supports gets and in turn the bigger the mass gets.

=gavin: [b]PHASE TWO!!![/b]

You hear the hydraulics engage again and start to cover The Core, blasting more concentrated energy into it before finally the glass couldn't take the pressure of the mass and broke under the extreme force of the growing mass of PBSM. You start to feel a slight pull toward The Core, like gravity, but it was extremely weak so you shrug it off.

You see Gavin give The Director a look, shaking his head. The Director ignore is.

=director: [i]PHASE THREE!!![/i]

All of a sudden the support beams retract and you feel the ground beneath you shake as you watch the support beams extend several large panels all around The Core. You watch as it starts to split apart, opening itself up and revealing a massive white void on the other side.

=director: [i]It's open! The portal is open! {pc.inmateNumber}, enter the portal now![/i]

Gavin looks at you and he shakes his head.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Stay    	   descSlot          	   rawValue       Follow Gavin's advice.    
   stateSlot          	   rawValue       Stay       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Go    	   descSlot          	   rawValue       Follow The Director's Orders.    
   stateSlot          	   rawValue       Go       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       walk       isVar              varName              data    
         pc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       GameSetPCLocation       data             slots             var          	   rawValue       BSRTFloor2       Stay             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    U  You decide that Gavin is the one to be trusted in this current moment. Afterall, he's done nothing but try to help you so far, except the times he attacked you in your dreams... okay maybe this-

Before you can say anything else in your head you watch as one of the support beams fails and collapses in on itself. The Portal in the center starts to rapidly destablize and Gavin ushers you back up the ladder.

=gavin: Shit, go, [i]go, [b]go[/b][/i]!!!

You start to climb up the ladder as fast as you can but it's not fast enough.

You watch as everyone on the overlook starts to run away, including the director. But that's when an explosion goes off. You can't see what happens as you're so focused on climbing, but that gravitational pull gets a lot heavier and you fall off the ladder.

You thrash about as you get pulled toward the portal, only for your wrist to get grabbed by Gavin who almost fell off as well and was holding on for dear life.

=gavin: [b]HANG ON, {pc.name}!!![/b]

He shouts over the loud noises of a destablizing core. You hear alarms blaring very loudly and the pull gets stronger.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Desperation!    	   descSlot          	   rawValue    	   Survive!    
   stateSlot          	   rawValue       Fall       checksSlot             checks           	   codeSlot             blocks                   id       GameSetPCLocation       data             slots             var          	   rawValue       BlueSpaceRealityTransporter             id       GameAddEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc       Go             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You push past Gavin's arm and he tries to stop you. You dodge all his attempts. You don't trust this guy anymore. He actively hid this stuff from you and not to mention he tried killing you earlier! This guy can't be trusted, he-!

Before you can say anything else in your head you watch as one of the support beams fails and collapses in on itself. The Portal in the center starts to rapidly destablize and Gavin ushers you back toward the ladder.

=gavin: Shit, go, [i]go, [b]go[/b][/i]!!!

You run to the ladder before starting to climb up as fast as you can, but it's not fast enough.

You watch as everyone on the overlook starts to run away, including the director. But that's when an explosion goes off. You can't see what happens as you're so focused on climbing, but that gravitational pull gets a lot heavier and you fall off the ladder.

You thrash about as you get pulled toward the portal, only for your wrist to get grabbed by Gavin who almost fell off as well and was holding on for dear life.

=gavin: [b]HANG ON, {pc.name}!!![/b]

He shouts over the loud noises of a destablizing core. You hear alarms blaring very loudly and the pull gets stronger.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Desperation!    	   descSlot          	   rawValue    	   Survive!    
   stateSlot          	   rawValue       Fall       checksSlot             checks           	   codeSlot             blocks                   id       GameSetPCLocation       data             slots             var          	   rawValue       BlueSpaceRealityTransporter       Fall             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    x  Your grip on Gavin's hand as he holds onto you weakens and you let go! You start flailing around again, trying to catch anything to save yourself as you get closer and closer to The Core!

Gavin tries his best to save you, conjuring up his own powers. You can feel the force of his powers pulling against the power of The Core but it isn't enough and you continue to drift.

=gavin: [i][b]{pc.name}!!! NO!!! NO!!!! NOOOO-!!!![/b][/i]

His words is cut off by the agony of being swallowed up by The Core, your entire world going black and all sound being lost.

You can't feel anything.

Your world is darkness.

...

Is this death?             id       SceneButton       data             slots          	   nameSlot          	   rawValue       ...    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       ...1       checksSlot             checks           	   codeSlot             blocks                   id       GameAddEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc             id       GameSetPCLocation       data             slots             var          	   rawValue       TheInbetween             id       SceneCharRem       data             slots             name          	   rawValue       gavin             id       ScenePlayAnim       data             slots             anim             animID       Nothing    	   animData             state             value       nothing       isVar              varName              data              ...1             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    l   ...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       ...    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       ...2       checksSlot             checks           	   codeSlot             blocks              ...2             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    l   ...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...
...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       ...?    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       AlexSocket       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       jog       isVar              varName              data             pc             value       alexrynard       isVar              varName              npc             value       socket       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value             isVar              varName              further             value              isVar              varName           
   npcAction             value       jog       isVar              varName                    id       SceneCharAdd       data             slots             name          	   rawValue       alexrynard       var          	   rawValue                    id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       eng_workshop             id       SceneCharAdd       data             slots             name          	   rawValue       socket       var          	   rawValue                    id       GameRemoveEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc       AlexSocket             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    #  ...
...

Socket held the light steady as Alex very slowly moved the wire toward the connector.

It was a very delicate process. Push too hard and he causes an overload. Push too soft and he doesn't get the right reading.

=alexrynard: Come on...

Alex says quietly before finally making the connection.

The whole damn thing sparks up and nearly explodes, making the fox toss the wire in a panic!

=alexrynard: Fuck!

The wire flings forward before flopping to the floor.

=socket: It's alright, we can try agai-!

[i][b]boom[/b][/i]

Alex and Socket's eyes go wide as they feel the ground shake, the sound of an explosion far away reaching their ears.

=alexrynard: ...
=socket: ...

=alexrynard: That wasn't me right-?

Suddenly, the prison's emergency lockdown alarm starts to go off!

=captain: [i]Attention all personnel! There has been an explosion in the upper levels! Lock down the entire prison! All engineering and medical personnel get to the upper levels immediately![/i]

Alex and Socket immediately take off, sprinting to the elevator!

...
...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       ...    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       NovaReaction       checksSlot             checks           	   codeSlot             blocks                   id       SceneCharRem       data             slots             name          	   rawValue       alexrynard             id       SceneCharRem       data             slots             name          	   rawValue       socket             id       SceneCharAdd       data             slots             name          	   rawValue       nova       var          	   rawValue                    id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       yard_novaspot             id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       jog       isVar              varName              data    
         pc             value       nova       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              NovaReaction             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  ...
...

Nova unclipped her leash from the prisoner before helping them out of their puppy gear, petting them on the head.

=nova: Such a good puppy~

She giggled and the prisoner barked before saying goodbye, not forgetting to call her 'mommy' as he left.

...

[i][b]Boom![/b][/i]

Nova nearly fell over as she felt the ground beneath her shake violently following the sound of an explosion. Immediately she pulls out her radio.

=nova: What the hell was that?! Is everything alright?!

=risha: [i]Something on the upper levels just exploded![/i]

Suddenly, the prison's emergency lockdown alarm starts to go off!

=captain: [i]Attention all personnel! There has been an explosion in the upper levels! Lock down the entire prison! All engineering and medical personnel get to the upper levels immediately![/i]

Nova, upon hearing the alarms, jumped to her feet and started to sprint toward the elevator. The other staff can handle the prisoners.

...
...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       ...    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       RishaReaction       checksSlot             checks           	   codeSlot             blocks                   id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       SecurityFloorBarracks3             id       SceneCharRem       data             slots             name          	   rawValue       nova             id       SceneCharAdd       data             slots             name          	   rawValue       risha       var          	   rawValue                    id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       jog       isVar              varName              data    
         pc             value       risha       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              RishaReaction             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      ...
...

Risha was laying in her bunk, getting some damn good sleep. She had just finished a rather long and grueling patrol and was looking forward to the R&R. However, this group of new recruits just kept blabbering on and on and it was starting to get on her nerves.

=risha: Hey! Do you mind? Some of us try to have decent sleep schedules around here!

She snapped. The recruits quickly shut up and moved on.

=risha: Finally...

...

[b][i]BOOM!!![/i][/b]

Risha fell off her bunk as an explosion practically made her fly with the force the shockwave made.

=risha: What in the fuck was that?!

=nova: [i]What the hell was that?! Is everything alright?![/i]

Risha quickly grabbed her radio.

=risha: Something on the upper levels just exploded!

Suddenly, the prison's emergency lockdown alarm starts to go off!

=captain: [i]Attention all personnel! There has been an explosion in the upper levels! Lock down the entire prison! All engineering and medical personnel get to the upper levels immediately![/i]

Risha practically jumped to her feet, grabbing her baton as the new recruits from earlier came running through, nearly ramming into her.

=risha: All of you! Secure this floor!

They all nod and shout a collective; 'Yes ma'am!' before sprinting off to secure the floor.

...
...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       ...    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       ElizaReaction       checksSlot             checks           	   codeSlot             blocks                   id       SceneCharRem       data             slots             name          	   rawValue       risha             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       med_lobbymain             id       SceneCharAdd       data             slots             name          	   rawValue       eliza       var          	   rawValue                    id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       jog       isVar              varName              data    
         pc             value       eliza       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       SceneCharAdd       data             slots             name          	   rawValue       alexrynard       var          	   rawValue                    id       SceneCharAdd       data             slots             name          	   rawValue       nova       var          	   rawValue                    id       SceneCharAdd       data             slots             name          	   rawValue       socket       var          	   rawValue              ElizaReaction             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  ...
...

Eliza just set down a few papers in regards to recent advancements in aphrodisiac related research within the lab, idly sipping at a cup of coffee to keep herself alive. Today in particular, for some reason, made the coffee taste like heaven. She couldn't really figure out why, but she didn't care. It tasted good, and that's all that mattered.

...

[b][i]Boom![/i][/b]

The entire floor shook violently as an explosion went off, nearly making her drop her mug but, unfortunately, making her spill it all on accident.

=eliza: What in the-?!

Suddenly, the prison's emergency lockdown alarm starts to go off!

=captain: [i]Attention all personnel! There has been an explosion in the upper levels! Lock down the entire prison! All engineering and medical personnel get to the upper levels immediately![/i]

A very loud 'shit' can be heard across the entire lobby from all the nurses.

...

=eliza: You all heard the man! Get a move on!

All the nurses scramble around, grabbing stretches, medical kits, whatever will be useful and rushing for the elevator.

...
...

The elevator dings and she is met with all the engineering staff, Alex, Nova, and Socket.

=alexrynard: Make room!

The engineers quickly split to allow the medical staff and Eliza inside, the stretchers just barely fitting.

The elevator makes a loud creaking sound as it starts to rise.

=nova: Uh, the elevator isn't going to snap under this weight, right?

=alexrynard: Probably not. I did make sure it was up to date when you, Risha, and {pc.name} got your asses handed to you though, so we should be fine.

=nova: ...should?

Alex shrugged, causing Nova to look up nervously as they continued to ascend.

...
...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       ...    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       GavinAwakening1       checksSlot             checks           	   codeSlot             blocks                   id       SceneCharRem       data             slots             name          	   rawValue       eliza             id       SceneCharRem       data             slots             name          	   rawValue       alexrynard             id       SceneCharRem       data             slots             name          	   rawValue       nova             id       SceneCharRem       data             slots             name          	   rawValue       socket             id       SceneCharAdd       data             slots             name          	   rawValue       gavin       var          	   rawValue       naked             id       ScenePlayAnim       data             slots             anim             animID    	   Sleeping    	   animData             state             value       sleep       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value             isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              hideNPC             value             isVar              varName                    id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       TheInbetween             id       GameAddEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc       GavinAwakening1             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    i  ...
...
...
...
...
...

=gavin: ...back here again huh?

[i]I suppose so.[/i]

=gavin: Am I dead?

[i]Yes.[/i]

=gavin: For real this time?

[i]. . .[/i]

=gavin: I'll take your silence as a no.

[i]You know the choice you made.[/i]

=gavin: Yes. And?

[i]You know the consequences.[/i]

=gavin: I don't think being barred from death would be considered a fair consequence.

[i]. . . It wasn't up for me to decide. You know this too.[/i]

=gavin: Will I ever be laid to rest?

...
...
...

[i]It remains to be seen.[/i]

...
...
...

You feel yourself slip away from the benevolent entity, falling into nothingness.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       ...    	   descSlot          	   rawValue       Awaken.    
   stateSlot          	   rawValue       GavinAwakening2       checksSlot             checks           	   codeSlot             blocks                   id       GameRemoveEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc             id       ScenePlayAnim       data             slots             anim             animID       GivingBirth    	   animData             state             value       birth       isVar              varName              data    
         pc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       GameSetPCLocation       data             slots             var          	   rawValue       DestroyedBSRTFloor43             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       DestroyedBSRTFloor43       GavinAwakening2             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  Your eyes open as you feel the power of your Bluespace Crystal fade, as well as the shield you conjured in the last possible moment. Though the moment that power is gone, you feel a strong, burning pain in your abdomen that causes you to scream in agony and squirm on the floor.

=gavin: Augh! [b][i]Fuck!![/i][/b]

You exclaim before looking down, hyperventilating. A piece of elongated rebar has penetrated through your abdomen and out the other side.

=gavin: O-Oh fuck... that's... not good...

You managed to say weakly as you pick yourself up off the ground, leaving the rebar in you.

You look around, vision blurry but still being able to see the absolute destruction that was left. The alarms that blare overhead is a muffled and echoing mess in your head, serving only to discombobulate you even more than you already are. You can't even stand straight without nearly stumbling over yourself. First order of business... breathe. You take in a few breathes, trying to calm your racing heart. It doesn't work very well, but it's something. Second thing, reorient yourself. You lean on the wall and clutch your head, shaking it a few times. Things seem a bit clearer now and everything isn't as muffled. You can hear talking now, actually, over the radio.

=nova: ...[unintelligable]...

=risha: ...[unintelligable]...

=eliza: ...[unintelligable]...

You shake your head a bit more and it clear yourself up even more.

=nova: [i]Alright, I've gotten all the employees into the panic room. Risha, how's things over there?[/i]

=risha: [i]Security Floor is secure. Eliza?[/i]

=eliza: [i]The nurses are tending the wounded that fled the explosion. More are running for supplies. Alex and another group of engineers is trying to cut their way through the elevator doors to get to the source of the explosion.[/i]

You look up. Yeah, they won't make it. The entire elevator hallway is nothing but rubble, you can see that from here.

=gavin: Don't- Ngh-!

You try to speak into the radio, but pain suddenly shoots through your body.

=eliza: [i]...Gavin? Was that you?[/i]

=gavin: Don't come down... [i]ah fuck...[/i] Elevator hallway collapsed... They won't make it through...

=eliza: [i]Oh my god it is...[/i]

=captain: [i]Gavin, it's a relief to hear you're still alive. Where are you?[/i]

=gavin: Down in the damn room you left me in... Got impaled on some rebar but I can move... not sure I can climb up the ladder though...

The was a brief silence.

=captain: [i]I'm sorry I didn't listen.[/i]

=gavin: Worry about it later, I need to get the hell out of here...

...

=alexrynard: [i]Gavin? This is Alex Raynard, you there?[/i]

=gavin: Yeah, surpisingly enough...

=alexrynard: [i]Good. I know a way out of there if you can make it up the ladder I see you by.[/i]

You look around, spotting a camera in the far corner, it's red light on and watching you. You give a small wave.

=gavin: Well... shit just got a whole lot harder...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Climb    	   descSlot          	   rawValue       Get out of there.    
   stateSlot          	   rawValue       GavinAwakening3       checksSlot             checks           	   codeSlot             blocks                   id       GameSetPCLocation       data             slots             var          	   rawValue       DestroyedBSRTOverlook42             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       DestroyedBSRTOverlook42             id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       walk       isVar              varName              data    
         pc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              GavinAwakening3             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You put the radio on your hip and start to climb, letting out pained noises as you weakly pull yourself up each rung of the ladder, feeling the strength leave your upper body faster and faster the higher you get.

=alexrynard: [i]You're almost there. I can see you on the camera. Just a few more steps to go.[/i]

It certainly didn't feel like it...

Once you're at the top, you nearly crash into the wall out of exhaustion, heart pounding and breathing heavily as you lean against it.

=eliza: [i]Easy Gavin, I know you're in a lot of pain, but if you don't-[/i]

You grab the radio.

=gavin: [b][i]I KNOW!!![/i][/b]

...

=gavin: I know...

You slump down against the wall. Pain and exhaustion right now are your biggest anchors that about to drag you off the deep end. You didn't need to be reminded of what 

=gavin: I haven't forgotten what you taught me...

You groan as you stand.

=gavin: Alex, where am I goin...?

...

A door opens up off in the distance.

=alexrynard: [i]Maintenance access.[/i]

You nod and start to limp.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Limp    	   descSlot          	   rawValue       You can't die yet...    
   stateSlot          	   rawValue       GavinAwakening4       checksSlot             checks           	   codeSlot             blocks                   id       GameSetPCLocation       data             slots             var          	   rawValue       DestroyedBSRTOverlook39             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       DestroyedBSRTOverlook39       GavinAwakening4             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    ~  You limp your way toward the door, using your hand to keep yourself steady.

=gavin: ...sorry I shouted, Eliza... I shouldn't have...

=eliza: [i]No, no... it's okay. I understand. Truly, I do. I'm just... worried.[/i]

=gavin: I know... we'll ta- [b][i]AGH!!![/i][/b]

You trip over part of the broken railing and fall to your knees, causing the rebar to rock in your abdomen and send another spike of pain through you.

=eliza: [i]Gavin?![/i]

=gavin: [b]I'm FINE!!![/b] I'm fine!!! Ngh... I just tripped... fuck me...

You stand back up and make it to the door... only to find out its a vent.

=gavin: ...Alex please tell me-

=alexrynard: [i]Yep, that's it.[/i]

=gavin: God damn it...

You drop to your hands and knees carefully before getting through the relatively fair-sized hole, coming out to a rather cramped but maneuverable hallway.

=gavin: I'm through... now what?

=alexrynard: [i]Find the ladder at the end of the maintenance hall.[/i]

=gavin: You're fucking joking...

=alexrynard: [i]You have a long climb ahead of you. ...unless you know how to open a hatch while being extremely far down.[/i]

You actually just might know how.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Vent    	   descSlot          	   rawValue    )   Rather suspicious there's a vent here...    
   stateSlot          	   rawValue       GavinAwakening5       checksSlot             checks           	   codeSlot             blocks                   id       GameSetPCLocation       data             slots             var          	   rawValue       SecurityFloorHall13             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       SecurityFloorHall13             id       GameAddEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc             id       ScenePlayAnim       data             slots             anim             animID    	   Sleeping    	   animData             state             value       sleep       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              hideNPC             value             isVar              varName              GavinAwakening5             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    *  =gavin: Hey uh... step away from that hatch..

=alexrynard: [i]Why? What are you doing?[/i]

=gavin: Just... trust me.

...

=alexrynard: [i]Alright, the hatch is clear. What are you going-[/i]

You pull out your pistol and fire a powered shot at it, causing the hatch to fly off. You can hear Alex's voice both coming down from the hatch [i]and[/i] in your radio.

=alexrynard: [i]HOLY SHI- [sounds of the radio dropping][/i]
=alexrynard: HOLY SHIT! LOOK OUT!!!

=gavin: Uh... oops?

You see the head of a rather angry alex come over the top of the shaft.

=alexrynard: A little warning next time?!
=gavin: I'm actively bleeding out from rebar in my damn abdomen! I can't exactly think that far ahead!

You sigh and watch as a rope is dropped down to your level.

=alexrynard: Grab on!

You take ahold of the rope and give it a tug. Suddenly you are yanked up the shaft at an inhumane speed. So fast in fact that your reach the top in a matter of seconds.

Of course, the consequence of such speed means you fall right down onto the floor... or at least you would have if you didn't end up in Eliza and Alex's arms.

=eliza: Easy there, we got you. Get me a stretcher over here!

You look at Eliza and feel a sudden weakness overtake you.

=gavin: Ah, hey love... been a minute hasn't it...?

Your voice comes out rather weak and you're lifted up onto the stretcher. Eliza says something but you can't understand it.

=gavin: I've been meaning to talk to you for so long... I just forgot to say it all...

...

=gavin: Eliza

...?

=gavin: ...I'm sorry...

...
...
...
...
...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Rest.    	   descSlot          	   rawValue    "   You can't continue on your own...    
   stateSlot          	   rawValue       GavinEliza1       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID    	   Cuddling    	   animData             state             value       idle       isVar              varName              data             pc             value       eliza       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName                    id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       TheInbetween             id       GameSetPCLocation       data             slots             var          	   rawValue       TheInbetween             id       InvForceEquipItemID       data             slots             item          	   rawValue       inmateuniformHighsec       name          	   rawValue       gavin             id       InvForceEquipItemID       data             slots             item          	   rawValue       inmatecollar       name          	   rawValue       gavin             id       SceneCharAdd       data             slots             name          	   rawValue       eliza       var          	   rawValue              GavinEliza1             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    
  ...
...

=eliza: ...Gavin?

You get shaken a bit and open your eyes.

=gavin: Mmh... what..? I was having a good dream...

You yawn and lean back into her, causing her to laugh and push you forward.

=eliza: Well okay then, mister. You can go back to dreaming then, but you won't get to do this~

Eliza leans over your shoulder and presses her lips to your cheek for a quick kiss, causing you to blink. You look over to her, baffled expression on your face, causing her to snort before laughing.

=gavin: How. Dare. You~! That's my job!

Your baffled expression breaks out into a smile before you're laughing too.

=gavin: You are not supposed to do that! Only I give the kisses 'round here, Eliza!

=eliza: Then gimme one already and quit hogging them all to yourself~!

=gavin: Oh now you done it~!

You turn around and pin her down, giving her all sorts of kisses. She shrieks while laughing.

=eliza: Ahh! Gavin stoooop you goof! You're gonna- PFFT!

She raspberries as some of her hair gets in her mouth, opening her up for a proper kiss. At first, her eyes open in shock at your bluntness but... eventually, she wraps her arms around your backside and relaxes, leaning into your advances while both your eyes close.

=gavin: Mmm... what I wouldn't give to spend eternity in this moment~

You tease as you press your foreheads together, causing Eliza to hum. You take the moment to adjust and get more comfy.

...

=gavin: ...I was given an offer today.

=eliza: Hmm?

=gavin: It basically boils down to... stay in prison forever, or sell my soul to AlphaCorp and work for them my entire life doing whatever they tell me.

She holds your cheek and smiles.

=eliza: Sounds like you already made your choice~

You hum and pull back a bit.

=gavin: I don't know. I'm happy here, with you. I don't really want to get separated, as they make it sound like I'll be going away.

=eliza: There's nothing stopping you from visiting me every once in a while. I like what we have going on too, but...

She closes her eyes.

=eliza: We can never truly be a thing if you're chained down in here. I want to be able to take you places, show you my favourite places to eat, enjoy... walking in a park with you that isn't on a space station or in a prison. Take you to my home, maybe... maybe even meet my family.

=gavin: ...but we can't do that if I'm a prisoner here in BDCC...

She nods.

...

...

...

=gavin: I'll do it. For us.

=eliza: For us.

You both share a smile and kiss each other deeply.

...
...
...
...
...

=gavin: [i]For us...[/i]
=eliza: [i]For us...[/i]             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Wake Up    	   descSlot          	   rawValue    	   Wake up.    
   stateSlot          	   rawValue       GavinEliza2       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID    	   Sleeping    	   animData             state             value       sleep       isVar              varName              data             pc             value       gavin       isVar              varName              npc             value       eliza       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value             isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value             isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              hideNPC             value              isVar              varName                    id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       medical_hospitalwards             id       GameSetPCLocation       data             slots             var          	   rawValue       medical_hospitalwards             id       GameRemoveEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc       GavinEliza2             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  =gavin: [i]For us.[/i]
=eliza: [i]For us.[/i]

...

The words echo again as you wake up. Your abdomen still feels like it's on fire, but... it's manageable. Though, you feel something heavy weighing down on your chest. Looking down, you find Eliza. Your heart jumps in your chest and you freeze. You want to run, you want to leave. You aren't ready for this conversation yet.

...

But you don't.

You do your best to lay back down and rest.

=eliza: ...you still don't trust people touching you?

You nearly jump as it's revealed she's actually awake.

=gavin: I- ...It's- It's not that... you were the only one... just-

=eliza: I know.

=gavin: ...are we ready for this conversation?

There was a pause and Eliza adjusted to be on her side, her cheek resting on your chest as she listened to your heart rate very slowly calm down, aided by her hand gently rubbing at your soft stomach.

=eliza: I think that's up to you. ...how long has it been?

=gavin: Four months, twenty seven days, twelve hours, thirty one minutes and twelve seconds. ...thirteen seconds.

She chuckles a bit.

=eliza: Time flies.
=gavin: Yet feels like an eternity.
=eliza: Hmm...

She looks up at you, her eyes still as beautiful as you remember.

=gavin: ...I think it might have been long enough.

She nods and rests her head back down.

=gavin: I still think-
=eliza: If you say you still think you can't give me what you [i]think[/i] I need, I'm jamming my thumb into your injury.
=gavin: I can't- [b][i]ACK!!![/i][/b]

You squirm as Eliza pushes her thumb near the spot you were impaled on rebar. Not into it like she said, but it certainly felt like it.

=eliza: That's for me to decide and always has been. Quit putting yourself down for fucks sake.

You look down at her.

=eliza: I decide what I need, and right now I need you. So quit acting like you're worthless and hug me back you-!

You cut her off with a tight squeeze, a tighter squeeze than you ever did and immediately Eliza knows something was up.

=eliza: Woah, woah... easy, Gavin. What-?

=gavin: I died, Eliza... that's why I've been so distant with you...

She wraps her arms around you.

=eliza: What do you mean you... died?

=gavin: You remember when I had to depart to Sector Nine? When the explosion happened? I... got caught in it. I was dead. For hours. But something brought me back... and I died again, in that chamber when the explosion went off. I didn't survive, Eliza. Nobody who got trapped in that room did.

She closed her eyes and pressed against his chest.

=eliza: I know. They were the first to tell me. I was hurt when you didn't...

=gavin: I didn't want you to worry, Eliza. ...but the details about that day are foggy at best. I forgot a lot of things, but... not about dying.

You both sit in silence and the entire scene in Sector Nine runs back through your head. The way The Core melted down, the explosion, being sucked into space, dying from asphyxiation... it was all too much and you clutch Eliza tighter.

=eliza: Easy big guy, you might blow my back out at this rate and not in a fun way.

...

=gavin: ...[i]snrt.[/i]

You chuckle a bit with Eliza.

=eliza: I'm serious though, ease up.
=gavin: Oh, sorry.

You ease off the hug and she climbs up your body, clutching your cheek and gazing into your eyes.

=eliza: I was so used to your eyes glowing, I forgot how beautiful they were.

You hum and she leans in. You clutch her head gently and your lips part, inviting Eliza in. You two share a slow, passionate kiss, making up for lost time. Quiet noises of love come from both of your chests, her purring, you rumbling. You don't know how long it lasts, but this is a moment you don't want to end. Yet it has to end sometime, and she pulls away slightly breathless.

=gavin: I still love you, Eliza.

=eliza: I love you too, goofball.

Your lips collide and share a much more passionate embrace, quiet moans escaping the both of you as your hands slide down Eliza's body and Eliza's in turn slides down yours. Her fur was so soft, so perfect-

=gavin: Ah!

You grab her wrist and yank it away as her hand touched your crotch, purely out of reflex.

=gavin: I-I'm sorry I-

=eliza: No, no, it's okay. Too soon.

You gently let your grip on her go and she rests back on your chest.

=gavin: Hm... I guess we're official again?
=eliza: Yeah. I'd say so.

...

=gavin: Love you Eliza. Sleep well, [i]love.[/i]

A purr escapes her throat and she closes her eyes while you close yours.

...

=eliza: I love you too, Gavin.

...
...
...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       ...    	   descSlot          	   rawValue       ...    
   stateSlot          	   rawValue       ForestAwakening       checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID    	   Sleeping    	   animData             state             value       rub       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value             isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              hideNPC             value             isVar              varName                    id       InvClearSlot       data             slots             item          	   rawValue       neck       name          	   rawValue       pc             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       ForestOrigin             id       GameSetPCLocation       data             slots             var          	   rawValue       ForestOrigin       ForestAwakening             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You groan and your eyes open, pain radiating all throughout your body as sensations return to your extremities. You feel tiny blades of grass digging into your form as you bring yourself up to your hands and knees, finally getting a good look as to where you are.

...

This isn't right.

You're in a thick forest, surrounded on all sides by trees and other various forms of vegetation. You stand up and look around more and more but all you can see is trees in every direction. You feel your neck and-

=pc: My collar! It's gone!

You look down, seeing the open collar on the grassy floor. You pick it up, reading the screen on the side as it beeps and flashes angrily.

[color=#ff0000]ERR - INVALID BLUESPACE ID - SEEK MAINTENANCE[/color]

Huh. It didn't unlock due to being out of range, but invalid 'Bluespace ID'? How does that work? ...you just realised that you couldn't care less. You're... free. You think. Unless this is all some elaborate game.

...

Your mind flashes back to the BSRT that sucked you in, and the agonizing pain that was nothingness. Could that be what this is? Were you sent to a different reality like how it was supposed to?

You aren't given much chance to think about it before the clouds above you start to darken and rain begins to descend upon your form. It was... pleasant. You can't help but stand there, staring up, eyes closed as real rain poured down on you and the forestry surrounding you.

=pc: ...freedom.

You break free of your stupor in the rain and look around.

You should probably start walking.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Get Up    	   descSlot          	   rawValue       Figure out where you are.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneAddMessage       data             slots             outputSlot          	   rawValue    -   You get the feeling you should move north...             id       SceneEndScene       data             slots              vars              chars    	         gavin             realid       gavin       start              variant              captain             realid       captain       start              variant           	   director             realid    	   director       start              variant              receptionist             realid       receptionist       start              variant              eliza             realid       eliza       start              variant              alexrynard             realid       alexrynard       start              variant              nova             realid       nova       start              variant              risha             realid       risha       start              variant              socket             realid       socket       start              variant           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       SecurityFloorOffice(1)14       executeType          	   priority      �?      code             blocks                   id       FlowIf       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue    
   prologue1    	   thenSlot             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       BSRT    	   descSlot          	   rawValue       Finish this.       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:prologueending2       images              prologueending3             name       Prologue Ending 3       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �
  You step out into the center of what looks to be a road, spanning endlessly in either directions, while the rain continues to pour down around you.

...

You can't really think of anything to do other than start walking. So, you pick a direction.

Whether it was left or right, you didn't really care. You had to go somewhere and this was probably the best way.

You don't get very far before you hear the siren of a cop behind you!

You get off the road but their spotlight shines on you and you put your hands up as they come up and get out of the car.

=policeofficer1: Hey! Are you alright? What are you doing out here naked?

You blink. He doesn't know you, or that you're a prisoner.

=pc: I uh-

=policeofficer1: Were you in an accident, kidnapped?

 He comes over to you, seeming to think you might be in a state of delusion, gently putting his hand on your shoulder. He just gave you the perfect excuse.

=pc: I uh- yeah, I- I was kidnapped...

He nods and he starts to escort you to his car, opening the rear for you.

=policeofficer1: Here, get in. I'll call in a sweep and we'll find the bastards.

You nod and willingly climb inside, the thought of being in the back seat of a police car again making you nervous. The officer shuts the door behind you and goes to his trunk, grabbing something before opening your door again, tossing in a towel.

=policeofficer1: Here, dry yourself off.

He gets in the car and starts driving, picking up his radio.

=policeofficer1: Dispatch this is Squad-Nineteen, possible victirm of a one-thirty-four in the Twin Peaks forest, requesting aerial search and sweep for suspects.

There was a short pause and you saw as a large ship flies above you, spotlight lighting up almost the whole damn forest.

=dispatch: Ten-Four Squad-Nineteen, Airwatch-Seven dispatched for search and sweep.

=policeofficer1: I see them. On the way back to the station. Poor guy seems rather shaken up.

It's because you're shivering, but you'll go along with it you guess.

=policeofficer1: Another thing, prepare some clothes. I found them naked.

=dispatch: Acknowledged. Dispatch out.

You sigh and close your eyes for a moment before looking out over the window, watching the ship sweep the trees. That's when it's spotlights go red as it locked in on something. You don't even get to process it's siren before its weapons light up the general area around it's light. You realise that it's where you woke up, where you left the collar.

=pc: What the fuck?!

The officer looked out the window before looking back at the road.

=policeofficer1: You must have been grabbed by some nasty dudes... don't worry, we'll figure all this out.

You can't help but sit in fear of what would have happened if you kept that collar as he continues to drive away...             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue           
   stateSlot          	   rawValue       chaptercard       checksSlot             checks           	   codeSlot             blocks              chaptercard             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You bundle up with the towel that was given to you, trying to get as much warmth out of it as you could while it dried you off. You didn't even realise just how cold you were, always used to the coldness that was the prison in general. Sure, some spots were warm but most of the time it was pretty chilly, and even then the warm spots would always make the cold worse.

=policeofficer1: We're coming up on the station now. Don't you worry, whoever kidnapped you won't hurt you anymore.

You nod, relying on this officer's kind heart to get you out of this situation.

...

It was then you realised that this wasn't just a normal police station inside a town... this was it's own prison complex.

Through the electrified fences you see prisoners getting beaten with whips as they chip and rocks and minerals with rusty pickaxes, some guards more sadistic than the previous and the next even moreso. It seems that the officer picked up on your worry.

=policeofficer1: Don't you worry none. You aren't going in there. We're just going to sit you down, get you into some new clothes, and see if we can't get to the bottom of this. Okay?

You nod.

...

Something tells you that this won't be a smooth trip.

...

[b][i][CHAPTER 1 - ARRIVAL][/i][/b]             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue           
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       GameAddEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc             id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       Road7             id       GameSetPCLocation       data             slots             var          	   rawValue       Road7             id       SceneSetLocName       data             slots          	   nameSlot          	   rawValue    	   The Road             id       SceneEndScene       data             slots                    id       SceneRunScene       data             slots             name          	   rawValue       bdccdd:ch1intermission    
   afterSlot             blocks              vars              chars           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       Road34       executeType           	   priority      �?      code             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:prologueending3       images              ch1intermission             name       Chapter 1 - Intermission       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    |  =pc: [i]Once, there was an explosion. A bang which gave rise to time and space.[/i]

You think back to how you first arrived here. An explosion within a testing environment that caused a Bluespace Portal to collapse and suck you into it.

=pc: [i]Once, there was an explosion. A bang that sent a planet spinning in that space.[/i]

You think on how life has been here so far. After your arrival, you got picked up by a police officer who escorted you to a police station on the edge of one of the major cities of the planet you're on. You were given new clothes, allowed to warm up in one of their offices, before being interrogated about what happened. You told them a bogus story of course, how you were just hiking in the woods when suddenly you were grabbed by someone you weren't able to see. You describe how you were knocked out, stripped, and then left for dead in the middle of the woods for at least two days, and that it was all you could remember. 

There really wasn't any evidence to back up your claim, however the ship that was called in claimed that they picked up on a rogue prison collar signal in the forest before promptly destroying it. This caused the prison to go on lockdown and do a full sweep, checking on every prisoner. Those who didn't obey the will of their captors were beaten again and again until they either submitted, were knocked out, or killed. You expected that to be the end of your chance at freedom when it was discovered that at least three inmates had broken out. Meaning... your story, against all odds, worked. What was a problem, however, was that you were not in the system at all. But that was easily mended by the police officer who brought you in, who somehow helped you get registered in this planet's system as a citizen. Something, something, refugee laws, whatever.

...then you were let go. Just like that. You were free, for the first time in who knows how long. This new sense of freedom was... unusual to you. You could never just go wherever you wanted to. You couldn't do whatever you wanted to do. Sure, you technically could have 'ruled' the prison, but... what would you have done then?

=pc: [i]Once, there was an explosion. A bang that gave rise to life as we know it.[/i]

That was about four and a half months ago. Nowadays, you're a nomad. You roam the endless roads of this planet, going from city to city, doing odd jobs for cash, sometimes legal sometimes not so legal, doing what you can to get by and survive for a few days before moving on. Your heart, your body, your mind and your soul are all fueled by this endless freedom you can now chase. You want to explore everything this new world has to offer. ...but nothing feels like home. No matter where you go, after a while you're left with this agonizingly empty feeling of homesickness but... you can't figure out why. You think back to the prison every now and then but you shake your head every time you do, banishing the thought. You don't want to think of BDCC, what it did to you. ...but you do miss everyone.

...

Nah, just let it go.

...

=pc: [i]...and then came the next explosion.[/i]

...
...
...

=phone: [i]Now Playing - Roaring Low, Easy Way Out.[/i]             id       ScenePlayAnim       data             slots             anim             animID       Nothing    	   animData             state             value       nothing       isVar              varName              data                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   The Road    	   descSlot          	   rawValue    &   Open your eyes and focus on the road.    
   stateSlot          	   rawValue       theroad       checksSlot             checks           	   codeSlot             blocks                   id       InvForceEquipItemID       data             slots             item          	   rawValue       LeatherJacket       name          	   rawValue       pc             id       InvForceEquipItemID       data             slots             item          	   rawValue       GuardHelmet       name          	   rawValue       pc             id       InvForceEquipItemID       data             slots             item          	   rawValue       SocketBackpack       name          	   rawValue       pc             id       SceneSetLocName       data             slots          	   nameSlot          	   rawValue       Highway I-241             id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       stand       isVar              varName              data    
         pc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       GameAddAtr       data             slots             name          	   rawValue       pc       var          	   rawValue      ��      op       stamina       theroad             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    (  Music fills your helmet as you speed down the road, your reverse trike going full speed as you follow the curve of the road along the side of the hill. Tall pines growing from below the highway stretch high above you, giving the road a slight amount of shade that, while making it a bit hard to see, does help keep you cool in the high temperatures of spring. Today was the day you left the nomad group you'd been travelling with for the past two weeks. You felt bad for leaving them, but that homesickness feeling you're running from started to creep in again. ...you've never been able to let go. All the memories, all the friends you made...

=pc: Alexis, turn the music up.

Your phone beeps and the music gets louder.

=phone: [i]Heard you call my name...[/i]

The brief image of Rahi pops into your head, the innocent kitty that always referred to herself in the third person who needed your help. ...and you helped her the best you could.

=phone: [i]...while I'm passing out.[/i]

The image of Tavi manifested into your head, the red block inmate who ended up becoming one of your best friends, if not more.

=phone: [i]The mistake I've made...[/i]

A picture of you, Nova and Risha popped into your head. They were guards, sure. They might have used you for pleasure a few times, sure... but you felt a connection to them nonetheless, even if it was mostly sexual.

=phone: [i]...can't be turned around.[/i]

Alex showed up in your head. All the trust excercises you two did together, and what was it all for? Just for you to leave him behind in the prison like how the captain nearly did.

=phone: [i]I took the easy way out.[/i]
...
=phone: [i]I took the easy way out.[/i]
...
=phone: [i]I took the easy way ouuut...[/i]

...

=pc: I did take the easy way out... didn't I...?

=phone: [i]I went one for one...[/i]

You think back to the fighting arena, how you dominated the ring and locked Ava in the slutwall, as well as how Eliza helped you take revenge by spiking her drug.

=phone: [i]...before casting out.[/i]

You think about how you fell into the portal and... you wonder whether or not you let go of Gavin on purpose or on accident. ...what would have happened if you didn't let go? Would you have died? Would you have survived the explosion?

=phone: [i]I took the easy way out.[/i]

Gavin's form in The Void appeared, pressing his hands against what looked like a glass wall.

=phone: [i]I took the easy way out.[/i]

Gavin tried to say something... but you didn't understand it.

=phone: [i]i took the easy way ouuut...[/i]

Gavin's eyes shined a bright cyan and he punched the glass wall. It cracked. He punched it again. It cracked further. With a third punch, he shattered part of the wall and reached through, trying to grab at you.

=gavin: [b][i]{pc.name}!!!![/i][/b]

Your eyes shoot open as the music from your phone reaches a crechendo making you swerve on your bike and dodge a car that was inside your lane.

=pc: [b]SHIT!!![/b]

You just barely missed the reckless driver, but at a cost of losing control of your bike as it slides on its side, it's front wheels expanding into it's trike formation as you yank on the controls, giving you better control in this situation. It takes a lot of effort, but you eventually stop sliding, having just prevented against a potentially fatal accident and leaving yourself intact. You look up the road you just came, the reckless driver gone without a trace. You clutch your chest, feeling extreme discomfort but finding nothing of note. You take a moment to catch your breath on the side of the road, walking your bike up a bit and hitting your hazards while music keeps blasting in your head.

=pc: Alexis, music off please.

Your phone beeps and the music fades away, leaving you alone with your thoughts and the sounds of your idle engine against the background of various sounds of forestry. You think about what you just experienced. Was that... really Gavin? That felt too real to just be a day dream. Not to mention you think you actually heard his voice... you might be starting to lose it, as if you weren't losing your mind with all the dreams you have about BDCC. ...you chuckle at the irony of that statement, shoving your thoughts under the metaphorical rug again and readying yourself to take off. You check behind you, letting a few cars pass before taking off and merging into the highway, your front wheels combining together as you get up to speed and take off down the road, listening to the sound of your trike's engine roar to help sooth your mind.

=phone: [i]Incoming call from: Phil-Osopher.[/i]

An image of Phil Osborne, the leader of the nomads you were riding with, popped up on the upper left-hand corner of your helmet's visor. He was a piece of work and that was putting it lightly. Still, he welcomed you in when you had nowhere else to go. It was like a weird little family. But it was better than nothing. Otherwise you would have literally gone insane. Perhaps now without that anchor, you really are going to go mad.

=pc: Answer.

There was a brief pause.

=phone: [i][color=#6cffb2]Hey {pc.name}! ...you really are leaving huh? Damn shame. Was nice having you around. Really, it was. I don't think we're all going to be the same without you.[/color][/i]

Your heart weakens slightly.

=pc: Sorry Phil. There's a lot of things going on in my head and... well, I think it was time for me to go anyway.

There was a hum on the other side.

=phone: [color=#6cffb2][i]Whatever it is you're running from... I hope you can find your peace. Truly. You're a bigger nomad than the rest of us, and we all have nothing but the highest respect for you. If you ever need anything, anything at all, you can always come to us. You'll always be apart of our family, even if it isn't much of one.[/i][/color]

Despite him trying to give you encouragement, boost your mood, all it does is make you hurt more and make you feel like an even bigger piece of shit for leaving them all there.

=pc: Thanks Phil-Osopher. I'll... I'll be seeing you around.

=phone: [i][color=#6cffb2]I certainly hope s- ... Hold on. [b]BOBBY!!![/b] Put that fucking thing down, do you- Ugh... we'll talk soon, kay {pc.name}?[/color][/i]

You chuckle despite your bad headspace.

=pc: Sure.

Phil hangs up the phone and you're left by your lonesome again. Just you and your thoughts on this long highway going toward only the gods know where. You think for a while longer and that's when your bike makes an angry sound, it's normally blue lights shifting to an orange color, indicating it's starting to run low on charge and you should try to find a spot to let it recharge. You see a sign on the side of the road that says there's a diner coming up. Maybe you can charge at a charging station there. Would definitely be better than letting the horrible solar panels charge it on it's own when it's dead. So it's decided. You'll make a stop at that diner and let your trike charge.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Pull Up    	   descSlot          	   rawValue       Stop at the diner.    
   stateSlot          	   rawValue       dinerarrival       checksSlot             checks           	   codeSlot             blocks                   id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       Sidewalk16             id       GameSetPCLocation       data             slots             var          	   rawValue       Sidewalk16             id       GameRemoveEffect       data             slots             val          	   rawValue       BlindnessAdvanced       name          	   rawValue       pc             id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       walk       isVar              varName              data    
         pc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       InvClearSlot       data             slots             item          	   rawValue       eyes       name          	   rawValue       pc       dinerarrival             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  Your quicken your trike's speed as you sense the battery getting lower and lower, eventually making it just as the lights go red. You pull up to the front parking lot, sliding your trike on top of an open charging space and getting off, going to the transporter bay in the back. You were lucky to get the Long Range Transporter variant of the Reverse Trike, as it's typically reserved for delivery companies who need to something that can carry a lot of cargo, have a long battery life, and be fast about it. So the geniuses at Raven Electromotorized Vehicles developed the Long Range Transporter variant of their Iconic Reverse Trike. And of course, they patented it immediately.

You open up the sealed box that took up the transporter bay, taking off your helmet and putting it inside the box before closing it and locking it up tightly. With your helmet secure and keys secure in your pocket, you step up to the sidewalk, ready to get up and go eat.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       SceneAddMessage       data             slots             outputSlot          	   rawValue    �   Seems your pockets are a little light... you might be able to get some cash if you sneak about. Diners like these always have the register in the kitchen.       vars              chars           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       Road7       executeType           	   priority      �?      code             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:ch1intermission       images              purpfoxchat             name       PurpFoxChat       devcomment              states                          code             blocks                   id       InvForceEquipItemID       data             slots             item          	   rawValue       LeatherJacket       name          	   rawValue       purpfox             id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       sit       isVar              varName              data    
         pc             value       purpfox       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       SceneOutput       data             slots             outputSlot          	   rawValue    u  You walk up to a table with a rather aggravated purple fox tapping away on a laptop.

=purpfox: Ugh... Mon Dieu... Je déteste ce code horrible. Cela va me prendre des semaines pour le réparer. ...Je suis bien trop fatigué pour ça...

She holds her head before picking up her mug, full to the brim with some rather potent looking coffee. You can smell it from here... she got it strong. That's when she noticed you, her bluish-teal eyes meeting yours.

=purpfox: Ah, hello! I didn't see you there. I apologize, was I being too vulgar...?

You shake your head, a smile forming on your face.

=pc: Nah, I couldn't understand any of it. What's that you're working on?

You motion to the laptop, drawing their attention back to it where they slap their forehead in frustration.

=purpfox: Just some code I'm working on for a friend. It is... being quite the nightmare though.

You take a look at it. It looks like the code of a video game where you can meet people in prison and fuck them. Seems very similar to what you went through, but this is 2D, and may more simplified.

=pc: I see. Yeah, that doesn't look the best to work with... Good luck though. Don't overwork yourself, okay?

She looks up at you with a smile.

=purpfox: Oh, I physically can't. But thank you!

You smile back at her and wave a hand as you walk away.

=purpfox: One last thing!

You turn back to her.

=purpfox: Nice jacket! I dare say it looks as good on you as it does on me~

She gives you a wink and it took you a minute to realise you're both wearing the same brand of leather jacket, color and all. This causes you to laugh and nod your head, finally taking your leave.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              vars              chars             purpfox             realid       purpfox       start             variant           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       Interior28       executeType          	   priority      �?      code             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       Jacqueline    	   descSlot          	   rawValue       A purple fox on a laptop.       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:purpfoxchat       images              donlyricchat             name       Don Lyric Chat       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You step up to a table where a heated discussion is going on between a dog and a hyena.

=don: -I'm saying, is that you need to stop getting me these porn games. I've already been messaged like eight times already about why I own so many.

=koyyeen: But it's funny though!

The golden retriever heaves a heavy sigh as he sips on a cup of coffee as black as his sense of humor.

=pc: Hey, what are you two talking about?

=koyyeen: Oh we're just having a laugh.

=don: No, we're talking about how you won't stop buying me random porn games off Steam. Okay, so, Lyrica here is like; 'okay, a new porn game just dropped on Steam. Let me get it for him!' and then he just gifts it to me out of nowhere for no reason, and I'm trying to get him to stop so I stop getting my messages blown up every time he does. It was funny the first few times, not anymore.

The hyena laughs for a bit while the golden retriever sipped his coffee.

=koyyeen: Yeah, pretty funny isn't it?

The hyena looks at you and you can't help but chuckle.

=pc: Yeah, does sound like a rather harmless practical joke.

The golden retriever sighs.

=don: It's too early for this...

You laugh before taking a few steps back, leaving them to fight amongst themselves.             id       InvForceEquipItemID       data             slots             item          	   rawValue       CasualClothes       name          	   rawValue       koyyeen             id       InvForceEquipItemID       data             slots             item          	   rawValue       OfficialClothesRed       name          	   rawValue       don             id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       sit       isVar              varName              data             pc             value       koyyeen       isVar              varName              npc             value       don       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       sit       isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       Move on    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              vars              chars             don             realid       don       start             variant              koyyeen             realid       koyyeen       start             variant           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       Interior30       executeType          	   priority      �?      code             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       Heated Chat    	   descSlot          	   rawValue    %   Seems like things are getting hot...       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:donlyricchat       images              dinereating             name       Eating - Diner       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You sit down at an empty booth towards the back of the diner, near the bathrooms. It's a rather comfy seat, made of some sort of exquisite leather that grips your back and butt perfectly, giving you good back support as you lean into it and get comfortable. You pick up a terminal built into the table, bringing it over to you. It's the menu for this diner and they have a rather wide selection of dishes to pick from for all walks of life. It makes your mouth water just looking at the pictures.

What do you order?             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Snacks    	   descSlot          	   rawValue    #   Something to ease the hunger away.    
   stateSlot          	   rawValue    
   snackopts       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Light Meal    	   descSlot          	   rawValue       Your typical lunch items.    
   stateSlot          	   rawValue    
   lunchopts       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Heavy Meal    	   descSlot          	   rawValue    3   Your full course meals. When you're really hungry.    
   stateSlot          	   rawValue    	   mealopts       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Get Up    	   descSlot          	   rawValue       Don't order anything.    
   stateSlot          	   rawValue       leave2       checksSlot             checks           	   codeSlot             blocks                    id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       sit       isVar              varName              data    
         pc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName           
   snackopts             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    A  You gloss over the snacks you can pick from. These won't make you very full, but at least it'll keep you going.

French Fries - A staple of diner food across galaxies. Popular and renowned by all. (5c)

Onion Rings - French Fries' overshadowed brother. Rather underrated, but still loved by many. (5c)

Tatertots - Another classic. Gets less attention than Fries but more than Onion Rings. Listed as Out of Stock.

Cheese Sticks - A timeless classic consisting of cheese that's been battered and deep fried for your enjoyment. Comes with Marinara Sauce "free of charge." (10c)             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       French Fries    	   descSlot          	   rawValue    F   Actually not even French... they're Belgian. ...why do you know this?    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       snacker       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       French Fries    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Onion Rings    	   descSlot          	   rawValue    '   Deep fried onions, a true man's snack.    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       snacker       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Onion Rings    	   descSlot          	   rawValue       You can't afford this!             id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    
   Tatertots    	   descSlot          	   rawValue       Out of Stock.             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Cheese Sticks    	   descSlot          	   rawValue    "   Is it Mozzarell-ah? Or Mozzarell?    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       snacker       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue       �      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Cheese Sticks    	   descSlot          	   rawValue       You can't afford this!             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Back    	   descSlot          	   rawValue       Change your mind?    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneAddMessage       data             slots             outputSlot          	   rawValue       Not what you're after?    
   lunchopts             code             blocks    	               id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You gloss over the lunch menu. There's a rather large assortment of items here that are suited for travellers like yourself who need to eat light.

Grilled Cheese - An iconic choice for anyone who enjoys the basic things in life. Just toss some cheese on bread and grill it in a griddle pan. (10c)

Hamburger - [b][i]THE[/i][/b] staple of all diner food no matter where you are. Comes with a 1/3lb patty between two seeded buns. (12c)

Chef Salad - A bunch of greens with diced ham, turkey, bacon, and cheese. Also comes with tomatoes. (13c)

Cheeseburger - A modification of the iconic hamburger. Comes with, you guessed it, cheese. (14c)

Grilled Chicken Sandwich - A sandwich, but with a grilled chicken breast. Comes with swiss cheese, grilled onions and mushrooms, as well as ranch. (15c)

Bacon Cheeseburger - A cheeseburger with bacon. Need it say more? (15c)

'The King' Burger - A cheeseburger with a 1/2lb patty, bacon, mushrooms, and swiss cheese. [i]'For when you want to eat like a king.'[/i] (20c)             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Grilled Cheese    	   descSlot          	   rawValue       Can she cook a grilled cheese?    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       lunch       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Grilled Cheese    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   Hamburger    	   descSlot          	   rawValue    .   100% Ethically Sourced Non-Soy Based Patties!    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      @�      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       lunch       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    
   Hamburger    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Chef Salad    	   descSlot          	   rawValue    U   You wonder why it's called a 'chef salad.' ...hopefully the chef isn't IN the salad.    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue )   �G�z.*�      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       lunch       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Chef Salad    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Cheeseburger    	   descSlot          	   rawValue       Perfection on a bun.    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      `�      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       lunch       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Cheeseburger    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       G.C. Sandwich    	   descSlot          	   rawValue    6   For when you want a sandwich but don't like it basic.    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      p�      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       lunch       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       G.C. Sandwich    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       B. C.Burger    	   descSlot          	   rawValue    3   Ah yes, a 'lunch item' more suited for dinner, no?    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      p�      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       lunch       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       B. C.Burger    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       King Burger    	   descSlot          	   rawValue    b   If this is your definition of 'eating light,' you need to re-evaluate yourself on a scale, buddy.    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       lunch       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       King Burger    	   descSlot          	   rawValue       You can't afford this!             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Back    	   descSlot          	   rawValue       Change your mind?    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneAddMessage       data             slots             outputSlot          	   rawValue       Nothing good?    	   mealopts             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    8  You open up the meals tab, seeing a plethora of meals designed to keep have you feeling full for a whole day. These items are costly, but they will give you the most satiety you could ever search for.

Baked Ham - Ham that was cooked in a big oven. (17c)

Meatloaf - Ground beef made to resemble bread drenched in sauce. Not bad. (18c)

Beef Liver - A beef liver with grilled onions and brown gravy. For the wilder animals out there. (18c)

Fish and Chips - Cooked fish with herbs and fries. For when others don't deserve your 'peaceful tea.' (18c)

Chicken Tender Dinner - Battered chicken strips good for dipping. Ranch included 'free of charge.' (19c)

Popcorn Fried Shrimp - Beautiful rainbow shrimp that's been deepfriend. Count of 21! (19c)

Chicken Breast Dinner - Grilled chicken breast with grilled mushrooms, onions, bell peppers, shredded cheese and bacon. (20c)

Chicken Fried Steak - Steak that was battered, deep-fried, then covered in gravy. As God intended. (20c)

Chicken Fried Chicken - Literally just Chicken Fried Steak but chicken. Ought to be cheaper. (20c)             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   Baked Ham    	   descSlot          	   rawValue       Ready to go Ham?    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       meal       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    
   Baked Ham    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Meatloaf    	   descSlot          	   rawValue    4   The idea of meatload makes you want to loaf around.    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       meal       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    	   Meatloaf    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Beef Liver    	   descSlot          	   rawValue       Got a Wild Side, eh?    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       meal       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Beef Liver    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Fish & Chips    	   descSlot          	   rawValue       Need to talk about it?    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       meal       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Fish & Chips    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       C. T. Dinner    	   descSlot          	   rawValue       Number 6 with Extra Dip.    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       meal       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       C. T. Dinner    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Fried Shrimp    	   descSlot          	   rawValue       Fishy. Real fishy.    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       meal       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Fried Shrimp    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Chicken Breast    	   descSlot          	   rawValue       100% Authentic Chicken    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       meal       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Chicken Breast    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       C. F. Steak    	   descSlot          	   rawValue       God's Gift to us Mortals.    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       meal       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       C. F. Steak    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       C. F. Chicken    	   descSlot          	   rawValue    8   There's a fried chicken joint down the road you know...    
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       meal       value          	   rawValue          	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       C. F. Chicken    	   descSlot          	   rawValue       You can't afford this!             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Back    	   descSlot          	   rawValue       Change your mind?    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneAddMessage       data             slots             outputSlot          	   rawValue       Too pricey?    
   drinkopts             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You press on your desired food item and it gets added to the total cost. You notice there isn't a way to go back once you've selected it unfortunately. Hope you have no regrets...

You're brought to the beverage hub, where you have several categories to choose from.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Water    	   descSlot          	   rawValue       Basic, and probably free.    
   stateSlot          	   rawValue       water       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Soda    	   descSlot          	   rawValue       Sweet tooth? Or addicted?    
   stateSlot          	   rawValue       soda       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Caffeinated    	   descSlot          	   rawValue    (   For all you caffeine addicts out there.    
   stateSlot          	   rawValue    	   caffeine       checksSlot             checks           	   codeSlot             blocks                    id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Alcohol    	   descSlot          	   rawValue    A   You're going to be driving after you're done. It's not worth it.       water             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You tap on water, only to find out there are numerous types of water you can get.

Water - Classic H2O. Typically tap water, but at least it's free. (0c)

Sparkling Water - H2O with a side of Carbonation. (2c)

Flavoured Sparkling Water - H20 with Carbonation and Citric Acid. (3c)

Alkaline Water - H2O but with a different pH level. Typically used for scamming tourists who don't know better. (5c)             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Water    	   descSlot          	   rawValue       Classic H20.    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       water       value          	   rawValue                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Sparklin Water    	   descSlot          	   rawValue       Fancy Fizzy Water.    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       water       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue       �      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Sparkling Water    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       F. S. Water    	   descSlot          	   rawValue       Fancier Fizzy Water!    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       water       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      @�      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       F. S. Water    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Alkaline Water    	   descSlot          	   rawValue    &   Didn't I just warn you about this...?    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       water       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Alkaline Water    	   descSlot          	   rawValue       You can't afford this! Good!             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Back    	   descSlot          	   rawValue           
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       SceneAddMessage       data             slots             outputSlot          	   rawValue       Not a water kind of person?       soda             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You tap on the icon for sodas, finding a wide array of different beverages of different flavours.

Club Soda - Basically just carbonated mineral water. (3c)

Lemon Lime Soda - Soda flavoured after a combination of Lemon & Lime. (5c)

Cola - A dark soda made from sugar... and also something involving a coca plant. Rival of the Bepis Corporation. (5c)

Bepis - A dark soda made from sugar... also something involving a corporate rivalry with the Cola Company. (5c)

Orange Soda - A bright orange soda that tastes like oranges. Managed to avoid the rivalry between the Cola Company and the Bepis Corporation. (5c)

Grape Soda - A dark purple soda that tastes like artificial chemicals. Not very popular... (5c)             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   Club Soda    	   descSlot          	   rawValue    "   Might as well get Sparkling Water    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       soda       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      @�      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    
   Club Soda    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   L&L Soda    	   descSlot          	   rawValue       Mmm, lemon-y AND lime-y!    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       soda       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    	   L&L Soda    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Cola    	   descSlot          	   rawValue       Slave to the Cola Corp, eh?    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       soda       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Cola    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Bepis    	   descSlot          	   rawValue        Slave to the Bepis Company, eh?    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       soda       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Bepis    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Orange Soda    	   descSlot          	   rawValue    -   Pretty good despite it's lack of popularity.    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       soda       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Orange Soda    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Grape Soda    	   descSlot          	   rawValue       ...why?    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       soda       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Grape Soda    	   descSlot          	   rawValue       This stuff is a mistake.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Back    	   descSlot          	   rawValue           
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       SceneAddMessage       data             slots             outputSlot          	   rawValue       Soda not your fancy?    	   caffeine             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    "  You push on the button with the coffee logo and see a wide selection of various caffeinated beverages, ranging from teas and coffees to energy drinks.

Coffee - Classic all-black coffee that'll wake you up in the morning and keep you going in the dead of night. (4c)

Tea - Leaves brewed in boiling water to create a dark tea. Typically served with sugar and sometimes milk. (4c)

Iced Tea - Tea that has been iced to be served cold. Free refills. (5c)

Energy Drink - An energy drink brand that you used to drink all the time back in BDCC. (6c)             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Coffee    	   descSlot          	   rawValue    
   Classico.    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue    	   caffeine       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Coffee    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Tea    	   descSlot          	   rawValue    ,   Guess you get your peaceful tea afterall...    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue    	   caffeine       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Tea    	   descSlot          	   rawValue       You can't afford this!             id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       GameGetPCAtr       data             slots              op       credits    	   thenSlot             blocks                   id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Iced Tea    	   descSlot          	   rawValue       Ice Cold. As it should be.    
   stateSlot          	   rawValue       waiting       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue    	   caffeine       value          	   rawValue                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits    	   elseSlot             blocks                   id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue    	   Iced Tea    	   descSlot          	   rawValue       You can't afford this!             id       SceneButtonDisabled       data             slots          	   nameSlot          	   rawValue       Energy Drink    	   descSlot          	   rawValue    -   You don't want to think of BDCC right now...             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Back    	   descSlot          	   rawValue           
   stateSlot          	   rawValue    
   drinkopts       checksSlot             checks           	   codeSlot             blocks                   id       SceneAddMessage       data             slots             outputSlot          	   rawValue    !   Coffee and Tea are not for thee?       waiting             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      You place the order and the terminal makes a chiming sound before receding into the table, disappearing under a small panel while you sit back and take in your thoughts. You think about how you got here again, the friends you lost when you arrived in this weird mirroring of your world. How it was so similar yet so different. AlphaCorp back in your world, while corrupt, wasn't a tyrannical system. In this world? Corruption and tyrrany reign supreme. The cities are locked down tight, and law breakers are swiftly punished with sometimes excessive punishment. You'll be the first to admit that it works against the thought of committing crime. But... it just makes you wonder what the prisons are like.

...

Your mind drifts to BDCC again and you hold your head, trying to banish the thoughts of your home, trying to forget.

...

You pull something out of your jacket. It's a pack of cigarettes that was given to you by Phil a while before you left. It's a red pack with the words [b][i]MARLEY[/i][/b] on the front.

...

What do you do?             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Smoke    	   descSlot          	   rawValue       Hope for an escape.    
   stateSlot          	   rawValue       smoke       checksSlot             checks           	   codeSlot             blocks                   id       FlagSetBool       data             slots             var          	   rawValue       smoker       value          	   rawValue                   id       SceneButton       data             slots          	   nameSlot          	   rawValue       Don't Smoke    	   descSlot          	   rawValue       Resist temptation.    
   stateSlot          	   rawValue       nosmoke       checksSlot             checks           	   codeSlot             blocks              smoke             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    b  You look around, picking up the ash tray in the center of your table and bringing it closer as you take one of the cigarettes out of the pack, letting it rest in your mouth before pulling out a cheap plastic lighter and bringing it's flame up to the tip of the cigarette. It ignites and you take a drag, the smoke filling your lungs and giving your chest a large burning sensation, forcing you to cough violently. You feel like you're going to hack up one of your lungs as you cough all over the table, eyes watering. You take a few moments to get fresh air, letting yourself calm down before a sense of calm starts to spread throughout your body. You feel your nerves relax as you sit back in the booth. Your head clears and you feel calmer. You look at the cigarette before taking a second drag and letting the smoke fill your lungs again. The burning is still there, but it's much less intense, allowing you to exhale with only a minor cough.

The feeling of calm, the cool feeling that felt so good came back but with a greater, more pleasant effect. You close your eyes. Your movements become automatic as you go in for the third drag, the discomfort fading away as you get more and more used to it. For the first time in months, you feel complete and utter clarity. Your mind is no longer fogged up with memories of BDCC, nor of your friends. For once, you're allowed to forget and live in the fantasy that is freedom. For the first time ever, you've truly escaped BDCC.

...

But it doesn't last.

You hear the waitress approaching and you open your eyes, extinguishing the spent cigarette in the ash tray and leaning forward.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Eat    	   descSlot          	   rawValue       Serve it up!    
   stateSlot          	   rawValue       eating       checksSlot             checks           	   codeSlot             blocks              nosmoke             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You throw the cigarettes away, not wanting to develop an objectively horrible addiction that might honestly get you killed one day. Of course, the downside is that you're left with your increasingly darkening thoughts as BDCC invades your head. You can't understand it. How can you miss the concrete prison you were held for so long in? How can you miss the day-to-day monotony of waking up, working, eating, showering, sleeping... sometimes fighting and fucking? It doesn't make any sense.

Vivid images flash in your head of your cell, Rahi, Tavi, Eliza, Nova, Risha, Alex, Socket... it's maddening. Sure, they were all your friends by some extention, even if some were technically above you. Sure, you used them as they used you too, yet your bonds were stronger than any benefit either one of them provided. You can't get it out of your head.

You just want it to stop...

...

That's when you hear the waitress getting closer with your food, helping you snap out of it.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Eat    	   descSlot          	   rawValue       Serve it up!    
   stateSlot          	   rawValue       eating       checksSlot             checks           	   codeSlot             blocks              eating             code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       snacker    	   thenSlot             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue      A short waitress comes jogging past the table. She's a brown stoat about as high as your knee. You see her grab a step ladder out from behind you, setting it up before pushing it to the side of your table before she runs off again. She's rather quick for her size. Eventually she comes barreling back, carrying a platter that's bigger than her. It has your chosen snack and drink on it. She hops up the step ladder's steps, laying the platter on the table before hopping up and laying out your snack basket in front of you, along with your drink.

=pc: Thank you!

You smile at her and she bows before scampering off, leaving you to enjoy your snack.

The food is really good. You can tell it was made fresh by the way it slightly burns your mouth while still being soft and slightly crunchy. The various flavours of the dish circling around your tongue and making you feel all warm inside! Not to mention that, since it's a lighter meal, you don't get that heavy feeling like you do with heavier foods!

[i]+35 Stamina![/i]             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Drink    	   descSlot          	   rawValue       Wash it down!    
   stateSlot          	   rawValue    	   drinking       checksSlot             checks           	   codeSlot             blocks                   id       GameAddAtr       data             slots             name          	   rawValue       pc       var          	   rawValue      B      op       stamina    	   elseSlot             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       lunch    	   thenSlot             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    ^  A small rabbit carrying a rather sizeable platter over her head comes running on over, carrying a step ladder in her other arm which she quickly sets down and sets up, allowing her to step up to the table's height and set the platter down, lifting the plate with your meal, along with your drink, and setting it down in front of you and letting the smell of it waft up into your nose, which helps distract you from your thoughts as you take in the absolutely superb smell. You can tell that the quality of this food is absolutely top notch as it seems to slightly glisten before you.

=pc: Thank you so much!

The rabbit bows before stepping down from the step ladder, taking it with her as she waves goodbye, leaving you to enjoy your mouthwatering meal.

You dig in. The meal tastes as good as it smells, helping to fill your empty void of a stomach after travelling for so long on the road. It's a light meal, but it still gives you that nice, heavy feeling in your stomach once you're done with it. It was perfection on a plate. Best thing you've eaten in weeks, and that is saying something.

[i]+75 Stamina![/i]             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Drink    	   descSlot          	   rawValue       Wash it down!    
   stateSlot          	   rawValue    	   drinking       checksSlot             checks           	   codeSlot             blocks                   id       GameAddAtr       data             slots             name          	   rawValue       pc       var          	   rawValue      �B      op       stamina    	   elseSlot             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    7  You watch as a fox carrying a server's platter leaves the kitchen, heading in your direction as he carries your meal with ease. He seems to be catching everyone's eyes as he walked toward you. You could smell your food before it even arrived. You feel your mouth start to water, doing your best to keep it in as he stops right next to you. He stands there for a few moments, letting the desire of your meal grow before taking it off the platter. When he sets the plate down, he spins it in place, causing it's smell to waft around everywhere and entrance you in it's gorgeous scent. When you open your eyes, you see that he's already gone, looking at you with his gorgeous red eyes over his shoulder with a cocky smirk before your eyes meet your meal.

It's heaven.

To think that such a filling meal could be had... it would make Gods fall to their knees in reference. That is the only way you can describe it. It was utterly delicious. Hands down. The best meal you have had in your entire [i]life[/i], and that is most certainly saying something.

[b][i]+125 Stamina![/i][/b]             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Drink    	   descSlot          	   rawValue       Wash it down!    
   stateSlot          	   rawValue    	   drinking       checksSlot             checks           	   codeSlot             blocks                   id       GameAddAtr       data             slots             name          	   rawValue       pc       var          	   rawValue      �B      op       stamina    	   drinking             code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       water    	   thenSlot             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    +  You take your glass and bring it to your lips, parting and letting the clear liquid flow into your maw, helping to wash away any remaining foodstuffs in your mouth and giving you a nice, refreshing feeling afterward. You practically gulp the thing down. You really needed that.

[i]+10 Stamina![/i]             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Get Up    	   descSlot          	   rawValue       You've had your fill.    
   stateSlot          	   rawValue       leave1       checksSlot             checks           	   codeSlot             blocks                   id       GameAddAtr       data             slots             name          	   rawValue       pc       var          	   rawValue       A      op       stamina    	   elseSlot             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       soda    	   thenSlot             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You take ahold of your glass, looking at the carbonation on the top of the ice-filled glass, giving it a gentle twirl in your hand before bringing it to your lips, letting the carbonated beverage fill your tongue with all manner of flavours while also giving your mouth a much needed burn. You drink it quickly, savouring every drop and letting out a very satisfied gasp, wiping your maw once you're done. Holy fuck... you needed that.

[i]+20 Stamina![/i]             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Get Up    	   descSlot          	   rawValue       You've had your fill.    
   stateSlot          	   rawValue       leave1       checksSlot             checks           	   codeSlot             blocks                   id       GameAddAtr       data             slots             name          	   rawValue       pc       var          	   rawValue      �A      op       stamina    	   elseSlot             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You smell your caffienated beverage, letting it's smell waft over you before giving it a gentle sip. Immediately you feel the rush of caffiene enter your veins, giving you a much needed boost to your energy and helping you to relax a bit. You take your time with this one, slowly drinking it until your cup eventually runs dry. You leave the cup on the table and heave a pleased sigh. That was very refreshing.

[i]+30 Stamina![/i]             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Get Up    	   descSlot          	   rawValue       You've had your fill.    
   stateSlot          	   rawValue       leave1       checksSlot             checks           	   codeSlot             blocks                   id       GameAddAtr       data             slots             name          	   rawValue       pc       var          	   rawValue      �A      op       stamina       leave1             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   You get up, ready to leave before a thought strikes you. Perhaps you should leave a tip for the server who brought you your food. Would be the decent thing to do.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       No Tip    	   descSlot          	   rawValue       Decide they don't need a tip.    
   stateSlot          	   rawValue       leave1notip       checksSlot             checks           	   codeSlot             blocks                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       5 Creds    	   descSlot          	   rawValue       Leave 5 credits.    
   stateSlot          	   rawValue    
   leave1tip       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      ��      op       credits             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   10 Creds    	   descSlot          	   rawValue       Leave 10 credits.    
   stateSlot          	   rawValue    
   leave1tip       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue       �      op       credits             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   15 Creds    	   descSlot          	   rawValue    !   Leave 15 credits. Very generous!    
   stateSlot          	   rawValue    
   leave1tip       checksSlot             checks           	   codeSlot             blocks                   id       GameAddPCAtr       data             slots             var          	   rawValue      p�      op       credits       leave2             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    -   You set the terminal to the side and get up.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots           
   leave1tip             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   You deposit your tips in a small compartment that goes under the table, seemingly able to be unlocked by the server. You feel better about yourself and take your leave.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       FlagSetBool       data             slots             var          	   rawValue    	   dinerate       value          	   rawValue             leave1notip             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    d   You decide to not tip today, instead opting to just leave. They probably make enough hourly anyway.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue    	   Move on.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots                    id       FlagSetBool       data             slots             var          	   rawValue    	   dinerate       value          	   rawValue             vars              chars           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       Interior26       executeType          	   priority      �?      code             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue    	   Sit Down    	   descSlot          	   rawValue       Get some grub!       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:dinereating       images              dinerventing             name       Diner - Vent & Robbery       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You look around the bathroom, checking the stalls when you see what you're looking for. An air vent in the ceiling that will let you sneak into the kitchen. You lock the stall door behind you before taking off the vent cover with a simple pull, hoisting yourself up and inside, allowing you to crawl through the steel vents and get to the kitchen with ease. Who knew that it'd be so easy to exploit such an obvious security flaw?             id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       crawl       isVar              varName              data    
         pc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       Wall59             id       GameSetPCLocation       data             slots             var          	   rawValue       TheInbetween             id       SceneSetLocName       data             slots          	   nameSlot          	   rawValue       Vents             id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       Move through the vents    
   stateSlot          	   rawValue       Kitchen       checksSlot             checks           	   codeSlot             blocks              Kitchen             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You arrive in the vents above the kitchen. You look through one of the grates and find the kitchen to be relatively empty. With a few simple and silent kicks, the vent cover unhinges and your drop down. Immediately you hide behind a fridge as a server comes in, gathering a few plates and leaving. You don't see any of the chefs right now. They must be on break. This is good for you.             id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   Register?    	   descSlot          	   rawValue    :   Look for a register, or a place where credits are stored.    
   stateSlot          	   rawValue       Theft       checksSlot             checks           	   codeSlot             blocks                    id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       stand       isVar              varName              data    
         pc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       Interior49       Theft             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �  You look around the kitchen, searching far and wide and trying to find where the register might be. Sure, there was terminals that store the credits for the customer, and in turn the staff, but those credits have to be moved somewhere. Typically in the register in the back. How did you know this? Well... you had to rob a few diners back when you were with the nomad group. With them, though, they ran a distraction while someone, usually you, snuck in the vents or something similar to steal from the register in the back. It was really fun, but risky, and you never got caught.

As that thought entered your head, you found the register. Immediately, you open it up and pocket all the credits inside. You can't count how many there are right now, but you'll count it when you're out of here.

With the credits on you, you rush back to the vents, hopping back up and in, crawling your way back towards where you started.             id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       crawl       isVar              varName              data    
         pc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue       Escape!    	   descSlot          	   rawValue       Get outta there!    
   stateSlot          	   rawValue       Finale       checksSlot             checks           	   codeSlot             blocks              Finale             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    {  As you're crawling through the vents, suddenly the vent cover below your gives way and you fall through, making you land in the mens room. Gross... but hey, you're out of the kitchen!

Now that you're out of there, you count how many credits you got, coming out to a total of [b][i]75 credits! Nice![/i][/b]

That should be enough to pay for a meal and get you back on the road!             id       ScenePlayAnim       data             slots             anim             animID    	   Sleeping    	   animData             state             value       sleep       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              hideNPC             value             isVar              varName                    id       SceneButton       data             slots          	   nameSlot          	   rawValue    	   Continue    	   descSlot          	   rawValue       Move on    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Solo    	   animData             state             value       stand       isVar              varName              data    
         pc             value       pc       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName                    id       SceneEndScene       data             slots                    id       GameAddPCAtr       data             slots             var          	   rawValue      �B      op       credits             id       FlagSetBool       data             slots             var          	   rawValue       dinerrobbed       value          	   rawValue                   id       SceneAimCamera       data             slots          	   nameSlot          	   rawValue       Interior35             id       GameSetPCLocation       data             slots             var          	   rawValue       Interior35       vars              chars           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       Interior35       executeType          	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       dinerrobbed    	   thenSlot             blocks                   id       EventButtonDisabled       data             slots          	   nameSlot          	   rawValue       Vent    	   descSlot          	   rawValue       You already robbed the place.    	   elseSlot             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       Vent    	   descSlot          	   rawValue    *   Climb into the vents and get to thieving.       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:dinerventing             triggerType    
   EnterRoom       triggerSettings             room       Interior39       executeType          	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue       dinerrobbed    	   thenSlot             blocks                   id       EventButtonDisabled       data             slots          	   nameSlot          	   rawValue       Vent    	   descSlot          	   rawValue       You already robbed the place.    	   elseSlot             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       Vent    	   descSlot          	   rawValue    *   Climb into the vents and get to thieving.       checksSlot             checks           	   codeSlot             blocks                   id       EventRunScene       data             slots             name          	   rawValue       bdccdd:dinerventing       images              trike             name    
   Departure       devcomment              states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    ~   [b][i]Sorry! This isn't available yet! Don't worry though, I'm working on getting the rest of Chapter 1 done soon! <3[/i][/b]             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Okay!    	   descSlot          	   rawValue    	   Go back.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              vars              chars           	   triggers                   triggerType    
   EnterRoom       triggerSettings             room       Sidewalk16       executeType          	   priority      �?      code             blocks                   id       FlowIfElse       data             slots             conditionSlot          	   rawValue          block             id       FlagGet       data             slots             var          	   rawValue    	   dinerate    	   thenSlot             blocks                   id       EventButton       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue    %   Hop on your Reverse Trike and leave.       checksSlot             checks           	   codeSlot             blocks           	   elseSlot             blocks                   id       EventButtonDisabled       data             slots          	   nameSlot          	   rawValue       Leave    	   descSlot          	   rawValue    :   Your Reverse Trike is still charging... go eat something!       images              flags          	   meeting1             type       any       default          waterfalldone             type       any       default          gavinsmoker             type       any       default       	   drynnmet             type       any       default          keycardacquired             type       any       default          majamet             type       any       default          majafucked             type       any       default          gavinoffice1             type       any       default          gavindead1             type       any       default          gavininfertile             type       any       default       	   drynntip             type       any       default       
   drynnmaja             type       any       default          majaassassin             type       any       default          majawatched             type       any       default          majadrynnfucked             type       any       default       
   prologue1             type       any       default          snacker             type       any       default          lunch             type       any       default          meal             type       any       default          water             type       any       default          soda             type       any       default       	   caffeine             type       any       default          smoker             type       any       default          dinerrobbed             type       any       default       	   dinerate             type       any       default          quests              requiredDatapacks              requiredMods             FoxLib    *   BDCC Dark Days - Prologue & Chapter 1.pck       reqDatapackToName        RSRC