RSRC                 	   Resource                                                                       resource_local_to_scene    resource_name    script    version    id    data       Script )   res://Game/Datapacks/DatapackResource.gd    
   local://1       	   Resource                                   BattleintheVoid                name       The Battle in the Void       author       Sumobear50       version       1.0       description    �   This datapack contains probably one of the hardest fights you'll face. This isn't for anyone with fresh characters. Come prepared.       characters              skins              scenes             fight             name       The Battle in the Void.       devcomment    s   It is highly advised you play this with a fully developed character, as this fight is not one to be taken lightly.       states                          code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    P   You enter into the room, the air parting as you walk through the endless void.
             id       SceneButton       data             slots          	   nameSlot          	   rawValue    
   Call out.    	   descSlot          	   rawValue    :   Call for anyone who might be out there... you never know.    
   stateSlot          	   rawValue       calling out       checksSlot             checks           	   codeSlot             blocks              calling out             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   =pc: Hello?! Is anyone out there?! Where am I?!

Initially there was no response. You look around, desperately trying to find some type of solid shape or outline. Nothing.

You turn your eyes forward and see someone watching you.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Call out louder!    	   descSlot          	   rawValue    -   You really need to get this guy's attention!    
   stateSlot          	   rawValue    
   awareness       checksSlot             checks           	   codeSlot             blocks           
   awareness             code             blocks                   id       ScenePlayAnim       data             slots             anim             animID       Duo    	   animData             state             value       stand       isVar              varName              data             pc             value       pc       isVar              varName              npc             value       gavin       isVar              varName              bodyState.naked             value              isVar              varName              bodyState.exposedChest             value              isVar              varName              bodyState.exposedCrotch             value              isVar              varName              bodyState.hard             value              isVar              varName              bodyState.underwear             value              isVar              varName              bodyState.condom             value              isVar              varName              bodyState.caged             value              isVar              varName              bodyState.leashedBy             value              isVar              varName              pcCum             value              isVar              varName              npcBodyState.naked             value              isVar              varName              npcBodyState.exposedChest             value              isVar              varName              npcBodyState.exposedCrotch             value              isVar              varName              npcBodyState.hard             value              isVar              varName              npcBodyState.underwear             value              isVar              varName              npcBodyState.condom             value              isVar              varName              npcBodyState.caged             value              isVar              varName              npcBodyState.leashedBy             value              isVar              varName              npcCum             value              isVar              varName              flipNPC             value              isVar              varName              further             value              isVar              varName           
   npcAction             value       stand       isVar              varName                    id       SceneOutput       data             slots             outputSlot          	   rawValue    �  The man turns around as you call out to him. His bright cyan eyes meet with your as you come running up to him, panting as if you just made a long, long sprint.

=pc: Hey, do you know where we are?

You ask while catching your breath, surprised you were exhausted so quickly.

=gavin: You are in The Void. I brought you here.

The man before you looks down at you as your hands rested on your knees, slightly bent over.

=pc: What? How?

=gavin: To test you. To make sure you have what it takes to survive in what's coming next.

You stand up straight and lock eyes with him. He is dead serious. A weird aura surrounds you two and the man looks like he is ready to fight.

=pc: Why? What's coming?

He says nothing.

Looks like you have no choice.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Defend yourself.    	   descSlot          	   rawValue       Good Luck.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneStartFight       data             slots             name          	   rawValue       gavin       winSlot             blocks                   id       SceneSetState       data             slots             name          	   rawValue       awaken    	   lostSlot             blocks                   id       SceneSetState       data             slots             name          	   rawValue       prepare       awaken             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    <  The man falls to one knee as you finally take him down. You can't help but let out a scream of joy after all the pain and misery this man put you through.

=pc: [b]FINALLY!!![/b] After all this time, [i]I FINALLY WON![/i]

The man looks up at you before laughing quietly, standing on his two legs once more as if nothing happened.

=gavin: Indeed you did. Which means you are ready for what's next.

=pc: Yeah? And what's [i]that[/i] pray tell?

The man looks to the side, his cyan eyes glowing brightly for several seconds before turning back to you.

=gavin: It's not ready yet, I'm afraid. There is much work to be done. I apologize for this. Come back if you wish to fight again.

You start to sink into the void yet again, starting to thrash about as the endless darkness consumes you, sending you back to the start again.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Wake up    	   descSlot          	   rawValue    "   But this time, awaken a champion.    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              prepare             code             blocks                   id       SceneOutput       data             slots             outputSlot          	   rawValue    �   You let out a scream of agony as you fall to the floor, having been defeated by the mysterious man in this hellish void.

=gavin: You are not ready.

You feel the strength leave your body as your vision fades.

=gavin: Come back when you can take me on.             id       SceneButton       data             slots          	   nameSlot          	   rawValue       Wake Up    	   descSlot          	   rawValue    &   Start preparing for the next fight...    
   stateSlot          	   rawValue              checksSlot             checks           	   codeSlot             blocks                   id       SceneEndScene       data             slots              vars              chars             gavin             realid       gavin       start             variant           	   triggers                   triggerType       SleepInCell       triggerSettings              executeType           	   priority      �?      code             blocks                   id       EventRunScene       data             slots             name          	   rawValue       BattleintheVoid:fight       images              flags              quests              requiredDatapacks              requiredMods             Gavin the Void Boss.pck       reqDatapackToName        RSRC