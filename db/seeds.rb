# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Choice.destroy_all
Robot.destroy_all



# LEFT
Choice.create(prompt:"You figure maybe your sister has the right idea and decide to hit the hay early tonight as well. Although, You keep thinking about the robots and how cool it would be to actually see one. You start to  wonder if you should maybe set an alarm to go off during the middle of the night in hopes of catching a glimpse.", choiceA: "Set Alarm", choiceB: "Don't set Alarm", turn:1 , path:"left", route: "none", from:"Go to bed early or Stay Up all night?")
###################################################################################################
# SET ALARM
Choice.create(prompt:"You decide to set your alarm, I mean come on this is a once in a lifetime opportunity! You hear this very faint banging sound. Its not getting any louder or closer but it is very unusual.
", choiceA: "Go see what it is", choiceB: "Go back to sleep", turn:2 , path:"left", route:"a", from:"You figure maybe your sister has the right idea and decide to hit the hay early tonight as well. Although, You keep thinking about the robots and how cool it would be to actually see one. You start to  wonder if you should maybe set an alarm to go off during the middle of the night in hopes of catching a glimpse." )

#DONT SET
Choice.create(prompt:"Ehh you figure theres no point in seeing the robot if you will eventually be captured anyway so you decide to skip the alarm. You lay down in your bed and just as you are about to go to sleep you begin to hear this faint banging sound. Its not getting any louder or closer but it is very unusual.", choiceA: "Go see what it is", choiceB: "Go back to sleep", turn:2 , path:"right", route:"a", from:"You figure maybe your sister has the right idea and decide to hit the hay early tonight as well. Although, You keep thinking about the robots and how cool it would be to actually see one. You start to  wonder if you should maybe set an alarm to go off during the middle of the night in hopes of catching a glimpse.")
#######################################################################################################
#IF ALARM SET
Choice.create(prompt:"Apocalypse or not, this is still your house and youre not going to let anything or anyone confine you to one room. You muster up the courage to finally get up and go see whats happening downstairs but first, what do you put on your feet...", choiceA: "Put on your socks", choiceB: "Put on Slippers", turn:3 , path:"left", route:"a", from:"You decide to set your alarm, I mean come on this is a once in a lifetime opportunity! You hear this very faint banging sound. Its not getting any louder or closer but it is very unusual.
")
#IF ALARM NOT SET
Choice.create(prompt:"Apocalypse or not, this is still your house and youre not going to let anything or anyone confine you to one room. You muster up the courage to finally get up and go see whats happening downstairs but first, what do you put on your feet...", choiceA: "Put on your socks", choiceB: "Put on Slippers", turn:3 , path:"left", route:"a", from:"Ehh you figure theres no point in seeing the robot if you will eventually be captured anyway so you decide to skip the alarm. You lay down in your bed and just as you are about to go to sleep you begin to hear this faint banging sound. Its not getting any louder or closer but it is very unusual.")

#SLIPPERS OR SOCKS
Choice.create(prompt:"You look at your slippers but figure you would probably be better off with socks being that those slippers light up and make sounds. Your grandmother had gotten them for you and shes a very eccentric old women. You pick up a pair of socks and slip them on as you make your way down the hall. You stop at your sisters room door and wonder if you should wake her...", choiceA: "Continue downstairs", choiceB: "Wake your sister", turn:4 , path:"left", route: "a", from: "Apocalypse or not, this is still your house and youre not going to let anything or anyone confine you to one room. You muster up the courage to finally get up and go see whats happening downstairs but first, what do you put on your feet...")

Choice.create(prompt:"You grab your slippers that your nana had gotten you for christmas and quickly throw them one. You quietly slide down the hallway and make your way down the stairs.", choiceA: "Captured", choiceB: "Captured", turn:4 , path:"right", route: "a", from: "Apocalypse or not, this is still your house and youre not going to let anything or anyone confine you to one room. You muster up the courage to finally get up and go see whats happening downstairs but first, what do you put on your feet...")

#WAKE SISTER OR NOT

Choice.create(prompt:"
You decide to leave your sister figuring she would probably only hold the both of you back. You at least plan to come back for her later... You continue downstairs to check out the noise and where it is coming from...", choiceA: "run downstairs", choiceB: "move slowly", turn:5 , path:"left", route: "a", from: "You look at your slippers but figure you would probably be better off with socks being that those slippers light up and make sounds. Your grandmother had gotten them for you and shes a very eccentric old women. You pick up a pair of socks and slip them on as you make your way down the hall. You stop at your sisters room door and wonder if you should wake her...")
Choice.create(prompt:"You decide to wake up your sister You are not completly sure whats going and you do not want to leave her completely defenseless.. She stirs quietly but eventually gets up. you tell her about the noises and say...", choiceA: "I'll be back I'm going to check it out alone", choiceB: "Let's go see whats happening", turn:5 , path:"right", route: "a", from: "You look at your slippers but figure you would probably be better off with socks being that those slippers light up and make sounds. Your grandmother had gotten them for you and shes a very eccentric old women. You pick up a pair of socks and slip them on as you make your way down the hall. You stop at your sisters room door and wonder if you should wake her...")

######################################################################################################################################



















#STEP ON NAIL(ROBOT CAN HEAR)
Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:6 , path:"left", route: "a", robotpath: "a", from: "You decide to wake up your sister You are not completly sure whats going and you do not want to leave her completely defenseless.. She stirs quietly but eventually gets up. you tell her about the noises and say...")

Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:6 , path:"right", route: "a", robotpath:"b", from: "You decide to wake up your sister You are not completly sure whats going and you do not want to leave her completely defenseless.. She stirs quietly but eventually gets up. you tell her about the noises and say...")



















#
#
#
# # AFTER ROBOT OUTSMARTED
#
# Choice.create(prompt:"this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.", choiceA: "Show sister Picture", choiceB: "Tell sister about phone call", turn:11 , path:"right", route: "a", from: "You decide to make a run for it. At this point if the robot sees you then it sees you. Do you go back around throught =the lkitchen or try to outsmart the robot in the living room?")
#
# # SHOW SISTER PICTURE
#
# Choice.create(prompt:"You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:12 , path:"left", route: "a", from: "this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.")
#
#
# Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:13 , path:"left", route: "a", from: "You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear")
#
# Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:13 , path:"right", route: "a", from: "You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear")
#
#
#
# Choice.create(prompt:"You make a run for it and your sister accidentaly bumps into the side table. The lamp comes crashing down and shes on the floor holding her ankle. if robot can hear: comes running in Captured if robot cant hear as you are trying to help your sister up the stairs comes in and sees you Captured", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"left", route: "a", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.")
#
#
# Choice.create(prompt:"YOU LISTEN TO YOUR SISTER AND DECIDE TO BE STALTH AND YOU GUYS ARE DOING REALLY WELL MOVING LIKE NINJAS. UNFORTUNATELY YOURE A BIT TOO SLOW AND THE ROBOT COMES INA ND SEES YOU TWO MIDWAY. Captured", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"right", route: "a", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.")
#
#
# # DONT SHOW PICTURE TELL ABOUT PHONE CALL
#
# Choice.create(prompt:"you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:12 , path:"right", route: "a", from: "this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.")
#
# Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:13 , path:"left", route: "a", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")
#
# Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:13 , path:"right", route: "a", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")
#
#
# # IF ROBOT CAN GO UP
#
# Choice.create(prompt:"your plan works and the robot goes up the stairs", choiceA: "leave your sister and follow the robot ", choiceB: "go get your sister ", turn:10 , path:"right", route: "a", from: "you decide to call your phone to try to get the robot to go upstairs and maybe you and your sister can find a better place to hide to come up with a plan.")
#
#
# # LEAVE SISTER
# Choice.create(prompt:"You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.", choiceA: "go outside", choiceB: "go upstairs", turn:11 , path:"left", route: "a", from: "your plan works and the robot goes up the stairs")
#
#
# Choice.create(prompt:"You go outside and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", from: "You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")
#
# Choice.create(prompt:"You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.", choiceA: "jump in the bathroom", choiceB: "You jump in your sisters room", turn:12 , path:"right", route: "a", from: "You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")
#
#
# Choice.create(prompt:"You jump into the bathroom woo safe. OH no! you hear your sister scream. Captured", choiceA: "Captured", choiceB: "Captured", turn:13 , path:"left", route: "a", from: "You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.")
# Choice.create(prompt:"You jump into the sisters room woo safe. OH no! you hear your sister scream. Captured", choiceA: "Captured", choiceB: "Captured", turn:13 , path:"right", route: "a", from: "You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.")
#
#
# # BRING SISTER
# Choice.create(prompt:"You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.", choiceA: "go outisde", choiceB: "go upstairs ", turn:11 , path:"right", route: "a", from: "your plan works and the robot goes up the stairs")
#
# Choice.create(prompt:"You go outside and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")
# Choice.create(prompt:"You go upstairs: if(robot opens doors): you see a light coming from bedroom and you walk toward it. Captured if(robot cant open doors): light in hallway Captured", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")
#
# ##########################################wfsdggnhmgfhgdfs
# Choice.create(prompt:"you decide to call your phone to try to get the robot to go upstairs and maybe you and your sister can find a better place to hide to come up with a plan.", choiceA: "if robot cant go up", choiceB: "if robot can go up ", turn:14 , path:"right", route: "b", from: "You decide to hide your sister in the closet because you figure it would be best for you to handle this one alone. You ask for her phone and tell her your going to try to call your phone to get the robot to go upstairs. She tells you she doesnt think thats a good idea and if you get her a picture she might be able to figure out which robot it is.")
#
# # IF ROBOT CANT GO UP
#
#
# Choice.create(prompt:"Crap your plan didnt work and the robot is just stand at the edge of the stairs waiting.", choiceA: "Get that pic for your sister ", choiceB: "Go back to the closet ", turn:15 , path:"left", route: "b", from: "you decide to call your phone to try to get the robot to go upstairs and maybe you and your sister can find a better place to hide to come up with a plan.")
#
#
#
# # IF YOU GET THE PIC
# Choice.create(prompt:"Get that pic for your sister ", choiceA: "Freeze ", choiceB: "Run back to closet", turn:16 , path:"left", route: "b", from: "Crap your plan didnt work and the robot is just stand at the edge of the stairs waiting.")
#
# Choice.create(prompt:"You get very very still as you feel the robot looking around for the culprit of the light. Just when you think youre in the clear Captured", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"left", route: "b", from: "Get that pic for your sister ")
#
# Choice.create(prompt:"You decide to make a run for it. At this point if the robot sees you then it sees you. Do you go back around throught =the lkitchen or try to outsmart the robot in the living room?", choiceA: "Kitchen ", choiceB: "Outsmart robot", turn:17 , path:"right", route: "b", from: "Get that pic for your sister ")
#
# # AFTER ROBOT OUTSMARTED
#
# Choice.create(prompt:"this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.", choiceA: "Show sister Picture", choiceB: "Tell sister about phone call", turn:18 , path:"right", route: "b", from: "You decide to make a run for it. At this point if the robot sees you then it sees you. Do you go back around throught =the lkitchen or try to outsmart the robot in the living room?")
#
# # SHOW SISTER PICTURE
#
# Choice.create(prompt:"You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:19 , path:"left", route: "b", from: "this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.")
#
#
# Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:20 , path:"left", route: "b", from: "You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear")
# Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:20 , path:"right", route: "b", from: "You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear")
#
#
#
# Choice.create(prompt:"You make a run for it and your sister accidentaly bumps into the side table. The lamp comes crashing down and shes on the floor holding her ankle. if robot can hear: comes running in Captured if robot cant hear as you are trying to help your sister up the stairs comes in and sees you Captured", choiceA: "Captured", choiceB: "Captured", turn:21 , path:"left", route: "b", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.")
#
#
# Choice.create(prompt:"YOU LISTEN TO YOUR SISTER AND DECIDE TO BE STALTH AND YOU GUYS ARE DOING REALLY WELL MOVING LIKE NINJAS. UNFORTUNATELY YOURE A BIT TOO SLOW AND THE ROBOT COMES INA ND SEES YOU TWO MIDWAY. Captured", choiceA: "Captured", choiceB: "Captured", turn:21 , path:"right", route: "b", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.")
#
#
# # DONT SHOW PICTURE TELL ABOUT PHONE CALL
#
# Choice.create(prompt:"you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:19 , path:"right", route: "b", from: "this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.")
#
# Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:20 , path:"left", route: "b", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")
# Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:20 , path:"right", route: "b", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")
#
#
# # IF ROBOT CAN GO UP
#
# Choice.create(prompt:"your plan works and the robot goes up the stairs", choiceA: "leave your sister and follow the robot ", choiceB: "go get your sister ", turn:15 , path:"right", route: "b", from: "you decide to call your phone to try to get the robot to go upstairs and maybe you and your sister can find a better place to hide to come up with a plan.")
#
#
# # LEAVE SISTER
# Choice.create(prompt:"You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.", choiceA: "go outside", choiceB: "go upstairs", turn:16 , path:"left", route: "b", from: "your plan works and the robot goes up the stairs")
#
#
# Choice.create(prompt:"You go outside and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"left", route: "b", from: "You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")
#
# Choice.create(prompt:"You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.", choiceA: "jump in the bathroom", choiceB: "You jump in your sisters room", turn:17 , path:"right", route: "b", from: "You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")
#
#
# Choice.create(prompt:"You jump into the bathroom woo safe. OH no! you hear your sister scream. Captured", choiceA: "Captured", choiceB: "Captured", turn:18 , path:"left", route: "b", from: "You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.")
# Choice.create(prompt:"You jump into the sisters room woo safe. OH no! you hear your sister scream. Captured", choiceA: "Captured", choiceB: "Captured", turn:18 , path:"right", route: "b", from: "You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.")
#
#
# # BRING SISTER
# Choice.create(prompt:"You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.", choiceA: "go outisde", choiceB: "go upstairs ", turn:16 , path:"right", route: "b", from: "your plan works and the robot goes up the stairs")
#
# Choice.create(prompt:"You go outside and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"left", route: "b", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")
# Choice.create(prompt:"You go upstairs: if(robot opens doors): you see a light coming from bedroom and you walk toward it. Captured if(robot cant open doors): light in hallway Captured", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"right", route: "b", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")
#
#
#
# ##################
#############################
##################################
#######################################
#
#

















#STEP ON NAIL(ROBOT CAN HEAR)
Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:6 , path:"left", route: "a", robotpath: "a", from: "
You decide to leave your sister figuring she would probably only hold the both of you back. You at least plan to come back for her later... You continue downstairs to check out the noise and where it is coming from...")

Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:6 , path:"right", route: "a", robotpath:"b", from: "
You decide to leave your sister figuring she would probably only hold the both of you back. You at least plan to come back for her later... You continue downstairs to check out the noise and where it is coming from...")


#WEAPON OR SISTER
Choice.create(prompt:"You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...", choiceA: "Go get your sister", choiceB: "Find a weapon", turn:7 , path:"left", route: "a", from: "As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")
Choice.create(prompt:"Like we established before this is your house and youre in control. With no weapon or anything at all actually, you decide to charge at the robot You see a bright light getting stronger and stronger until.. Captured", choiceA: "Captured", choiceB: "Captured", turn:7 , path:"right", route: "a", from: "As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")


Choice.create(prompt:"You open the door and run into your sister room shes nott thre. ", choiceA: "Call out to her", choiceB: "Look for her", turn:8 , path:"left", route: "a", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")

Choice.create(prompt:"Not sure what happened there...", choiceA: "You Died", choiceB: "You Died", turn:9 , path:"left", route: "a", from: "You open the door and run into your sister room shes nott thre. ")

Choice.create(prompt:"Not sure what happened there...", choiceA: "You Died", choiceB: "You Died", turn:9 , path:"right", route: "a", from: "You open the door and run into your sister room shes nott thre. ")

Choice.create(prompt:"You search for a weapon hear your sister scream find a baseball bat.", choiceA: "Open Door", choiceB: "Wait for door to open", turn:8 , path:"right", route: "a", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")


Choice.create(prompt:"You search for a weapon hear your sister scream find a baseball bat.", choiceA: "Open Door", choiceB: "Wait for door to open", turn:11, path:"right", route: "b", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")

#OPEN DOOR Captured
Choice.create(prompt:"you open the door and you see a bright light Captured", choiceA: "Captured", choiceB: "Captured", turn:9 , path:"left", route: "a",from: "You search for a weapon hear your sister scream find a baseball bat.")

###############################BUILDBUILDBUILD###################################

Choice.create(prompt:"the door opens and you see a bright light Captured", choiceA: "Captured", choiceB: "Captured", turn:9 , path:"right", route: "a", robotpath: "a", from: "You search for a weapon hear your sister scream find a baseball bat.")

Choice.create(prompt:"you wait for door to open. nothing happens you dont hear anything from outside", choiceA: "Open the door", choiceB: "Sit and think", turn:9 , path:"right", route: "a", robotpath: "b", from: "You search for a weapon hear your sister scream find a baseball bat.")

Choice.create(prompt:"you decide to take a minute to ponder on whats going on. what do you think about?", choiceA: "Open the door", choiceB: "Find another way out", turn:10 , path:"right", route: "a", from: "you wait for door to open. nothing happens you dont hear anything from outside")

Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:10 , path:"left", route: "a", from: "you wait for door to open. nothing happens you dont hear anything from outside")


Choice.create(prompt:"theres no time your sister is out there you open the door. nothings there. run to your sisters room. shes hiding in the closet. her ankles twisted pretty bad she probably cant walk without help. you guys have to get out of the house before whatever it is comes back. ", choiceA: "Bring her", choiceB: "Leave her", turn:11 , path:"left", route: "a", from: "you decide to take a minute to ponder on whats going on. what do you think about?")





########## NEED TO FINISH
# NEED TO FINISH!!!!


#STEP ON NAIL (ROBOT CANT HEAR)
Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. Nothing seems to happen and the noise still seems to be coming from the kitchen. You realize your are at a crossroad..", choiceA: "Go in the kitchen", choiceB: "Go in the livingroom", turn:6 , path:"left", route: "a", robotpath:"b", from: "
You decide to leave your sister figuring she would probably only hold the both of you back. You at least plan to come back for her later... You continue downstairs to check out the noise and where it is coming from...")

Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. Nothing seems to happen and the noise still seems to be coming from the kitchen. You realize your are at a crossroad..", choiceA: "Go in the kitchen", choiceB: "Go in the livingroom", turn:6 , path:"right", route: "a", robotpath:"b", from: "
You decide to leave your sister figuring she would probably only hold the both of you back. You at least plan to come back for her later... You continue downstairs to check out the noise and where it is coming from...")

Choice.create(prompt:"You walk towards the kitchen and you open the door. Everything looks normal. You walk around a bit trying to inspect and see if you can find anything unusual... You don't find anything. Okay fine.. ", choiceA: "Try to set a trap", choiceB: "Go check the living room", turn:7 , path:"left", route: "a", from: "As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. Nothing seems to happen and the noise still seems to be coming from the kitchen. You realize your are at a crossroad..")

Choice.create(prompt:"You Go in the livingroom", choiceA: "Captured", choiceB: "Captured", turn:7 , path:"right", route: "a", from: "As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. Nothing seems to happen and the noise still seems to be coming from the kitchen. You realize your are at a crossroad..")

#######################          KITCHEN                  ############################

######################   SET TRAP ######################################
Choice.create(prompt:"You figure you can outsmart this robot and decide to set a trap.You look around hmm... Maybe you can slam the door hopefully draw the robot to the kitchen... Or you could put a pipe in the hallway to trip the bot and let you know where it is. ", choiceA: "Put pole in hallway", choiceB: "Slam the door", turn:8 , path:"left", route: "a", from: "You walk towards the kitchen and you open the door. Everything looks normal. You walk around a bit trying to inspect and see if you can find anything unusual... You don't find anything. Okay fine.. ")
######################## SLAM DOOR ###########################

Choice.create(prompt:"You decide to slam the door to see if the robot will come.", choiceA: "Watch from Closet", choiceB: "Stay in the Kitchen", turn:9 , path:"right", route: "a", from: "You figure you can outsmart this robot and decide to set a trap.You look around hmm... Maybe you can slam the door hopefully draw the robot to the kitchen... Or you could put a pipe in the hallway to trip the bot and let you know where it is. ",)
########################Watch from closet#########################
######################Robot cant hear ######################
#########################Gas################################
Choice.create(prompt:"You decide to hide in the closet and peak out to see if anything happens but the robot doesnt come. Unfortunately you hear your sister scream then you begin to get really sleepy...", choiceA: "You died", choiceB: "You died", turn:10 , path:"left", route: "a", robotpath: "a" , from: "You decide to slam the door to see if the robot will come.")
########################LASER###################################
Choice.create(prompt:"You decide to hide in the closet and peak out to see if anything happens but the robot doesnt come. Unfortunately you hear your sister scream then you feel yourself get hit with a red beam", choiceA: "You died", choiceB: "You died", turn:10 , path:"left", route: "a", robotpath: "b" , from: "You decide to slam the door to see if the robot will come.")

########################robot can hear ########################
Choice.create(prompt:"You decide to hide in the closet and peak out to see if anything happens. You see a bright light coming from under the kitchen door. ", choiceA: "open the door", choiceB: "stay in closet", turn:10 , path:"left", route: "a", robotpath: "c" , from: "You decide to slam the door to see if the robot will come.")

Choice.create(prompt:"You decide to open the door", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide in the closet and peak out to see if anything happens but the robot doesnt come ")

Choice.create(prompt:"You decide to open the door", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide in the closet and peak out to see if anything happens. You see a bright light coming from under the kitchen door. ")

#########################If robot can open doors #########################
Choice.create(prompt:"You close the door to the closet when you hear the kitchen door open. Uh-oh the doorknob on the closet begins to turn when...", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide in the closet and peak out to see if anything happens. You see a bright light coming from under the kitchen door. ")

#########################If robot cant open doors #########################
############################Gas ###########################
Choice.create(prompt:"You close the door to the closet and wait. After a while you find yourself getting very sleepy when...", choiceA: "You died", choiceB: "You died", turn:11 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide in the closet and peak out to see if anything happens. You see a bright light coming from under the kitchen door. ")
############################Laser ###########################
Choice.create(prompt:"You close the door to the closet and wait. After a while you get hit with this red beam when...", choiceA: "You died", choiceB: "You died", turn:11 , path:"right", route: "a", robotpath: "c" , from: "You decide to hide in the closet and peak out to see if anything happens. You see a bright light coming from under the kitchen door. ")

######################Hide in kitchen ###########################
######################Robot cant hear ######################
######################Robot cant hear ######################
#########################Gas################################
Choice.create(prompt:"You decide to wait in the kitchen and peak out to see if anything happens but the robot doesnt come. Unfortunately you hear your sister scream then you begin to get really sleepy...", choiceA: "You died", choiceB: "You died", turn:10 , path:"right", route: "a", robotpath: "a" , from: "You decide to slam the door to see if the robot will come.")
########################LASER###################################
Choice.create(prompt:"You decide to wait in the kitchen and peak out to see if anything happens but the robot doesnt come. Unfortunately you hear your sister scream then you feel yourself get hit with a red beam", choiceA: "You died", choiceB: "You died", turn:10 , path:"right", route: "a", robotpath: "b" , from: "You decide to slam the door to see if the robot will come.")


########################robot can hear ########################
Choice.create(prompt:"You decide to wait in the kitchen to see if anything happens. You see a bright light coming from under the door. ", choiceA: "open the door", choiceB: "wait and see", turn:11 , path:"right", route: "a", robotpath: "a" , from: "You decide to slam the door to see if the robot will come.")

Choice.create(prompt:"You decide to open the door", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "a" , from: "You decide to wait in the kitchen to see if anything happens. You see a bright light coming from under the door. ")

#########################If robot can open doors #########################
Choice.create(prompt:"Uh-oh the doorknob on the closet begins to turn when...", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to wait in the kitchen to see if anything happens. You see a bright light coming from under the door. ")

#########################If robot cant open doors #########################
############################Gas ###########################
Choice.create(prompt:"You wait. After a while you find yourself getting very sleepy when...", choiceA: "You died", choiceB: "You died", turn:12 , path:"left", route: "a", robotpath: "b" , from: "You decide to wait in the kitchen to see if anything happens. You see a bright light coming from under the door. ")
############################Laser ###########################
Choice.create(prompt:"You wait. After a while you get hit with this red beam when...", choiceA: "You died", choiceB: "You died", turn:12 , path:"left", route: "a", robotpath: "c" , from: "You decide to wait in the kitchen to see if anything happens. You see a bright light coming from under the door. ")



########################Pole in hallway ########################

Choice.create(prompt:"You grab your broomstick and lay it down in the hallway. You figure this will let you know when the robot is here. Hmm should you hide or just wait in the kitchen?", choiceA: "Watch from Closet", choiceB: "Hide in the Kitchen", turn:9 , path:"left", route: "a", from: "You figure you can outsmart this robot and decide to set a trap.You look around hmm... Maybe you can slam the door hopefully draw the robot to the kitchen... Or you could put a pipe in the hallway to trip the bot and let you know where it is. ",)
######################### NEED TO BUILD KITCHEN #################################
##################### HIDE IN CLOSET #################################
################NEED A STUCK PATH ################## FOR ALL FALSE
# see arms jump
#
# see true arms true jump false -
# see true arms true jump true
# see false arms false jump false
# see true arms false jump true
# see false arms true jump false
# see false arms true jump true
# see false arms false jump true

Choice.create(prompt:"You decide to hide in the closet and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen ", choiceA: "Follow the robot", choiceB: "Wait and see where it goes", turn:10 , path:"left", route: "a", robotpath: "a" , from: "You grab your broomstick and lay it down in the hallway. You figure this will let you know when the robot is here. Hmm should you hide or just wait in the kitchen?")



Choice.create(prompt:"You decide to hide in the closet and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before going into the kitchen ", choiceA: "Follow the robot", choiceB: "Wait and see where it goes", turn:10 , path:"left", route: "a", robotpath: "b" , from: "You grab your broomstick and lay it down in the hallway. You figure this will let you know when the robot is here. Hmm should you hide or just wait in the kitchen?")


Choice.create(prompt:"You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running into it.", choiceA: "Follow the robot", choiceB: "Wait and see where it goes", turn:10 , path:"left", route: "a", robotpath: "c" , from: "You grab your broomstick and lay it down in the hallway. You figure this will let you know when the robot is here. Hmm should you hide or just wait in the kitchen?")

Choice.create(prompt:"You decide to hide in the closet and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen ", choiceA: "Follow the robot", choiceB: "Wait and see where it goes", turn:10 , path:"left", route: "a", robotpath: "d" , from: "You grab your broomstick and lay it down in the hallway. You figure this will let you know when the robot is here. Hmm should you hide or just wait in the kitchen?")

Choice.create(prompt:"You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen ", choiceA: "Follow the robot", choiceB: "Wait and see where it goes", turn:10 , path:"left", route: "a", robotpath: "e" , from: "You grab your broomstick and lay it down in the hallway. You figure this will let you know when the robot is here. Hmm should you hide or just wait in the kitchen?")

Choice.create(prompt:"You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before going into the kitchen ", choiceA: "Follow the robot", choiceB: "Wait and see where it goes", turn:10 , path:"left", route: "a", robotpath: "f" , from: "You grab your broomstick and lay it down in the hallway. You figure this will let you know when the robot is here. Hmm should you hide or just wait in the kitchen?")

Choice.create(prompt:"You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe then jumps over it before going into the kitchen ", choiceA: "Follow the robot", choiceB: "Wait and see where it goes", turn:10 , path:"left", route: "a", robotpath: "g" , from: "You grab your broomstick and lay it down in the hallway. You figure this will let you know when the robot is here. Hmm should you hide or just wait in the kitchen?")


#####################FOLLOW ROBOT #######################
Choice.create(prompt:"You follow the robot into the kitchen very slowly. You see something in the corner but cant really make it out. ", choiceA: "Throw something at it", choiceB: "Just watch", turn:11 , path:"left", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen ")

Choice.create(prompt:"You follow the robot into the kitchen very slowly. You see something in the corner but cant really make it out. ", choiceA: "Throw something at it", choiceB: "Just watch", turn:11 , path:"left", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before going into the kitchen ")

Choice.create(prompt:"You follow the robot into the kitchen very slowly. You see something in the corner but cant really make it out. ", choiceA: "Throw something at it", choiceB: "Just watch", turn:11 , path:"left", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running into it.")

Choice.create(prompt:"You follow the robot into the kitchen very slowly. You see something in the corner but cant really make it out. ", choiceA: "Throw something at it", choiceB: "Just watch", turn:11 , path:"left", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen ")

Choice.create(prompt:"You follow the robot into the kitchen very slowly. You see something in the corner but cant really make it out. ", choiceA: "Throw something at it", choiceB: "Just watch", turn:11 , path:"left", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen ")

Choice.create(prompt:"You follow the robot into the kitchen very slowly. You see something in the corner but cant really make it out. ", choiceA: "Throw something at it", choiceB: "Just watch", turn:11 , path:"left", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before going into the kitchen ")

Choice.create(prompt:"You follow the robot into the kitchen very slowly. You see something in the corner but cant really make it out. ", choiceA: "Throw something at it", choiceB: "Just watch", turn:11 , path:"left", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe then jumps over it before going into the kitchen ")

## END FOLLOW ROBOT

Choice.create(prompt:"You look around a find a ball on the floor", choiceA: "throw at stairs", choiceB: "throw at robot", turn:12 , path:"left", route: "a", from: "You follow the robot into the kitchen very slowly. You see something in the corner but cant really make it out. ")

#Only works if robot can see but if you are in this path then robot must be able to see.
# speed true




Choice.create(prompt:"You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot raced over to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ", choiceA: "open door", choiceB: "wait for it to open", turn:13 , path:"left", route: "a", robotpath: "a", from: "You look around a find a ball on the floor")


Choice.create(prompt:"You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ", choiceA: "open door", choiceB: "wait for door to open", turn:13 , path:"left", route: "a", robotpath: "b", from: "You look around a find a ball on the floor")

Choice.create(prompt:"You open the door", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"left", route: "a", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door...  ")

####################Robot cant open doors ############

Choice.create(prompt:"You see a bright faimiliar light creeping in through the crack at the bottom of the door. Uhoh you wait a minute and nothing.. another minute still nothing but the light has not moved...", choiceA: "tell your sister to open the door", choiceB: "open the door", turn:14 , path:"right", route: "a", robotpath:"a", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")


Choice.create(prompt:"You tell your sister to open the door which is pretty cowardly.", choiceA: "Captured", choiceB: "Captured", turn:15 , path:"left", route: "a", from: "You see a bright faimiliar light creeping in through the crack at the bottom of the door. Uhoh you wait a minute and nothing.. another minute still nothing but the light has not moved...")
Choice.create(prompt:"Kudos for not being a coward", choiceA: "Captured", choiceB: "Captured", turn:15 , path:"right", route: "a",from: "You see a bright faimiliar light creeping in through the crack at the bottom of the door. Uhoh you wait a minute and nothing.. another minute still nothing but the light has not moved...")

#############Robot can open doors
Choice.create(prompt:"You see a bright familair light slipping in throught the crack in the door. You here the door knob turn and hug your sister tight.", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"right", route: "a", robotpath:"b", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")







Choice.create(prompt:"You throw the ball at the robot and it immediatly turns and starts coming toward the living room. You close the door and you see a bright light coming from underneath.", choiceA: "wait for door to open", choiceB: "open the door", turn:13 , path:"right", route: "a", robotpath: "b", from: "You look around a find a ball on the floor")


#####ROBOT CANT OPEN DOORS
Choice.create(prompt:"You open the door", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"right", route: "a", from: "You throw the ball at the robot and it immediatly turns and starts coming toward the living room. You close the door and you see a bright light coming from underneath.")


Choice.create(prompt:"You see a bright faimiliar light creeping in through the crack at the bottom of the door. Uhoh you wait a minute and nothing.. another minute still nothing but the light has not moved...", choiceA: "tell your sister to open the door", choiceB: "open the door", turn:14 , path:"left", route: "a", robotpath:"a", from: "You throw the ball at the robot and it immediatly turns and starts coming toward the living room. You close the door and you see a bright light coming from underneath.")


Choice.create(prompt:"You tell your sister to open the door which is pretty cowardly.", choiceA: "Captured", choiceB: "Captured", turn:15 , path:"left", route: "a", from: "You see a bright faimiliar light creeping in through the crack at the bottom of the door. Uhoh you wait a minute and nothing.. another minute still nothing but the light has not moved...")
Choice.create(prompt:"Kudos for not being a coward", choiceA: "Captured", choiceB: "Captured", turn:15 , path:"right", route: "a",from: "You see a bright faimiliar light creeping in through the crack at the bottom of the door. Uhoh you wait a minute and nothing.. another minute still nothing but the light has not moved...")
#############Robt can open doors
Choice.create(prompt:"You see a bright familair light slipping in throught the crack in the door. You here the door knob turn and hug your sister tight.", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"left", route: "a", robotpath:"b", from: "You throw the ball at the robot and it immediatly turns and starts coming toward the living room. You close the door and you see a bright light coming from underneath.")


#### Sit and watch #########


Choice.create(prompt:"You decide to just watch the robot for a bit but unfortunatley its litteraly doing nothing. Just stting there... Unfortunately you were so focused on the robot you didnt hear your sister coming down the stairs. She startled you and made you jump causing the robot to see you.
", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", from: "You follow the robot into the kitchen very slowly. You see something in the corner but cant really make it out. ")




###################### DONT FOLLOW WAIT AND SEE ######################
Choice.create(prompt:"You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!", choiceA: "Run out and grab her", choiceB: "Leave her", turn:11 , path:"right", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen ")

Choice.create(prompt:"You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!", choiceA: "Run out and grab her", choiceB: "Leave her", turn:11 , path:"right", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before going into the kitchen ")

Choice.create(prompt:"You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!", choiceA: "Run out and grab her", choiceB: "Leave her", turn:11 , path:"right", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before going into the kitchen ")

Choice.create(prompt:"You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!", choiceA: "Run out and grab her", choiceB: "Leave her", turn:11 , path:"right", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running into it.")

Choice.create(prompt:"You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!", choiceA: "Run out and grab her", choiceB: "Leave her", turn:11 , path:"right", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen ")

Choice.create(prompt:"You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!", choiceA: "Run out and grab her", choiceB: "Leave her", turn:11 , path:"right", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen ")

Choice.create(prompt:"You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!", choiceA: "Run out and grab her", choiceB: "Leave her", turn:11 , path:"right", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before going into the kitchen ")

Choice.create(prompt:"You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!", choiceA: "Run out and grab her", choiceB: "Leave her", turn:11 , path:"right", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before going into the kitchen ")

Choice.create(prompt:"You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!", choiceA: "Run out and grab her", choiceB: "Leave her", turn:11 , path:"right", route: "a", from: "You decide to hide in the closet and peak out to see if anything happens. The robot runs into the pipe then jumps over it before going into the kitchen ")


###################### END DONT FOLLOW ###########################




Choice.create(prompt:"You cant just let your sister die so you run out and grab her. The robots sees you and the two of you make eye contact. You quickly run into the closet with your sister and shut the door.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath:"a", from: "You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!")

Choice.create(prompt:"You cant just let your sister die so you run out and grab her. Although the robot seems to be staring at your sister it doesnt make any moves but you notice a red light coming from its antenna", choiceA: "Run out of there", choiceB: "slowly exit", turn:12 , path:"left", route: "a", robotpath:"b", from: "You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!")

Choice.create(prompt:"The robots getting closer and you are not trying to stick around and see what happens. You grab your sister and run back to the closet. You realize you guys cant stay there and you need to make a plan to get to the bunker.", choiceA: "bring sister", choiceB: "hide in closet", turn:13 , path:"left", route: "a", from: "You cant just let your sister die so you run out and grab her. Although the robot seems to be staring at your sister it doesnt make any moves but you notice a red light coming from its antenna")


######################GAS###################
Choice.create(prompt:"You try to slowly exit but the robot begins to emit some sort of gas and you feel yourself getting very sleepy.", choiceA: "You died", choiceB: "You died", turn:13 , path:"right", route: "a", robotpath:"a",from: "You cant just let your sister die so you run out and grab her. Although the robot seems to be staring at your sister it doesnt make any moves but you notice a red light coming from its antenna")

###################LASER###########################

Choice.create(prompt:"You try to slowly exit but the robot begins to shoot these red beams when..", choiceA: "You died", choiceB: "You died", turn:13 , path:"right", route: "a", robotpath:"b",from: "You cant just let your sister die so you run out and grab her. Although the robot seems to be staring at your sister it doesnt make any moves but you notice a red light coming from its antenna")


Choice.create(prompt:"The robots getting closer and you are not trying to stick around and see what happens. You grab your sister and run back to the closet. You realize you guys cant stay there and you need to make a plan to get to the bunker.", choiceA: "bring sister", choiceB: "hide in closet", turn:13 , path:"left", route: "a", from: "You cant just let your sister die so you run out and grab her. Although the robot seems to be staring at your sister it doesnt make any moves but you notice a red light coming from its antenna")

# Choice.create(prompt:"The robots getting closer and you are not trying to stick around and see what happens. You grab your sister and run back to the closet. You realize you guys cant stay there and you need to make a plan to get to the bunker.", choiceA: "bring sister ", choiceB: "hide her in closet", turn:13 , path:"right", route: "a", from: "You cant just let your sister die so you run out and grab her. Although the robot seems to be staring at your sister it doesnt make any moves but you notice a red light coming from its antenna")

Choice.create(prompt:"You decide to bring your sister a long with you as the two of you try to sneak into the hallway. Unfortunately she faints from fear and you grab her phone. Crap its locked. Now you have to try and guess the passcode befoe youre ccaptured or your time runs out.", choiceA: "start", choiceB: "start", turn:14 , path:"left", route: "a", from: "The robots getting closer and you are not trying to stick around and see what happens. You grab your sister and run back to the closet. You realize you guys cant stay there and you need to make a plan to get to the bunker.")

#############END UNLESS INCLUDE  RIDDLE ############

##### Picture Path  ###########
Choice.create(prompt:"You decide to hide your sister in the closet because you figure it would be best for you to handle this one alone. You ask for her phone and tell her you are going to try to call your phone to get the robot to go upstairs. She tells you she does not think thats a good idea and if you get her a picture she might be able to figure out which robot it is.", choiceA: "try to get pic for sister", choiceB: "call your phone", turn:14 , path:"right", route: "a", from: "The robots getting closer and you are not trying to stick around and see what happens. You grab your sister and run back to the closet. You realize you guys cant stay there and you need to make a plan to get to the bunker.")

Choice.create(prompt:"You decide to take your sisters word and get a picture of the robot for her. As you go around the stairs you try to find a good angle on it. Youre take the picture and uhoh the flash goes off!", choiceA: "freeze", choiceB: "run back to closet", turn:15 , path:"left", route: "a", from: "You decide to hide your sister in the closet because you figure it would be best for you to handle this one alone. You ask for her phone and tell her you are going to try to call your phone to get the robot to go upstairs. She tells you she does not think thats a good idea and if you get her a picture she might be able to figure out which robot it is.")


Choice.create(prompt:"You get very very still as you feel the robot looking around for the culprit of the light. Just when you think you are in the clear...", choiceA: "Captured", choiceB: "Captured", turn:16 , path:"left", route: "a", from: "You decide to take your sisters word and get a picture of the robot for her. As you go around the stairs you try to find a good angle on it. Youre take the picture and uhoh the flash goes off!")

Choice.create(prompt:"You decide to make a run for it. At this point if the robot sees you then it sees you. Do you go back around throught the kitchen or try to outsmart the robot in the living room?", choiceA: "Kitchen ", choiceB: "Outsmart robot", turn:16 , path:"right", route: "a", from: "You decide to take your sisters word and get a picture of the robot for her. As you go around the stairs you try to find a good angle on it. Youre take the picture and uhoh the flash goes off!")

# AFTER ROBOT OUTSMARTED
#################Maybe fix for sister #################
Choice.create(prompt:"You decide to play it safe and go through the kitchen. The door is jammed and you try to get it budge. You hear your sister calling out to you. Oh no she must have left the closet because you took to long to get back. CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"left", route: "a", from: "You decide to make a run for it. At this point if the robot sees you then it sees you. Do you go back around throught the kitchen or try to outsmart the robot in the living room?")


Choice.create(prompt:"You decide to outsmart the robot but on your way you accidentally trip on the end table which makes a loud noise. The robot doesnt move so you slowly go around it and make your way back to the closet.", choiceA: "Show sister Picture", choiceB: "Show your sister Picture", turn:17 , path:"right", route: "a", from: "You decide to make a run for it. At this point if the robot sees you then it sees you. Do you go back around throught the kitchen or try to outsmart the robot in the living room?")




# # SHOW SISTER PICTURE

Choice.create(prompt:"You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:18 , path:"left", route: "a", from: "You decide to outsmart the robot but on your way you accidentally trip on the end table which makes a loud noise. The robot doesnt move so you slowly go around it and make your way back to the closet.")

Choice.create(prompt:"You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:18 , path:"right", route: "a", from: "You decide to outsmart the robot but on your way you accidentally trip on the end table which makes a loud noise. The robot doesnt move so you slowly go around it and make your way back to the closet.")


Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:19 , path:"left", route: "a", from: "You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")

Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stealthy and move carefully but you think the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:19 , path:"right", route: "a", from: "You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")



Choice.create(prompt:"You make a run for it and your sister accidentaly bumps into the side table. The lamp comes crashing down and shes on the floor holding her ankle. The robot comes in and sees you helping your sister.", choiceA: "Captured", choiceB: "Captured", turn:20 , path:"left", route: "a", robotpath: "a", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stealthy and move carefully but you think the coast is clear now and the robot can come back any second.")

Choice.create(prompt:"You make a run for it and your sister accidentaly bumps into the side table. The lamp comes crashing down and shes on the floor holding her ankle. The robot comes in and you see the red light on its antenna getting brighter and brighter.", choiceA: "Charge at it", choiceB: "Run upstairs", turn:20 , path:"left", route: "a", robotpath: "b", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stealthy and move carefully but you think the coast is clear now and the robot can come back any second.")
#
#
Choice.create(prompt:"YOU LISTEN TO YOUR SISTER AND DECIDE TO BE STALTH AND YOU GUYS ARE DOING REALLY WELL MOVING LIKE NINJAS. UNFORTUNATELY YOURE A BIT TOO SLOW AND THE ROBOT COMES INA ND SEES YOU TWO MIDWAY. Captured", choiceA: "Captured", choiceB: "Captured", turn:20 , path:"right", route: "a", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stealthy and move carefully but you think the coast is clear now and the robot can come back any second.")


Choice.create(prompt:"Captured you cant beat a robot", choiceA: "Captured", choiceB: "Captured", turn:21 , path:"left", route: "a", from: "You make a run for it and your sister accidentaly bumps into the side table. The lamp comes crashing down and shes on the floor holding her ankle. The robot comes in and you see the red light on its antenna getting brighter and brighter.")


Choice.create(prompt:"You quickly turn around and run into your room and shut the door. ", choiceA: "Continue", choiceB: "Continue", turn:21 , path:"right", route: "a", from: "You make a run for it and your sister accidentaly bumps into the side table. The lamp comes crashing down and shes on the floor holding her ankle. The robot comes in and you see the red light on its antenna getting brighter and brighter.")
### GO GET SISTER ####

#################Robot Cant hear################
######## ALARM WAS SET#################
###########Robot can go upstairs ###########
Choice.create(prompt:"You are thinking of a plan when your alarm goes off. Crap you quickly turn it off. Okay you have a plan...", choiceA: "Open door", choiceB: "Go out the window", turn:22 , path:"left", route: "a", robotpath:"a", from: "You quickly turn around and run into your room and shut the door. ")

Choice.create(prompt:"You are thinking of a plan when your alarm goes off. Crap you quickly turn it off. Okay you have a plan...", choiceA: "Open door", choiceB: "Go out the window", turn:22 , path:"right", route: "a", robotpath:"a", from: "You quickly turn around and run into your room and shut the door. ")

#################Robot Cant hear################
######## ALARM WAS SET#################
###########Robot cant go upstairs ###########
Choice.create(prompt:"You are thinking of a plan...", choiceA: "Open door", choiceB: "Go out the window", turn:22 , path:"left", route: "a", robotpath:"b", from: "You quickly turn around and run into your room and shut the door. ")
Choice.create(prompt:"You are thinking of a plan...", choiceA: "Open door", choiceB: "Go out the window", turn:22 , path:"right", route: "a", robotpath:"b", from: "You quickly turn around and run into your room and shut the door. ")


######### OUT THE WIDOW #################
Choice.create(prompt:"You figure it shouldnt be too hard to get out of here through the wiwndow. Its not too high and you and your sister manage to get on the roof when..", choiceA: "Captured", choiceB: "Captured", turn:23 , path:"right", route: "a", from: "You are thinking of a plan...")
Choice.create(prompt:"You figure it shouldnt be too hard to get out of here through the wiwndow. Its not too high and you and your sister manage to get on the roof when..", choiceA: "Captured", choiceB: "Captured", turn:23 , path:"right", route: "a", from: "You are thinking of a plan when your alarm goes off. Crap you quickly turn it off. Okay you have a plan...
")
#############IF ROBOT CAN GO UPSTAIRS ####################

Choice.create(prompt:"You open the door when", choiceA: "Captured", choiceB: "Captured", turn:23 , path:"left", route: "a", robotpath:"a", from: "You are thinking of a plan...")

Choice.create(prompt:"You open the door when", choiceA: "Captured", choiceB: "Captured", turn:23 , path:"left", route: "a", robotpath:"a", from: "You are thinking of a plan when your alarm goes off. Crap you quickly turn it off. Okay you have a plan...")


#############IF ROBOT CAN'T GO UPSTAIRS ####################

#############IF ROGOT HAS GAS ################
Choice.create(prompt:"You open the door and the coast looks clear. You get to the stairs when you see the robot just sitting there. Suddenly it starts to emit this fog into the air and you find yourself getting very sleepy.", choiceA: "Captured", choiceB: "Captured", turn:23 , path:"left", route: "a", robotpath:"b", from: "You are thinking of a plan...")

Choice.create(prompt:"You open the door and the coast looks clear. You get to the stairs when you see the robot just sitting there. Suddenly it starts to emit this fog into the air and you find yourself getting very sleepy.", choiceA: "Captured", choiceB: "Captured", turn:23 , path:"left", route: "a", robotpath:"b",  from: "You are thinking of a plan when your alarm goes off. Crap you quickly turn it off. Okay you have a plan...")


#############IF ROGOT HAS LASER ################

Choice.create(prompt:"You open the door and the coast looks clear. You get to the stairs when you see the robot just sitting there. Suddenly it starts to emit these red beams and...", choiceA: "You died", choiceB: "You died", turn:23 , path:"left", route: "a", robotpath:"c",  from: "You are thinking of a plan when your alarm goes off. Crap you quickly turn it off. Okay you have a plan...")

Choice.create(prompt:"You open the door and the coast looks clear. You get to the stairs when you see the robot just sitting there. Suddenly it starts to emit these red beams and...", choiceA: "You died", choiceB: "You died", turn:23 , path:"left", route: "a", robotpath:"c",  from: "You are thinking of a plan...")


# GETPHONE CALL


# 15 RIGHT

# DONT SHOW PICTURE TELL ABOUT PHONE CALL

# Choice.create(prompt:"you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:15 , path:"right", route: "a", from: "this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.")
#
# Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:21 , path:"left", route: "b", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")
# Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:21 , path:"right", route: "b", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")


# IF ROBOT CANT GO UP LASERS

Choice.create(prompt:"Crap your plan didnt work and the robot is just standing at the edge of the stairs. It begins emitting these red beams when...", choiceA: "You died", choiceB: "You died", turn:15 , path:"right", route: "a", robotpath:"a", from: "You decide to hide your sister in the closet because you figure it would be best for you to handle this one alone. You ask for her phone and tell her you are going to try to call your phone to get the robot to go upstairs. She tells you she does not think thats a good idea and if you get her a picture she might be able to figure out which robot it is.")
# IF ROBOT CANT GO UP gas

Choice.create(prompt:"Crap your plan didnt work and the robot is just standing at the edge of the stairs. It begins emitting this gas when you feel yourself getting very sleepy...", choiceA: "You died", choiceB: "You died", turn:15 , path:"right", route: "a", robotpath:"b", from: "You decide to hide your sister in the closet because you figure it would be best for you to handle this one alone. You ask for her phone and tell her you are going to try to call your phone to get the robot to go upstairs. She tells you she does not think thats a good idea and if you get her a picture she might be able to figure out which robot it is.")

# IF ROBOT CAN GO UP

Choice.create(prompt:"You decide to make the phone call. Your plan works and the robot goes up the stairs", choiceA: "leave your sister and follow the robot ", choiceB: "go get your sister ", turn:15 , path:"right", route: "a",  robotpath:"c", from: "You decide to hide your sister in the closet because you figure it would be best for you to handle this one alone. You ask for her phone and tell her you are going to try to call your phone to get the robot to go upstairs. She tells you she does not think thats a good idea and if you get her a picture she might be able to figure out which robot it is.")


# LEAVE SISTER
Choice.create(prompt:"You go back to the closet to tell your sister to stay put as you go see the robot. You tell her you didnt take a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.", choiceA: "go outside", choiceB: "go upstairs", turn:16 , path:"left", route: "a", from: "You decide to make the phone call. Your plan works and the robot goes up the stairs")


Choice.create(prompt:"You go outside and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"left", route: "a", from: "You go back to the closet to tell your sister to stay put as you go see the robot. You tell her you didnt take a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")

########Robot can open doors ##############
Choice.create(prompt:"You go upstairs and see a color coming from your room with the door closed. You hear your sisters phone ring downstairs and your room door swings open. The robot is now making its way to end of the hallway where your standing. You look to your left theres the bathroom and the right is your sisters room.", choiceA: "jump in the bathroom", choiceB: "You jump in your sisters room", turn:17 , path:"right", route: "a", robotpath:"a",from: "You go back to the closet to tell your sister to stay put as you go see the robot. You tell her you didnt take a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")

#########robot cant open doors##############
###########can see ###############
############laser ############
Choice.create(prompt:"You go upstairs and the robot is sitting in the hall staring at you. It begins emitting these red beams when...", choiceA: "You died", choiceB: "You died", turn:17 , path:"right", route: "a", robotpath:"b", from: "You go back to the closet to tell your sister to stay put as you go see the robot. You tell her you didnt take a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")

#########robot cant open doors##############
###########cant see ###############
############laser ############
Choice.create(prompt:"You go upstairs and the robot at the end ofthe hall coming toward you. The red light on its antenna intensifying. It begins emitting these red beams when...", choiceA: "You died", choiceB: "You died", turn:17 , path:"right", route: "a", robotpath:"c", from: "You go back to the closet to tell your sister to stay put as you go see the robot. You tell her you didnt take a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")





#########robot cant open doors##############
###########can see ###############
############gas ############
Choice.create(prompt:"You go upstairs and the robot is sitting in the hall staring at you. It begins emitting this gas when you feel yourself getting very sleepy...", choiceA: "You died", choiceB: "You died", turn:17 , path:"right", route: "a", robotpath:"d", from: "You go back to the closet to tell your sister to stay put as you go see the robot. You tell her you didnt take a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")

#########robot cant open doors##############
###########cant see ###############
############gas ############
Choice.create(prompt:"You go upstairs and the robot at the end of the hall coming toward you. The red light on its antenna intensifying. It begins emitting this gas when you feel yourself getting very sleepy...", choiceA: "You died", choiceB: "You died", turn:17 , path:"right", route: "e", robotpath:"b", from: "You go back to the closet to tell your sister to stay put as you go see the robot. You tell her you didnt take a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")



Choice.create(prompt:"You jump into the bathroom woo safe. OH no! you hear your sister scream. Captured", choiceA: "Captured", choiceB: "Captured", turn:18 , path:"left", route: "a", from: "You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.")
Choice.create(prompt:"You jump into the sisters room woo safe. OH no! you hear your sister scream. Captured", choiceA: "Captured", choiceB: "Captured", turn:18 , path:"right", route: "a", from: "You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.")


# BRING SISTER
Choice.create(prompt:"You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.", choiceA: "go outisde", choiceB: "go upstairs ", turn:16 , path:"right", route: "a", from: "You decide to make the phone call. Your plan works and the robot goes up the stairs")

Choice.create(prompt:"You go outside and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"left", route: "a", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")

########Robot can open doors ##############
Choice.create(prompt:"You go upstairs and see a color coming from your room with the door closed. You hear your sisters phone ring downstairs and your room door swings open. The robot is now making its way to end of the hallway where your standing. You look to your left theres the bathroom and the right is your sisters room.", choiceA: "jump in the bathroom", choiceB: "You jump in your sisters room", turn:17 , path:"right", route: "a", robotpath:"a",from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")

#########robot cant open doors##############
###########can see ###############
############laser ############
Choice.create(prompt:"You go upstairs and the robot is sitting in the hall staring at you. It begins emitting these red beams when...", choiceA: "You died", choiceB: "You died", turn:17 , path:"right", route: "a", robotpath:"b", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")

#########robot cant open doors##############
###########cant see ###############
############laser ############
Choice.create(prompt:"You go upstairs and the robot at the end ofthe hall coming toward you. The red light on its antenna intensifying. It begins emitting these red beams when...", choiceA: "You died", choiceB: "You died", turn:17 , path:"right", route: "a", robotpath:"c", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")





#########robot cant open doors##############
###########can see ###############
############gas ############
Choice.create(prompt:"You go upstairs and the robot is sitting in the hall staring at you. It begins emitting this gas when you feel yourself getting very sleepy...", choiceA: "You died", choiceB: "You died", turn:17 , path:"right", route: "a", robotpath:"d", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")

#########robot cant open doors##############
###########cant see ###############
############gas ############
Choice.create(prompt:"You go upstairs and the robot at the end of the hall coming toward you. The red light on its antenna intensifying. It begins emitting this gas when you feel yourself getting very sleepy...", choiceA: "You died", choiceB: "You died", turn:17 , path:"right", route: "e", robotpath:"b", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")












# # DONT SHOW PICTURE TELL ABOUT PHONE CALL
#
# Choice.create(prompt:"you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:18 , path:"right", route: "b", from: "You decide to outsmart the robot but on your way you accidentally trip on the end table which makes a loud noise. The robot doesnt move so you slowly go around it and make your way back to the closet.")
# #
# Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:21 , path:"left", route: "b", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")
# Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:21 , path:"right", route: "b", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")
#
#




Choice.create(prompt:"You decide theres nothing you can do for your sister now and leave her on her own. You begin to get really sleepy when...", choiceA: "you died", choiceB: "you died", turn:12 , path:"right", route: "a", robotpath: "a", from: "You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!")

Choice.create(prompt:"You decide theres nothing you can do for your sister now and leave her on her own. You begin to hear this strange sound when..", choiceA: "you died", choiceB: "you died", turn:12 , path:"right", route: "a", robotpath: "b", from: "You carefully watch as the robot makes its way through your hallway when suddenly you see your sister coming down the stairs! Crap why did you leave her!")

########################  END HIDE IN CLOSET ###################################

############################ HIDE IN KITCHEN  ###############################

Choice.create(prompt:"You decide to hide in the kitchen", choiceA: "hide behind the counter", choiceB: "Hide in the cabinet ", turn:10 , path:"right", route: "a", from: "You grab your broomstick and lay it down in the hallway. You figure this will let you know when the robot is here. Hmm should you hide or just wait in the kitchen?")


##############################################HIDE BEHIND COUNTER #################################
# see true arms true jump false -
# see true arms true jump true
# see false arms false jump false
# see true arms false jump true
# see false arms true jump false
# see false arms true jump true
# see false arms false jump true

Choice.create(prompt:"You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen ", choiceA: "Continue", choiceB: "Continue", turn:11 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide in the kitchen")


Choice.create(prompt:"You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before continuing into the kitchen ", choiceA: "Continue", choiceB: "Continue", turn:11 , path:"left", route: "a", robotpath: "b" , from: "You decide to hide in the kitchen")


Choice.create(prompt:"You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running into it.", choiceA: "Continue", choiceB: "Continue", turn:11 , path:"left", route: "a", robotpath: "c" , from: "You decide to hide in the kitchen")

Choice.create(prompt:"You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen ", choiceA: "Continue", choiceB: "Continue", turn:11 , path:"left", route: "a", robotpath: "d" , from: "You decide to hide in the kitchen")

Choice.create(prompt:"You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen ", choiceA: "Continue", choiceB: "Continue", turn:11 , path:"left", route: "a", robotpath: "e" , from: "You decide to hide in the kitchen")

Choice.create(prompt:"You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before continuing into the kitchen ", choiceA: "Continue", choiceB: "Continue", turn:11 , path:"left", route: "a", robotpath: "f" , from: "You decide to hide in the kitchen")

Choice.create(prompt:"You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe then jumps over it before continuing into the kitchen ", choiceA: "Continue", choiceB: "Continue", turn:11 , path:"left", route: "a", robotpath: "g" , from: "You decide to hide in the kitchen")




######################### NEED TO FINISH BUILDING ##########################

#############If robot has heat sensor ###################
Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen ")


Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before continuing into the kitchen ")


Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running into it.")

Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen ")

Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen ")

Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before continuing into the kitchen ")

Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe then jumps over it before continuing into the kitchen ")

#################################RIGHT######################################
Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen ")


Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before continuing into the kitchen ")


Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running into it.")

Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen ")

Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen ")

Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before continuing into the kitchen ")

Choice.create(prompt:"The robot is coming toward you and suddenly you notice the red light on its antenna intensifying.", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe then jumps over it before continuing into the kitchen ")




#############If robot doesnt have a heat sensor ###################
Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen ")


Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before continuing into the kitchen ")


Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running into it.")

Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen ")

Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen ")

Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before continuing into the kitchen ")

Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe then jumps over it before continuing into the kitchen ")

#################################RIGHT######################################
Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen ")


Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before continuing into the kitchen ")


Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running into it.")

Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen ")

Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen ")

Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before continuing into the kitchen ")

Choice.create(prompt:"Uh-Oh your hiding spot wasnt too great and the robot sees you!", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide behind the counter and peak out to see if anything happens. The robot runs into the pipe then jumps over it before continuing into the kitchen ")


########################################Hide in cabinet ########################################


Choice.create(prompt:"You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ", choiceA: "open door", choiceB: "wait for door to open", turn:11 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide in the kitchen")


Choice.create(prompt:"You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ", choiceA: "open door", choiceB: "wait for door to open", turn:11 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide in the kitchen")

Choice.create(prompt:"You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running until it eventually gets over it.", choiceA: "open door", choiceB: "wait for door to open", turn:11 , path:"right", route: "a", robotpath: "c" , from: "You decide to hide in the kitchen")

Choice.create(prompt:"You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ", choiceA: "open door", choiceB: "wait for door to open", turn:11 , path:"right", route: "a", robotpath: "d" , from: "You decide to hide in the kitchen")

Choice.create(prompt:"You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ", choiceA: "open door", choiceB: "wait for door to open", turn:11 , path:"right", route: "a", robotpath: "e" , from: "You decide to hide in the kitchen")

Choice.create(prompt:"You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ", choiceA: "open door", choiceB: "wait for door to open", turn:11 , path:"right", route: "a", robotpath: "f" , from: "You decide to hide in the kitchen")

Choice.create(prompt:"You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe then jumps over it before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ", choiceA: "open door", choiceB: "wait for door to open", turn:11 , path:"right", route: "a", robotpath: "g" , from: "You decide to hide in the kitchen")

#OPEN DOOR CAPTURED



Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "a" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")


Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "b" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "c" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running until it eventually gets over it.")

Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "d" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "e" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "f" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "a", robotpath: "g" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe then jumps over it before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

##################Wait for door to open
##########robot cant open doors ###############


Choice.create(prompt:"you wait for door to open. nothing happens and you dont hear anything from outside", choiceA: "Open the door", choiceB: "Wait for door to open", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")


Choice.create(prompt:"you wait for door to open. nothing happens and you dont hear anything from outside", choiceA: "Open the door", choiceB: "Wait for door to open", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you wait for door to open. nothing happens and you dont hear anything from outside", choiceA: "Open the door", choiceB: "Wait for door to open", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running until it eventually gets over it.")

Choice.create(prompt:"you wait for door to open. nothing happens and you dont hear anything from outside", choiceA: "Open the door", choiceB: "Wait for door to open", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you wait for door to open. nothing happens and you dont hear anything from outside", choiceA: "Open the door", choiceB: "Wait for door to open", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you wait for door to open. nothing happens and you dont hear anything from outside", choiceA: "Open the door", choiceB: "Wait for door to open", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you wait for door to open. nothing happens and you dont hear anything from outside", choiceA: "Open the door", choiceB: "Wait for door to open", turn:12 , path:"right", route: "a", robotpath: "b" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe then jumps over it before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")



Choice.create(prompt:"you open the door and you see a bright light", choiceA: "Captured", choiceB: "Captured", turn:13 , path:"left", route: "a", from: "you wait for door to open. nothing happens and you dont hear anything from outside")

###############Robot has gas##############
Choice.create(prompt:"You wait for the door to open when suddenly you get very sleepy", choiceA: "You died", choiceB: "You died", turn:13 , path:"right", route: "a", robotpath:"a", from: "you wait for door to open. nothing happens and you dont hear anything from outside")
#################Robot has laser ############
Choice.create(prompt:"You wait for the door to open when suddenly you get hit with this red beam..", choiceA: "You died", choiceB: "You died", turn:13 , path:"right", route: "a", robotpath:"b",from: "you wait for door to open. nothing happens and you dont hear anything from outside")


############################Robot can open doors#############################
Choice.create(prompt:"you heard the cabinet open when..", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and stops before picking it up. It observes it and continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")


Choice.create(prompt:"you heard the cabinet open when..", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and jumps over it, it then turns around to pick it up before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you heard the cabinet open when..", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe like you planned but just keeps backing up and running until it eventually gets over it.")

Choice.create(prompt:"you heard the cabinet open when..", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot reaches the pipe and jumps over it. It then continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you heard the cabinet open when..", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe, picks it up then continues into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you heard the cabinet open when..", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe then jumps over it, it then turns around to pick it up before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

Choice.create(prompt:"you heard the cabinet open when..", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "a", robotpath: "a" , from: "You decide to hide in the cabinet and peak out to see if anything happens. The robot runs into the pipe then jumps over it before continuing into the kitchen. The robot seems to becoming straight toward the cabinet! You shut the door but you see a very bright light slipping throught the cracks. ")

######################## NO KITCHEN CHECK OUT LIVING ROOM ###############################



Choice.create(prompt:"Okay you decide to check out the living room and forget the trap. You walk in and look around. Everything seems ordinary but you cant really see well.", choiceA: "Turn  on light", choiceB: "Get out of there
", turn:8 , path:"right", route: "a", from: "You walk towards the kitchen and you open the door. Everything looks normal. You walk around a bit trying to inspect and see if you can find anything unusual... You don't find anything. Okay fine.. ")



Choice.create(prompt:"You turn on the light and UHOH the robots right there! And now its coming right at you!", choiceA: "Turn light off", choiceB: "Move out the way", turn:9 , path:"left", route: "a", from: "Okay you decide to check out the living room and forget the trap. You walk in and look around. Everything seems ordinary but you cant really see well.")



Choice.create(prompt:"Forget that you dont know whats hiding in the darkness. You quickly turn around and run out of the living room.",  choiceA: "go outside", choiceB: "go make food", turn:9 , path:"right", route: "a", from: "Okay you decide to check out the living room and forget the trap. You walk in and look around. Everything seems ordinary but you cant really see well.")

Choice.create(prompt:"You go outside ",  choiceA: "Captured", choiceB: "Captured", turn:10 , path:"left", route: "a", from: "Forget that you dont know whats hiding in the darkness. You quickly turn around and run out of the living room.")

####################Heat sensors#############
###############gas#####################
Choice.create(prompt:"You are pretty hungry and figure if youre going to go out you should atleast have a last meal. Unfortunately when you turn on the stove the robot comes running in and you can see this red light clowing from its antenna getting brighter and brighter. The robot emits some sort of gas and suddenly you get very sleepy...",  choiceA: "You died", choiceB: "You died", turn:10 , path:"right", route: "a", robotpath:"a", from: "Forget that you dont know whats hiding in the darkness. You quickly turn around and run out of the living room.")

####################Heat sensors#############
###############lasers #####################
Choice.create(prompt:"You are pretty hungry and figure if youre going to go out you should atleast have a last meal. Unfortunately when you turn on the stove the robot comes running in and you can see this red light clowing from its antenna getting brighter and brighter. The robot starts shooting some sort of red beams when suddenly you are hit by one..",  choiceA: "You died", choiceB: "You died", turn:10 , path:"right", route: "a", robotpath:"b", from: "Forget that you dont know whats hiding in the darkness. You quickly turn around and run out of the living room.")

####################No Heat sensors#############
###############gas#####################
Choice.create(prompt:"You are pretty hungry and figure if youre going to go out you should atleast have a last meal. Unfortunately as your cooking you dont realize the robot coming in. The robot emits some sort of gas and suddenly you get very sleepy...",  choiceA: "You died", choiceB: "You died", turn:10 , path:"right", route: "a", robotpath:"c", from: "Forget that you dont know whats hiding in the darkness. You quickly turn around and run out of the living room.")

####################No Heat sensors#############
###############lasers #####################
Choice.create(prompt:"You are pretty hungry and figure if youre going to go out you should atleast have a last meal. Unfortunately as your cooking you dont realize the robot coming in. The robot starts shooting some sort of red beams when suddenly you are hit by one..",  choiceA: "You died", choiceB: "You died", turn:10 , path:"right", route: "a", robotpath:"d", from: "Forget that you dont know whats hiding in the darkness. You quickly turn around and run out of the living room.")



Choice.create(prompt:"You turn on the light and UHOH the robots right there! And now its coming right at you!", choiceA: "Turn light off", choiceB: "Move out the way", turn:9 , path:"left", route: "a", from: "Okay you decide to check out the living room and forget the trap. You walk in and look around. Everything seems ordinary but you cant really see well.")




####################IF CAN SEE ##################################
Choice.create(prompt:"You move out the way and the robot follows you.", choiceA: "Captured", choiceB: "Captured", turn:10 , path:"left", route: "a", robotpath: "a", from: "You turn on the light and UHOH the robots right there! And now its coming right at you!")
################################IF HEAT SENSOR ################################
Choice.create(prompt:"You move out the way and the robot is continuously running into the lamp. Strange.. You figure this is your chance to bolt so you begin to make your way to the door", choiceA: "Run out of there", choiceB: "Jump in closet", turn:10 , path:"left", route: "a", robotpath: "b", from: "You turn on the light and UHOH the robots right there! And now its coming right at you!")

#################################Run out of there ####################################
##################################Run Out ########################################
########################################GAS##########################################
Choice.create(prompt:"You run out and the robot start to emit this strange gas and you begin to get very sleepy..", choiceA: "You Died", choiceB: "You died", turn:11 , path:"left", route: "a", robotpath:"a", from: "You move out the way and the robot is continuously running into the lamp. Strange.. You figure this is your chance to bolt so you begin to make your way to the door")
##########################################LASERS#########################################
Choice.create(prompt:"You run out and the robot start to shoot these red beams when you get hit..", choiceA: "You Died", choiceB: "You died", turn:11 , path:"left", route: "a", robotpath:"b", from: "You move out the way and the robot is continuously running into the lamp. Strange.. You figure this is your chance to bolt so you begin to make your way to the door")

#######################################JUMP IN CLOSET #######################################
Choice.create(prompt:"You decide to jump in the closet to peak at the robot and see what it does.", choiceA: "Wait and watch", choiceB: "Throw something", turn:11 , path:"right", route: "a", from: "You move out the way and the robot is continuously running into the lamp. Strange.. You figure this is your chance to bolt so you begin to make your way to the door")
#######################################WAIT AND WATCH ##########################################
Choice.create(prompt:"You wait and watch to see what the robot does but its just sitting there. until you se its red light getting brighter and its coming towards you!", choiceA: "Close the door", choiceB: "Run out of there", turn:12 , path:"left", route: "a", from: "You decide to jump in the closet to peak at the robot and see what it does.")

Choice.create(prompt:"You close the door and you see a bright light seeping in from the bottom.", choiceA: "open door", choiceB: "wait and see", turn:13 , path:"left", route: "a", from: "You wait and watch to see what the robot does but its just sitting there. until you se its red light getting brighter and its coming towards you!")

##################################Open the door###############################

Choice.create(prompt:"You open the door..", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"left", route: "a", robotpath:"a", from: "You close the door and you see a bright light seeping in from the bottom.")
##################################Close the door###############################
###########################CAN OPEN DOORS ####################################
Choice.create(prompt:"You hear the doornob turn when...", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"right", route: "a", robotpath:"a", from: "You close the door and you see a bright light seeping in from the bottom.")


###########################CANT OPEN DOORS ####################################
########################################GAS##########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you begin to get very sleepy...", choiceA: "You Died", choiceB: "You died", turn:14 , path:"right", route: "a", robotpath:"b", from: "You close the door and you see a bright light seeping in from the bottom.")
##########################################LASERS#########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you feel yourself get hit with a red beam", choiceA: "You Died", choiceB: "You died", turn:14 , path:"right", route: "a", robotpath:"c", from: "You close the door and you see a bright light seeping in from the bottom.")


##################################Run Out ########################################
########################################GAS##########################################
Choice.create(prompt:"You run out and the robot start to emit this strange gas and you begin to get very sleepy..", choiceA: "You Died", choiceB: "You died", turn:13 , path:"right", route: "a", robotpath:"a", from: "You wait and watch to see what the robot does but its just sitting there. until you se its red light getting brighter and its coming towards you!")
##########################################LASERS#########################################
Choice.create(prompt:"You run out and the robot start to shoot these red beams when you get hit..", choiceA: "You Died", choiceB: "You died", turn:13 , path:"right", route: "a", robotpath:"b", from: "You wait and watch to see what the robot does but its just sitting there. until you se its red light getting brighter and its coming towards you!")


#######################################THROW SOMETHING ##########################################
Choice.create(prompt:"You look around and find a ball in the closet. You pick it up and..", choiceA: "Throw at robot", choiceB: "Throw at stairs", turn:12 , path:"right", route: "a", from: "You decide to jump in the closet to peak at the robot and see what it does.")

#######################################THROW AT ROBOT ##########################################


Choice.create(prompt:"You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.", choiceA: "close door", choiceB: "Run out of there", turn:13 , path:"left", route: "a", from: "You look around and find a ball in the closet. You pick it up and..")

##################################Close the door###############################
###########################CAN OPEN DOORS ####################################
Choice.create(prompt:"You hear the doornob turn when...", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"left", route: "a", robotpath:"a", from: "You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.")


###########################CANT OPEN DOORS ####################################
########################################GAS##########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you begin to get very sleepy...", choiceA: "You Died", choiceB: "You died", turn:14 , path:"left", route: "a", robotpath:"b", from: "You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.")
##########################################LASERS#########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you feel yourself get hit with a red beam", choiceA: "You Died", choiceB: "You died", turn:14 , path:"left", route: "a", robotpath:"c", from: "You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.")


##################################Run Out ########################################
########################################GAS##########################################
Choice.create(prompt:"You run out and the robot start to emit this strange gas and you begin to get very sleepy..", choiceA: "You Died", choiceB: "You died", turn:14 , path:"right", route: "a", robotpath:"a", from: "You wait and watch to see what the robot does but its just sitting there. until you se its red light getting brighter and its coming towards you!")
##########################################LASERS#########################################
Choice.create(prompt:"You run out and the robot start to shoot these red beams when you get hit..", choiceA: "You Died", choiceB: "You died", turn:14 , path:"right", route: "a", robotpath:"b", from: "You wait and watch to see what the robot does but its just sitting there. until you se its red light getting brighter and its coming towards you!")

##########################################THROW AT STAIRS#########################################

##########################################SPEED#########################################


Choice.create(prompt:"You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot raced over to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ", choiceA: "open door", choiceB: "wait for it to open", turn:13 , path:"right", route: "a", robotpath: "a", from: "You look around and find a ball in the closet. You pick it up and..")

##################################Close the door###############################
###########################CAN OPEN DOORS ####################################
Choice.create(prompt:"You hear the doornob turn when...", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"right", route: "a", robotpath:"a", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot raced over to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")

###########################CANT OPEN DOORS ####################################
########################################GAS##########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you begin to get very sleepy...", choiceA: "You Died", choiceB: "You died", turn:14 , path:"right", route: "a", robotpath:"b", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot raced over to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")
##########################################LASERS#########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you feel yourself get hit with a red beam", choiceA: "You Died", choiceB: "You died", turn:14 , path:"right", route: "a", robotpath:"c", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot raced over to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")
##########################################NO SPEED#########################################

Choice.create(prompt:"You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ", choiceA: "open door", choiceB: "wait for door to open", turn:13 , path:"right", route: "a", robotpath: "b", from: "You look around and find a ball in the closet. You pick it up and..")


Choice.create(prompt:"You open the door", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"left", route: "a", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door...  ")

Choice.create(prompt:"You open the door", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"left", route: "a", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door...  ")
##################################Close the door###############################
###########################CAN OPEN DOORS ####################################
Choice.create(prompt:"You hear the doornob turn when...", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"right", route: "a", robotpath:"a", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")

###########################CANT OPEN DOORS ####################################
########################################GAS##########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you begin to get very sleepy...", choiceA: "You Died", choiceB: "You died", turn:14 , path:"right", route: "a", robotpath:"b", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")
##########################################LASERS#########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you feel yourself get hit with a red beam", choiceA: "You Died", choiceB: "You died", turn:14 , path:"right", route: "a", robotpath:"c", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")







#NAIL CONT

Choice.create(prompt:"You tell your sister to stay put but to keep her eyes open for anything unusaul. You tell her you will be right back you just want to go check what noise is. Your sister insists she can help but you turn off and go out the door anyways.", choiceA: "keep walking", choiceB: "yup", turn:6 , path:"left", route: "a", from: "
You decide to leave your sister figuring she would probably only hold the both of you back. You at least plan to come back for her later... You continue downstairs to check out the noise and where it is coming from...")
Choice.create(prompt:"You tell your sister to stay put but to keep her eyes open for anything unusaul. You tell her you will be right back you just want to go check what noise is. Your sister insists she can help but you turn off and go out the door anyways.", choiceA: "keep walking", choiceB: "yup", turn:6 , path:"right", route: "a", from: "
You decide to leave your sister figuring she would probably only hold the both of you back. You at least plan to come back for her later... You continue downstairs to check out the noise and where it is coming from...")

#STEP ON NAIL
Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:6 , path:"left", route: "a", from: "You decide to wake up your sister You are not completly sure whats going and you do not want to leave her completely defenseless.. She stirs quietly but eventually gets up. you tell her about the noises and say...

")
Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:7 , path:"left", route: "a", from: "You tell your sister to stay put but to keep her eyes open for anything unusaul. You tell her you will be right back you just want to go check what noise is. Your sister insists she can help but you turn off and go out the door anyways.")

Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:7 , path:"right", route: "a", from: "You tell your sister to stay put but to keep her eyes open for anything unusaul. You tell her you will be right back you just want to go check what noise is. Your sister insists she can help but you turn off and go out the door anyways.")

#WEAPON OR SISTER
Choice.create(prompt:"You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...", choiceA: "Go get your sister", choiceB: "Find a weapon", turn:8 , path:"left", route: "a", from: "As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")
Choice.create(prompt:"Like we established before this is your house and youre in control. With no weapon or anything at all actually, you decide to charge at the robot You see a bright light getting stronger and stronger until.. CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:8 , path:"right", route: "a", from: "As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")

Choice.create(prompt:"You search for a weapon hear your sister scream find a baseball bat.", choiceA: "Open Door", choiceB: "Wait for door to open", turn:9 , path:"right", route: "a", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")


#OPEN DOOR CAPTURED
Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:10 , path:"left", route: "a", from: "You search for a weapon hear your sister scream find a baseball bat.")



Choice.create(prompt:"you wait for door to open. nothing happens you dont hear anything from outside", choiceA: "Open the door", choiceB: "Sit and think", turn:10 , path:"right", route: "a", from: "You search for a weapon hear your sister scream find a baseball bat.")

Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"left", route: "a", from: "you wait for door to open. nothing happens you dont hear anything from outside")

Choice.create(prompt:"you decide to take a minute to ponder on whats going on. what do you think about?", choiceA: "Open the door", choiceB: "Find another way out", turn:11 , path:"right", route: "a", from: "you wait for door to open. nothing happens you dont hear anything from outside")




Choice.create(prompt:"theres no time your sister is out there you open the door. nothings there. run to your sisters room. shes hiding in the closet. her ankles twisted pretty bad she probably cant walk without help. you guys have to get out of the house before whatever it is comes back. ", choiceA: "Bring her", choiceB: "Leave her", turn:12 , path:"left", route: "a", from: "you decide to take a minute to ponder on whats going on. what do you think about?")

########## NEED TO FINISH
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")



Choice.create(prompt:"You open the door and run into your sister room shes nott thre. ", choiceA: "Call out to her", choiceB: "Look for her", turn:9 , path:"left", route: "a", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")




# NEED TO FINISH!!!!

#DODGE NAIL
Choice.create(prompt:"NO WAY are you leaving your sister! What if something happened to her because you left her all alone? You let her tag along and the two of you go check out what the noise is.", choiceA: "coninue", choiceB: "continue", turn:6 , path:"right", route: "a", from: "You decide to wake up your sister You are not completly sure whats going and you do not want to leave her completely defenseless.. She stirs quietly but eventually gets up. you tell her about the noises and say...

")




Choice.create(prompt:"You hear your sister whisper from behind you Watch out for that nail. Whoo almost got you, As you walk around the nail you hear a continous rumbling from the kitchen. Hmm.. you slowly walk down...you finally get to the bottom of the stairs and you you are at a crosswords, you can either go to the kitchen or the living room.", choiceA: "Go into the Kitchen", choiceB: "Go into the livingroom", turn:7 , path:"left", route: "a", from: "NO WAY are you leaving your sister! What if something happened to her because you left her all alone? You let her tag along and the two of you go check out what the noise is.")
Choice.create(prompt:"You hear your sister whisper from behind you Watch out for that nail. Whoo almost got you, As you walk around the nail you hear a continous rumbling from the kitchen. Hmm.. you slowly walk down...you finally get to the bottom of the stairs and you you are at a crosswords, you can either go to the kitchen or the living room.", choiceA: "Go into the Kitchen", choiceB: "Go into the livingroom", turn:7 , path:"right", route: "a", from: "NO WAY are you leaving your sister! What if something happened to her because you left her all alone? You let her tag along and the two of you go check out what the noise is.")



Choice.create(prompt:"You walk towards the kitchen and you open the door. Everything looks normal. You walk arpiund a bit trying t innspect and see if you can find anything unuslA. YPOOU DONT FIND nything. Okay fine.. you exit the kitchen... ", choiceA: "Go into the living room", choiceB: "Go back to your room", turn:8 , path:"left", route: "a", from: "You hear your sister whisper from behind you Watch out for that nail. Whoo almost got you, As you walk around the nail you hear a continous rumbling from the kitchen. Hmm.. you slowly walk down...you finally get to the bottom of the stairs and you you are at a crosswords, you can either go to the kitchen or the living room.")

###WILL CONNECT W OTHER STORY LINE

# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")


# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")
# Choice.create(prompt:"", choiceA: "", choiceB: "", turn: , path:"", route: "", from: "")



#########################CAPTURED########################################################
Choice.create(prompt:"You decide to ignore the noise, you feel as though the world is ending anyone and there is really nothing you would be able to do if you were being attacked right now anyways. The noise is a bit distrating though...", choiceA: "Captured", choiceB: "Captured", turn:3 , path:"right", route:"a", from:"You decide to set your alarm, I mean come on this is a once in a lifetime opportunity! You hear this very faint banging sound. Its not getting any louder or closer but it is very unusual.
")

Choice.create(prompt:"You decide to ignore the noise, you feel as though the world is ending anyone and there is really nothing you would be able to do if you were being attacked right now anyways. The noise is a bit distrating though...", choiceA: "Captured", choiceB: "Captured", turn:3 , path:"right", route:"a", from:"Ehh you figure theres no point in seeing the robot if you will eventually be captured anyway so you decide to skip the alarm. You lay down in your bed and just as you are about to go to sleep you begin to hear this faint banging sound. Its not getting any louder or closer but it is very unusual.")

######################################################################################

#IF ALARM NOT SET
Choice.create(prompt:"Apocalypse or not, this is still your house and youre not going to let anything or anyone confine you to one room. You muster up the courage to finally get up and go see whats happening downstairs but first, what do you put on your feet...", choiceA: "Put on your socks", choiceB: "Put on Slippers", turn:3 , path:"left", route:"a", from:"Ehh you figure theres no point in seeing the robot if youll eventually be Captured anyway so you decide to skip the alarm. You lay down in your bed and just as youre about to go to sleep you begin to hear this faint banging sound. Its not getting any louder or closer but it is very unusual.")

#########################CAPTURED########################################################
Choice.create(prompt:"You decide to ignore the noise, you feel as though the world is ending anyone and there is really nothing you would be able to do if you were being attacked right now anyways. The noise is a bit distrating though...", choiceA: "Captured", choiceB: "Captured", turn:3 , path:"right", route:"a", from:"Ehh you figure theres no point in seeing the robot if youll eventually be Captured anyway so you decide to skip the alarm. You lay down in your bed and just as youre about to go to sleep you begin to hear this faint banging sound. Its not getting any louder or closer but it is very unusual.")
######################################################################################













# RIGHT

Choice.create(prompt:"You decide to stay up what would you like to do?", choiceA: "	Turn on Alarm", choiceB: "Turn on mood music", turn: 1 , path:"right", route: "none", from:"Go to bed early or Stay Up all night?")
####################################################################################################
#TURN ON ALARM
Choice.create(prompt:"You figure you should probably turn on your alarm to let you know when the bots are supposed to arrive so maybe you can at least try to prepare?", choiceA: "do some research", choiceB: "never mind go to bed", turn: 2 , path:"left", route:"b", from:"You decide to stay up what would you like to do?")
#TURN ON MOOD MUSIC
Choice.create(prompt:"You decide to turn on some nice calming music to ease your mind.", choiceA: "Waterfall", choiceB: "Rainforest", turn:2 , path:"right", route:"b", from:"You decide to stay up what would you like to do?")



#CHECK OUT NOISE
Choice.create(prompt:"You decide to do some research", choiceA: "research Apocalypse", choiceB: "research robots", turn:3 , path:"left", route:"b", from:"You figure you should probably turn on your alarm to let you know when the bots are supposed to arrive so maybe you can at least try to prepare?")

Choice.create(prompt:"You decide to go back to sleep which is pretty boring..", choiceA: "You Died", choiceB: "You Died", turn:3 , path:"right", route:"b", from:"You figure you should probably turn on your alarm to let you know when the bots are supposed to arrive so maybe you can at least try to prepare?")

#LISTEN TO MUSIC

Choice.create(prompt:"You decide to listen to the soothing sounds of natures waterfall.", choiceA: "Research Apocalypse", choiceB: "Research Robots", turn:3 , path:"left", route: "b", from:"You decide to turn on some nice calming music to ease your mind.")

Choice.create(prompt:"You feel more inclined to the wonderful creatures in natures beatuiful rainforest.", choiceA: "Research Apocalypse", choiceB: "Research Robots", turn:3 , path:"right", route: "b", from: "You decide to turn on some nice calming music to ease your mind.")

#HEAR A SOUND
Choice.create(prompt:"you research the Apocalypse and learn that many people have survived smaller scale robot invasions by figuring out the attributes of the specific robot in their home and being able to correctly identify it. But be careful... if a robot feels threatened it will terminate you instead of taking you as a prisoner.", choiceA: "Ignore sound", choiceB: "Turn music down", turn:4 , path:"left", route: "b", from: "You decide to listen to the soothing sounds of natures waterfall.")

Choice.create(prompt:"you research robots and learn the robots can either see or have a heat sensor. If the robot has a heat sensor it will have an antenna with a red light.", choiceA: "Ignore sound", choiceB: "Turn music down", turn:4 , path:"right", route: "b", from: "You decide to listen to the soothing sounds of natures waterfall.")
Choice.create(prompt:"you research the Apocalypse and learn that many people have survived smaller scale robot invasions by figuring out the attributes of the specific robot in their home and being able to correctly identify it. But be careful... if a robot feels threatened it will terminate you instead of taking you as a prisoner.", choiceA: "Ignore sound", choiceB: "Turn music down", turn:4 , path:"left", route: "b", from: "You feel more inclined to the wonderful creatures in natures beatuiful rainforest.")
Choice.create(prompt:"you research robots and learn the robots can either see or have a heat sensor. If the robot has a heat sensor it will have an antenna with a red light.", choiceA: "Ignore sound", choiceB: "Turn music down", turn:4 , path:"right", route: "b", from: "You feel more inclined to the wonderful creatures in natures beatuiful rainforest.")



#GRAB CELLPHONE OR NOT

Choice.create(prompt:"You ignored the sound boo...", choiceA: "Caaptured", choiceB: "Captured", turn: 5 , path:"left", route: "b", from: "you research the Apocalypse and learn that many people have survived smaller scale robot invasions by figuring out the attributes of the specific robot in their home and being able to correctly identify it. But be careful... if a robot feels threatened it will terminate you instead of taking you as a prisoner.")

Choice.create(prompt:"You ignored the sound boo...", choiceA: "Caaptured", choiceB: "Captured", turn: 5 , path:"left", route: "b", from: "you research robots and learn the robots can either see or have a heat sensor. If the robot has a heat sensor it will have an antenna with a red light.")
#

Choice.create(prompt:"You turn the music down and hear a strange thumping coming from downstairs..", choiceA: "Grab bat and Cellphone", choiceB: "Just hurry and see what it is", turn:5 , path:"right", route: "b", from: "you research robots and learn the robots can either see or have a heat sensor. If the robot has a heat sensor it will have an antenna with a red light.")

Choice.create(prompt:"You turn the music down and hear a strange thumping coming from downstairs..", choiceA: "Grab bat and Cellphone", choiceB: "Just hurry and see what it is", turn:5 , path:"right", route: "b", from: "you research the Apocalypse and learn that many people have survived smaller scale robot invasions by figuring out the attributes of the specific robot in their home and being able to correctly identify it. But be careful... if a robot feels threatened it will terminate you instead of taking you as a prisoner.")

#leave your siser

#leave phne and bat wake sister
Choice.create(prompt:"You leave the phone and the bat what good would they really do you anyway. You run out into the hall and you remember your sister is still asleep", choiceA: "Leave your sister", choiceB: "Wake your sister", turn:6 , path:"right", route: "b", from: "You turn the music down and hear a strange thumping coming from downstairs..")




Choice.create(prompt:" You grab your bat and cellphone and head into the hallway when you get to your sisters room..", choiceA: "leave your sister", choiceB: "wake your sister", turn:6 , path:"left", route: "b", from: "You turn the music down and hear a strange thumping coming from downstairs..")

################################################  LEAVE SISTER ######################################################

#STEP ON NAIL(ROBOT CAN HEAR)
Choice.create(prompt:"You decide to leave  your sister figuring she will only slow you down.", choiceA: "walk downstairs", choiceB: "run downstairs", turn:7 , path:"left", route: "b", robotpath: "a", from: " You grab your bat and cellphone and head into the hallway when you get to your sisters room..")

#STEP ON NAIL(ROBOT CAN HEAR)
Choice.create(prompt:"You decide to leave  your sister figuring she will only slow you down.", choiceA: "walk downstairs", choiceB: "run downstairs", turn:7 , path:"left", route: "b", robotpath: "a", from: "You leave the phone and the bat what good would they really do you anyway. You run out into the hall and you remember your sister is still asleep")


Choice.create(prompt:"You are walking down the stairs when you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:8 , path:"left", route: "b", robotpath: "a", from: "You decide to leave  your sister figuring she will only slow you down.")

Choice.create(prompt:"You are running down the stairs when you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:8 , path:"right", route: "b", robotpath: "a", from: "You decide to leave  your sister figuring she will only slow you down.")

############## Robot Cant hear #####################
Choice.create(prompt:"You decide to leave  your sister figuring she will only slow you down.As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. You look around and nothing seems to have changed. You still hear the thumping coming from the kitchen...", choiceA: "Go in the Kitchen", choiceB: "Go in the livingroom", turn:8 , path:"left", route: "b", robotpath:"b", from: "You decide to leave  your sister figuring she will only slow you down.")

Choice.create(prompt:"You decide to leave  your sister figuring she will only slow you down.As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. You look around and nothing seems to have changed. You still hear the thumping coming from the kitchen...", choiceA: "Go in the Kitchen", choiceB: "Go in the livingroom", turn:8 , path:"left", route: "b", robotpath:"b", from: "You decide to leave  your sister figuring she will only slow you down.")

#########################################################################################################################

################################################  WAKE SISTER ######################################################

Choice.create(prompt:"You decide to wake your sister and let her know whats going on. Besides you wouldn't want the robot sneaking up on her defenseless.", choiceA: "Tell her to wait", choiceB: "Bring her along", turn:7 , path:"right", route: "b", from: " You grab your bat and cellphone and head into the hallway when you get to your sisters room..")

 Choice.create(prompt:"You decide to wake your sister and let her know whats going on. Besides you wouldn't want the robot sneaking up on her defenseless.", choiceA: "Tell her to wait", choiceB: "Bring her along", turn:7 , path:"right", route: "b", from: "You leave the phone and the bat what good would they really do you anyway. You run out into the hall and you remember your sister is still asleep")




#STEP ON NAIL(ROBOT CAN HEAR)
Choice.create(prompt:"You decide to leave  your sister figuring she will only slow you down. You tell your sister to wait and as you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:8 , path:"left", route: "b", robotpath: "a", from: "You decide to wake your sister and let her know whats going on. Besides you wouldn't want the robot sneaking up on her defenseless.")

############## Robot Cant hear #####################

Choice.create(prompt:"You decide to leave  your sister figuring she will only slow you down.You tell your sister to wait and as you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. You look around and nothing seems to have changed. You still hear the thumping coming from the kitchen...", choiceA: "Go in the kitchen", choiceB: "go in the livingroom", turn:8 , path:"left", route: "b", robotpath:"b", from: "You decide to wake your sister and let her know whats going on. Besides you wouldn't want the robot sneaking up on her defenseless.")

#########################################################################################################################

####################### RROBOT CAN HEAR CONT. ######################################
############################THIS PATH ALREADY GRABBED BAT #######################################

#WEAPON OR SISTER
Choice.create(prompt:"You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...", choiceA: "Go get your sister", choiceB: "wait", turn:9 , path:"left", route: "b", from: "You are walking down the stairs when you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")

Choice.create(prompt:"You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...", choiceA: "Go get your sister", choiceB: "wait", turn:9 , path:"left", route: "b", from: "You are running down the stairs when you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")

Choice.create(prompt:"You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...", choiceA: "Go get your sister", choiceB: "wait", turn:9 , path:"left", route: "b", from: "You decide to leave  your sister figuring she will only slow you down. You tell your sister to wait and as you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")



Choice.create(prompt:"Like we established before this is your house and youre in control. Armed with your cellphone and bat, you decide to charge at the robot You see a bright light getting stronger and stronger until..", choiceA: "Captured", choiceB: "Captured", turn:9 , path:"right", route: "b", from: "You are walking down the stairs when you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")

Choice.create(prompt:"Like we established before this is your house and youre in control. Armed with your cellphone and bat, you decide to charge at the robot You see a bright light getting stronger and stronger until..", choiceA: "Captured", choiceB: "Captured", turn:9 , path:"right", route: "b", from: "You are running down the stairs when you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")

Choice.create(prompt:"Like we established before this is your house and youre in control. Armed with your cellphone and bat, you decide to charge at the robot You see a bright light getting stronger and stronger until..", choiceA: "Captured", choiceB: "Captured", turn:9 , path:"right", route: "b", from: "You decide to leave  your sister figuring she will only slow you down. You tell your sister to wait and as you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")

################# ROBOT CAN GO UPSTAIRS ################


##################### Go get sister ###############

#####################ROBOT CAN GO UPSTAIRS ###############
Choice.create(prompt:"you open the door and run and grab your sister. You tell her whats going on and she wants to leave. The two of you head for the door but the robot is waiting at the end of the hallway...", choiceA: "Captured", choiceB: "Captured", turn:10 , path:"left", route: "b", robotpath:"a", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")

##################### Go get sister ###############
#####################ROBOT CANT GO UPSTAIRS ###############

Choice.create(prompt:"you open the door and run and grab your sister. You tell her whats going on and she wants to leave. The two of you head for the door but the robot has come upstair and is waiting for you at the end of the hall.", choiceA: "Captured", choiceB: "Captured", turn:10 , path:"left", route: "b", robotpath:"b", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")


######################If you wait ############
Choice.create(prompt:"you wait and notice a blue light coming from in the hallway.", choiceA: "Open the door", choiceB: "Wait and see what happens", turn:10 , path:"right", route: "b", robotpath: "a", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")

#
# #################Open Door #####################
# Choice.create(prompt:"you open the door and run and the robot is wa", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"left", route: "b", from: "you wait and notice a blue light coming from in the hallway.")


################ROBOT CAN OPEN DOORS##################
Choice.create(prompt:"You get very still and quiet when suddenly you hear the doorknob turning...", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"right", route: "b", robotpath: "a", from: "you wait and notice a blue light coming from in the hallway.")

################ROBOT CANT OPEN DOORS##################
################Gas##################

Choice.create(prompt:"You get very still and quiet and nothing happens. Suddenly you feel yourself getting very sleepy...", choiceA: "You Died", choiceB: "You Died", turn:11 , path:"right", route: "b", robotpath: "b", from: "you wait and notice a blue light coming from in the hallway.")


################ROBOT CANT OPEN DOORS##################
################Lasers##################

Choice.create(prompt:"You get very still and quiet and nothing happens. Suddenly you feel yourself get hit with this red beam through the door...", choiceA: "You Died", choiceB: "You Died", turn:11 , path:"right", route: "b", robotpath: "c", from: "you wait and notice a blue light coming from in the hallway.")


######################## If robot cant go up stairs ######
######################If you wait ############
Choice.create(prompt:"you wait to see what will happen but nothing does...", choiceA: "Open the door", choiceB: "Go out the window", turn:10 , path:"right", route: "b", robotpath: "b", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")

#################Open Door #####################
Choice.create(prompt:"you open the door and run and grab your sister. The two of you make it to the stairs where the robot is at the bottom waiting.", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"left", route: "b", from: "you wait to see what will happen but nothing does...")


########################### Go out the window ################

Choice.create(prompt:"You figure it shouldnt be too hard to get out of here through the wiwndow. Its not too high and you and your sister manage to get on the roof when..", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"right", route: "b", from: "you wait to see what will happen but nothing does...")

############## END ROBOT CANT GO UPSTAIRS ############

################# ROBOT CAN GO UPSTAIRS ################


######################If you wait ############
# Choice.create(prompt:"you wait and notice a blue light coming from in the hallway.", choiceA: "Open the door", choiceB: "Wait and see what happens", turn:10 , path:"right", route: "b", robotpath: "a", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")

#################Open Door Dont Wait #####################
########### robot can see ##############
Choice.create(prompt:"you open the door and the robot is at the end of the hallway. It starts coming right at you when...", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"left", route: "b", robotpath: "a", from: "you wait and notice a blue light coming from in the hallway.")

########### robot cant see ##############

Choice.create(prompt:"you open the door and the robot is at the end of the hallway. It starts coming right at you and you notice this red light coming from its antenna getting brighter and brighter when...", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"left", robotpath: "b", route: "b", from: "you wait and notice a blue light coming from in the hallway.")


######################## END ROBOT CAN GO UPSTAIRS #######



#OPEN DOOR CAPTURED
Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:11 , path:"left", route: "b", from: "You search for a weapon hear your sister scream find a baseball bat.")



Choice.create(prompt:"you wait for door to open. nothing happens you dont hear anything from outside", choiceA: "Open the door", choiceB: "Sit and think", turn:11 , path:"right", route: "b", from: "You search for a weapon hear your sister scream find a baseball bat.")

Choice.create(prompt:"you decide to take a minute to ponder on whats going on. what do you think about?", choiceA: "Open the door", choiceB: "Find another way out", turn:12 , path:"right", route: "b", from: "you wait for door to open. nothing happens you dont hear anything from outside")

Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "b", from: "you wait for door to open. nothing happens you dont hear anything from outside")


Choice.create(prompt:"theres no time your sister is out there you open the door. nothings there. run to your sisters room. shes hiding in the closet. her ankles twisted pretty bad she probably cant walk without help. you guys have to get out of the house before whatever it is comes back. ", choiceA: "Bring her", choiceB: "Leave her", turn:13 , path:"b", route: "left", from: "you decide to take a minute to ponder on whats going on. what do you think about?")







#leave phne and bat wake sister
Choice.create(prompt:"You leave the phone and the bat what good would they really do you anyway. You run out into the hall and you remember your sister is still asleep", choiceA: "Leave your sister", choiceB: "Wake your sister", turn:6 , path:"right", route: "b", from: "You hear a strange beep in game which makes you turn down music")

Choice.create(prompt:"You decide to wake your sister and let her know whats going on. Besides you wouldn't want the robot sneaking up on her defenseless.", choiceA: "Tell her to wait", choiceB: "Bring her along", turn:7 , path:"right", route: "b", from: "You leave the phone and the bat what good would they really do you anyway. You run out into the hall and you remember your sister is still asleep")



##WAKE SISTER
#
# Choice.create(prompt:"You tell your sister to wait there for you and keep her eyes open. you make your way downttairs when you step on a nail.", choiceA: "darn", choiceB: "darn", turn:8 , path:"left", route: "b", from: "You decide to wake your sister and let her know whats going on. Besides you wouldn't want the robot sneaking up on her defenseless.")


#STEP ON NAIL

# Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:9 , path:"left", route: "b", from: "You tell your sister to wait there for you and keep her eyes open. you make your way downttairs when you step on a nail.")
#
# Choice.create(prompt:"As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway", choiceA: "Go Back upstairs", choiceB: "Charge At", turn:9 , path:"right", route: "b", from: "You tell your sister to wait there for you and keep her eyes open. you make your way downttairs when you step on a nail.")

#WEAPON OR SISTER
Choice.create(prompt:"You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...", choiceA: "Go get your sister", choiceB: "Find a weapon", turn:10 , path:"left", route: "b", from: "As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")
Choice.create(prompt:"Like we established before this is your house and youre in control. With no weapon or anything at all actually, you decide to charge at the robot You see a bright light getting stronger and stronger until.. CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:10, path:"right", route: "b", from: "As you are walking down the stairs, you step on a nail and let out a really loud scream. Dang! You forgot about that loose nail. The noise from the kitchen seems to be getting closer and louder now. Somethings coming... suddenly you see a figure at the end of the hallway")


Choice.create(prompt:"You open the door and run into your sister room shes nott thre. ", choiceA: "Call out to her", choiceB: "Look for her", turn:11, path:"left", route: "b", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")
Choice.create(prompt:"You search for a weapon hear your sister scream find a baseball bat.", choiceA: "Open Door", choiceB: "Wait for door to open", turn:11, path:"right", route: "b", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")



Choice.create(prompt:"You search for a weapon hear your sister scream find a baseball bat.", choiceA: "Open Door", choiceB: "Wait for door to open", turn:11 , path:"right", route: "b", from: "You cant get a good look at it but you dont think you should! You quickly turn around and run back upstairs, into your room and shut the door. Shit, you forgot your sister...")
#OPEN DOOR CAPTURED
Choice.create(prompt:"you open the door and you see a bright light CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "b", from: "You search for a weapon hear your sister scream find a baseball bat.")



Choice.create(prompt:"you wait for door to open. nothing happens you dont hear anything from outside", choiceA: "Open the door", choiceB: "Sit and think", turn:12 , path:"right", route: "b", from: "You search for a weapon hear your sister scream find a baseball bat.")

Choice.create(prompt:"you decide to take a minute to ponder on whats going on. what do you think about?", choiceA: "Open the door", choiceB: "Find another way out", turn:13 , path:"right", route: "b", from: "you wait for door to open. nothing happens you dont hear anything from outside")


Choice.create(prompt:"theres no time your sister is out there you open the door. nothings there. run to your sisters room. shes hiding in the closet. her ankles twisted pretty bad she probably cant walk without help. you guys have to get out of the house before whatever it is comes back. ", choiceA: "Bring her", choiceB: "Leave her", turn:14 , path:"left", route: "b", from: "you decide to take a minute to ponder on whats going on. what do you think about?")





Choice.create(prompt:"You tell your sister lets go and theres no way your leaving her here a lone. good thinkinking helps you with the nail.", choiceA: "Go in Kitchen", choiceB: "Go in living room", turn:8 , path:"right", route: "b", from: "You decide to wake your sister and let her know whats going on. Besides you wouldn't want the robot sneaking up on her defenseless.")

# KITCHEN OR LIVING ROOM
Choice.create(prompt:"You decide to go directly to the source of the light and you make your way to the kitchen. CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:9 , path:"left", route: "b", from: "You tell your sister lets go and theres no way your leaving her here a lone. good thinkinking helps you with the nail.")
Choice.create(prompt:"You avoid the kitchen where the light is coming from and you crawl into a closet in the living room leaving the door slightly cracked so you can still see the staircase.", choiceA: "ignore siters story", choiceB: "listen to story ", turn:9 , path:"right", route: "b", from: "You tell your sister lets go and theres no way your leaving her here a lone. good thinkinking helps you with the nail.")




Choice.create(prompt:"You dont have time to listen.", choiceA: "throw ball at robot", choiceB: "throw at stairs", turn:10 , path:"left", route: "b", from: "You avoid the kitchen where the light is coming from and you crawl into a closet in the living room leaving the door slightly cracked so you can still see the staircase.")

Choice.create(prompt:"You dont have much time but you listen to your sister tell a story of how her and her friends had been researching them for the past few years. She tells you she remembers there were 5 main different types that were all different. She's been preparing for 1026 for a while. But its hard when no one knows what to look for.", choiceA: "throw ball at robot", choiceB: "throw at stairs", turn:10 , path:"right", route: "b", from: "You avoid the kitchen where the light is coming from and you crawl into a closet in the living room leaving the door slightly cracked so you can still see the staircase.")





#######################################THROW AT ROBOT ##########################################


Choice.create(prompt:"You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.", choiceA: "close door", choiceB: "Run out of there", turn:11 , path:"left", route: "b", from: "You dont have much time but you listen to your sister tell a story of how her and her friends had been researching them for the past few years. She tells you she remembers there were 5 main different types that were all different. She's been preparing for 1026 for a while. But its hard when no one knows what to look for.")



Choice.create(prompt:"You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.", choiceA: "close door", choiceB: "Run out of there", turn:11 , path:"left", route: "b", from: "You dont have time to listen.")


#
#
# #THROW AT ROBOT
# Choice.create(prompt:"You throw the ball at the robot and it immediately turns and starts coming toward the living room. You close the door and you see a bright light coming from underneath.", choiceA: "if robot can open doors ", choiceB: "If robot canngopen doors", turn:11 , path:"left", route: "b", from: "You dont have much time but you listen to your sister tell a story of how her and her friends had been researching them for the past few years. She tells you she remembers there were 5 main different types that were all different. She's been preparing for 1026 for a while. But its hard when no one knows what to look for.")




##################################Close the door###############################
###########################CAN OPEN DOORS ####################################
Choice.create(prompt:"You hear the doornob turn when...", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "b", robotpath:"a", from: "You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.")


###########################CANT OPEN DOORS ####################################
########################################GAS##########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you begin to get very sleepy...", choiceA: "You Died", choiceB: "You died", turn:12 , path:"left", route: "b", robotpath:"b", from: "You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.")
##########################################LASERS#########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you feel yourself get hit with a red beam", choiceA: "You Died", choiceB: "You died", turn:12 , path:"left", route: "b", robotpath:"c", from: "You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.")


##################################Run Out ########################################
########################################GAS##########################################
Choice.create(prompt:"You run out and the robot start to emit this strange gas and you begin to get very sleepy..", choiceA: "You Died", choiceB: "You died", turn:12 , path:"right", route: "b", robotpath:"a", from: "You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.")
##########################################LASERS#########################################
Choice.create(prompt:"You run out and the robot start to shoot these red beams when you get hit..", choiceA: "You Died", choiceB: "You died", turn:12 , path:"right", route: "b", robotpath:"b", from: "You throw the ball at the robot and it immediately turns and starts coming toward the closet. You close the door and you see a bright light coming from underneath.")

##########################################THROW AT STAIRS#########################################

##########################################SPEED#########################################

Choice.create(prompt:"You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot raced over to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ", choiceA: "open door", choiceB: "wait for it to open", turn:11 , path:"right", route: "b", robotpath: "a", from: "You dont have much time but you listen to your sister tell a story of how her and her friends had been researching them for the past few years. She tells you she remembers there were 5 main different types that were all different. She's been preparing for 1026 for a while. But its hard when no one knows what to look for.")



Choice.create(prompt:"You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot raced over to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ", choiceA: "open door", choiceB: "wait for it to open", turn:11 , path:"right", route: "b", robotpath: "a", from: "You dont have time to listen.")

##################################Close the door###############################
###########################CAN OPEN DOORS ####################################
Choice.create(prompt:"You hear the doornob turn when...", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "b", robotpath:"a", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot raced over to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")

###########################CANT OPEN DOORS ####################################
########################################GAS##########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you begin to get very sleepy...", choiceA: "You Died", choiceB: "You died", turn:12 , path:"right", route: "b", robotpath:"b", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot raced over to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")
##########################################LASERS#########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you feel yourself get hit with a red beam", choiceA: "You Died", choiceB: "You died", turn:12 , path:"right", route: "b", robotpath:"c", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot raced over to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")
##########################################NO SPEED#########################################




Choice.create(prompt:"You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ", choiceA: "open door", choiceB: "wait for it to open", turn:11 , path:"right", route: "b", robotpath: "b", from: "You dont have much time but you listen to your sister tell a story of how her and her friends had been researching them for the past few years. She tells you she remembers there were 5 main different types that were all different. She's been preparing for 1026 for a while. But its hard when no one knows what to look for.")



Choice.create(prompt:"You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ", choiceA: "open door", choiceB: "wait for door to open", turn:11 , path:"right", route: "b", robotpath: "b", from: "You dont have time to listen.")


Choice.create(prompt:"You open the door", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"left", route: "b", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door...  ")

Choice.create(prompt:"You open the door", choiceA: "Captured", choiceB: "Captured", turn:14 , path:"left", route: "b", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door...  ")
##################################Close the door###############################
###########################CAN OPEN DOORS ####################################
Choice.create(prompt:"You hear the doornob turn when...", choiceA: "Captured", choiceB: "Captured", turn:12 , path:"right", route: "b", robotpath:"a", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")

###########################CANT OPEN DOORS ####################################
########################################GAS##########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you begin to get very sleepy...", choiceA: "You Died", choiceB: "You died", turn:12 , path:"right", route: "b", robotpath:"b", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")
##########################################LASERS#########################################
Choice.create(prompt:"You are sitting in the closet when suddenly you feel yourself get hit with a red beam", choiceA: "You Died", choiceB: "You died", turn:12 , path:"right", route: "b", robotpath:"c", from: "You throw the ball at the stairs to see if the robot will go and get it. Awesome your plan worked and the robot slowly went to the ball. It gets to the ball and stops turning drectly towards the closet! Its starts coming closer and you shut the door... ")

######################################################







Choice.create(prompt:"You decide to bring your sister a long with you as the two of you try to sneak into the hallway. Unfortunately she faints from fear and you grab her phone. shit lookced. Now you have to try and guess the passcode befoe youre Captured or your time runs out. CAPTURED if you figure it out you call your phone and realize its dead. all that for nothing CAPTURED", choiceA: "Captured", choiceB: "Captured", turn:13 , path:"left", route: "b", from: "You listen to your sister and dont throw the quater. You figure someone has to go out and do something  ")


Choice.create(prompt:"You decide to hide your sister in the closet because you figure it would be best for you to handle this one alone. You ask for her phone and tell her your going to try to call your phone to get the robot to go upstairs. She tells you she doesnt think thats a good idea and if you get her a picture she might be able to figure out which robot it is.", choiceA: "try to get a picture of the robot", choiceB: "call your phone ", turn:13 , path:"right", route: "b", from: "You listen to your sister and dont throw the quater. You figure someone has to go out and do something  ")

Choice.create(prompt:"You decide to bring your sister a long with you as the two of you try to sneak into the hallway. Unfortunately she faints from fear and you grab her phone. shit lookced. Now you have to try and guess the passcode befoe youre Captured or your time runs out. Captured if you figure it out you call your phone and realize its dead. all that for nothing Captured", choiceA: "Captured", choiceB: "Captured", turn:13 , path:"left", route: "b", from: "You ignore your sister and throw the quarter. The robot looks at it and if (arms):  picks it up else looks at it  ")


Choice.create(prompt:"You decide to hide your sister in the closet because you figure it would be best for you to handle this one alone. You ask for her phone and tell her your going to try to call your phone to get the robot to go upstairs. She tells you she doesnt think thats a good idea and if you get her a picture she might be able to figure out which robot it is.", choiceA: "try to get a picture of the robot", choiceB: "call your phone ", turn:13 , path:"right", route: "b", from: "You ignore your sister and throw the quarter. The robot looks at it and if (arms):  picks it up else looks at it  ")



Choice.create(prompt:"You decide to take your sisters word and get a picture of the robot for her. As you go around the stairs you try to find a good angle on it. Youre take the picture and uhoh the flash goes off!", choiceA: "Freeze", choiceB: "Run back to the closet", turn:14 , path:"left", route: "b", from: "You decide to hide your sister in the closet because you figure it would be best for you to handle this one alone. You ask for her phone and tell her your going to try to call your phone to get the robot to go upstairs. She tells you she doesnt think thats a good idea and if you get her a picture she might be able to figure out which robot it is.")

Choice.create(prompt:"You get very very still as you feel the robot looking around for the culprit of the light. Just when you think youre in the clear Captured", choiceA: "Captured", choiceB: "Captured", turn:15 , path:"left", route: "b", from: "Get that pic for your sister")
Choice.create(prompt:"You decide to make a run for it. At this point if the robot sees you then it sees you. Do you go back around throught =the lkitchen or try to outsmart the robot in the living room?", choiceA: "Kitchen ", choiceB: "Outsmart robot", turn:15 , path:"right", route: "b", from: "You decide to take your sisters word and get a picture of the robot for her. As you go around the stairs you try to find a good angle on it. Youre take the picture and uhoh the flash goes off!")

# AFTER ROBOT OUTSMARTED

Choice.create(prompt:"this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.", choiceA: "Show sister Picture", choiceB: "Tell sister about phone call", turn:16 , path:"right", route: "b", from: "You decide to make a run for it. At this point if the robot sees you then it sees you. Do you go back around throught =the lkitchen or try to outsmart the robot in the living room?")

# SHOW SISTER PICTURE

Choice.create(prompt:"You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:17 , path:"left", route: "b", from: "this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.")


Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:18 , path:"left", route: "b", from: "You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear")
Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:18 , path:"right", route: "b", from: "You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear")



Choice.create(prompt:"You make a run for it and your sister accidentaly bumps into the side table. The lamp comes crashing down and shes on the floor holding her ankle. if robot can hear: comes running in Captured if robot cant hear as you are trying to help your sister up the stairs comes in and sees you Captured", choiceA: "Captured", choiceB: "Captured", turn:19 , path:"left", route: "b", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.")


Choice.create(prompt:"YOU LISTEN TO YOUR SISTER AND DECIDE TO BE STALTH AND YOU GUYS ARE DOING REALLY WELL MOVING LIKE NINJAS. UNFORTUNATELY YOURE A BIT TOO SLOW AND THE ROBOT COMES INA ND SEES YOU TWO MIDWAY. Captured", choiceA: "Captured", choiceB: "Captured", turn:19 , path:"right", route: "b", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.")


# DONT SHOW PICTURE TELL ABOUT PHONE CALL

Choice.create(prompt:"you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:20 , path:"right", route: "b", from: "this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.")

Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:21 , path:"left", route: "b", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")
Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:21 , path:"right", route: "b", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")


# IF ROBOT CAN GO UP

Choice.create(prompt:"your plan works and the robot goes up the stairs", choiceA: "leave your sister and follow the robot ", choiceB: "go get your sister ", turn:16 , path:"right", route: "b", from: "you decide to call your phone to try to get the robot to go upstairs and maybe you and your sister can find a better place to hide to come up with a plan.")


# LEAVE SISTER
Choice.create(prompt:"You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.", choiceA: "go outside", choiceB: "go upstairs", turn:17 , path:"left", route: "b", from: "your plan works and the robot goes up the stairs")


Choice.create(prompt:"You go outside and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:18 , path:"left", route: "b", from: "You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")

Choice.create(prompt:"You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.", choiceA: "jump in the bathroom", choiceB: "You jump in your sisters room", turn:18 , path:"right", route: "b", from: "You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")


Choice.create(prompt:"You jump into the bathroom woo safe. OH no! you hear your sister scream. Captured", choiceA: "Captured", choiceB: "Captured", turn:19 , path:"left", route: "b", from: "You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.")
Choice.create(prompt:"You jump into the sisters room woo safe. OH no! you hear your sister scream. Captured", choiceA: "Captured", choiceB: "Captured", turn:19 , path:"right", route: "b", from: "You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.")


# BRING SISTER
Choice.create(prompt:"You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.", choiceA: "go outisde", choiceB: "go upstairs ", turn:17 , path:"right", route: "b", from: "your plan works and the robot goes up the stairs")

Choice.create(prompt:"You go outside and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:18 , path:"left", route: "b", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")
Choice.create(prompt:"You go upstairs: if(robot opens doors): you see a light coming from bedroom and you walk toward it. Captured if(robot cant open doors): light in hallway Captured", choiceA: "Captured", choiceB: "Captured", turn:18 , path:"right", route: "b", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")

##########################################wfsdggnhmgfhgdfs
Choice.create(prompt:"you decide to call your phone to try to get the robot to go upstairs and maybe you and your sister can find a better place to hide to come up with a plan.", choiceA: "if robot cant go up", choiceB: "if robot can go up ", turn:14 , path:"right", route: "b", from: "You decide to hide your sister in the closet because you figure it would be best for you to handle this one alone. You ask for her phone and tell her your going to try to call your phone to get the robot to go upstairs. She tells you she doesnt think thats a good idea and if you get her a picture she might be able to figure out which robot it is.")

# IF ROBOT CANT GO UP


Choice.create(prompt:"Crap your plan didnt work and the robot is just stand at the edge of the stairs waiting.", choiceA: "Get that pic for your sister ", choiceB: "Go back to the closet ", turn:15 , path:"left", route: "b", from: "you decide to call your phone to try to get the robot to go upstairs and maybe you and your sister can find a better place to hide to come up with a plan.")



# IF YOU GET THE PIC
Choice.create(prompt:"Get that pic for your sister ", choiceA: "Freeze ", choiceB: "Run back to closet", turn:16 , path:"left", route: "b", from: "Crap your plan didnt work and the robot is just stand at the edge of the stairs waiting.")

Choice.create(prompt:"You get very very still as you feel the robot looking around for the culprit of the light. Just when you think youre in the clear Captured", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"left", route: "b", from: "Get that pic for your sister ")

Choice.create(prompt:"You decide to make a run for it. At this point if the robot sees you then it sees you. Do you go back around throught =the lkitchen or try to outsmart the robot in the living room?", choiceA: "Kitchen ", choiceB: "Outsmart robot", turn:17 , path:"right", route: "b", from: "Get that pic for your sister ")

# AFTER ROBOT OUTSMARTED

Choice.create(prompt:"this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.", choiceA: "Show sister Picture", choiceB: "Tell sister about phone call", turn:18 , path:"right", route: "b", from: "You decide to make a run for it. At this point if the robot sees you then it sees you. Do you go back around throught =the lkitchen or try to outsmart the robot in the living room?")

# SHOW SISTER PICTURE

Choice.create(prompt:"You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:19 , path:"left", route: "b", from: "this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.")


Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:20 , path:"left", route: "b", from: "You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear")
Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:20 , path:"right", route: "b", from: "You show your sister the picture and she stares at it for a little while after telling you she has no idea what that is. Enraged you remind her that she said she would definitely be able to tell you what robot it is.She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear")



Choice.create(prompt:"You make a run for it and your sister accidentaly bumps into the side table. The lamp comes crashing down and shes on the floor holding her ankle. if robot can hear: comes running in Captured if robot cant hear as you are trying to help your sister up the stairs comes in and sees you Captured", choiceA: "Captured", choiceB: "Captured", turn:21 , path:"left", route: "b", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.")


Choice.create(prompt:"YOU LISTEN TO YOUR SISTER AND DECIDE TO BE STALTH AND YOU GUYS ARE DOING REALLY WELL MOVING LIKE NINJAS. UNFORTUNATELY YOURE A BIT TOO SLOW AND THE ROBOT COMES INA ND SEES YOU TWO MIDWAY. Captured", choiceA: "Captured", choiceB: "Captured", turn:21 , path:"right", route: "b", from: "You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.")


# DONT SHOW PICTURE TELL ABOUT PHONE CALL

Choice.create(prompt:"you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.", choiceA: "Go Outside ", choiceB: "Go upstairs ", turn:19 , path:"right", route: "b", from: "this works if robot cant hear you decide to outsmatrt the robot but on your way you accidentally trip on the end table which makes a loud noiise. Captured IF ROBOT HEARS if it cant hear you slowly go around it and make your way back to teh closet.")

Choice.create(prompt:"You decide to go outside and make a run for the front door. You open the door and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:20 , path:"left", route: "b", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")
Choice.create(prompt:"You decide it would be best to maybe go upstairs and try to see if you can find something to help you. Youre sister think you should be stalthy and mover carfully but you thinkk the coast is clear now and the robot can come back any second.", choiceA: "Make run ", choiceB: "Move carefully ", turn:20 , path:"right", route: "b", from: "you tell your sister about the phone call and what happened wiht  the picture. You show her the picture and she just shurugss and says she has no idea. She starts telling you shes scared and you decide you two should just make a run for it. Theres nothing in this room that will be able to help you anyway. You look out and see that the coast is clear.")


# IF ROBOT CAN GO UP

Choice.create(prompt:"your plan works and the robot goes up the stairs", choiceA: "leave your sister and follow the robot ", choiceB: "go get your sister ", turn:15 , path:"right", route: "b", from: "you decide to call your phone to try to get the robot to go upstairs and maybe you and your sister can find a better place to hide to come up with a plan.")


# LEAVE SISTER
Choice.create(prompt:"You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.", choiceA: "go outside", choiceB: "go upstairs", turn:16 , path:"left", route: "b", from: "your plan works and the robot goes up the stairs")


Choice.create(prompt:"You go outside and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"left", route: "b", from: "You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")

Choice.create(prompt:"You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.", choiceA: "jump in the bathroom", choiceB: "You jump in your sisters room", turn:17 , path:"right", route: "b", from: "You decide to tell your sister to stay put as you go see the robot. You tell her you didnt tke a picture and decided to go with your plan of calling. You give her her phone back so you can call her when you grab yours.")


Choice.create(prompt:"You jump into the bathroom woo safe. OH no! you hear your sister scream. Captured", choiceA: "Captured", choiceB: "Captured", turn:18 , path:"left", route: "b", from: "You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.")
Choice.create(prompt:"You jump into the sisters room woo safe. OH no! you hear your sister scream. Captured", choiceA: "Captured", choiceB: "Captured", turn:18 , path:"right", route: "b", from: "You go upstairs and see a color coming from if can open doors - your room if it cant the hallway. you hear your sisters phone ring downstairs and the robot is now making its way to end of the hallway where your standing. you look to your left theres the bathroom and the right is your sisters room.")


# BRING SISTER
Choice.create(prompt:"You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.", choiceA: "go outisde", choiceB: "go upstairs ", turn:16 , path:"right", route: "b", from: "your plan works and the robot goes up the stairs")

Choice.create(prompt:"You go outside and see a bright light. Captured", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"left", route: "b", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")
Choice.create(prompt:"You go upstairs: if(robot opens doors): you see a light coming from bedroom and you walk toward it. Captured if(robot cant open doors): light in hallway Captured", choiceA: "Captured", choiceB: "Captured", turn:17 , path:"right", route: "b", from: "You decide to go get your sister because the two of you should definently stick together. You tell her that you decided to call your phone instead of take a picture. She was a bit upset but she laughed it off and said it was probably the better call I dont know much anyways.")




############################### ROBOTS ###############################################
#
# Robot.create(name:"First", hear: true, see: true, arms: false, speed: true, wheels: true, jump: true, doors: true, stairs: true, talk: false,  laser: false,  heat: false, gas: true, robothead: "1")
# Robot.create(name:"Second", hear: false, see: true, arms: true, speed: false, wheels: true, jump: false, doors: true, stairs: true, talk: true,  laser: false, heat: false, gas: true, robothead: "2")
# Robot.create(name:"Third", hear: false, see: false, arms: false, speed: true, wheels: true, jump: true, doors: true, stairs: false, talk: false,  laser: false, heat: true, gas: false, robothead: "3")
# Robot.create(name:"Fourth", hear: true, see: false, arms: true, speed: false, wheels: false, jump: false, doors: false, stairs: true, talk: false,  laser: true, heat: true, gas: false, robothead: "4")
# Robot.create(name:"Fifth", hear: true, see: true, arms: true,  speed: false, wheels: false, jump: true, doors: true, stairs: true, talk: true,  laser: true, heat: true, gas: true, robothead: "5")
# Robot.create(name:"Sixth", hear: false, see: true, arms: false,  speed: false, wheels: false, jump: false, doors: false, stairs: false, talk: true,  laser: false, heat: false, gas: true, robothead: "6")
####################CAN HEAR AND SEE ################
Robot.create(name:"AR-1", hear: true, see: true, arms: false,  speed: true, wheels: true, jump: false, doors: false, stairs: true, talk: false, laser: true, heat: false, gas: false, robothead: "1")

Robot.create(name:"AR-2", hear: true, see: true, arms: true,  speed: true, wheels: true, jump: false , doors: false, stairs: false, talk: false,  laser: true, heat: false, gas: false, robothead: "2")

Robot.create(name:"AR-3", hear: true , see: true , arms: false,  speed: true , wheels: true , jump: true , doors: false, stairs: true , talk: false ,  laser: true, heat: false, gas: false, robothead: "3")

Robot.create(name:"AR-5", hear: true , see: true , arms: false,  speed: false, wheels: false, jump:  true , doors: false, stairs: true , talk: false ,  laser: true, heat: false, gas: false, robothead: "4")

Robot.create(name:"AR-6", hear: true , see: true , arms: false,  speed: true , wheels: false, jump: true, doors: false, stairs: true , talk: false ,  laser: true, heat: false, gas: false, robothead: "5")

Robot.create(name:"BIO-1", hear: true , see: true , arms: false,  speed: false, wheels: true , jump: true , doors: false, stairs: true , talk: false ,  laser: true, heat: false, gas: false, robothead: "6")

Robot.create(name:"BIO-2", hear: true , see: true , arms: false,  speed: true , wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: true, heat: false, gas: false, robothead: "7")

Robot.create(name:"BIO-3", hear: true , see: true , arms: false,  speed: false, wheels: false, jump: true , doors: false, stairs: false, talk: false ,  laser: true, heat: false, gas: false, robothead: "8")

Robot.create(name:"BIO-4", hear: true , see: true , arms: false,  speed: true , wheels: false, jump: true , doors: false, stairs: false, talk: false ,  laser: true, heat: false, gas: false, robothead: "9")

Robot.create(name:"BIO-5", hear: true , see: true , arms: false,  speed: false, wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: true, heat: false, gas: false, robothead: "10")

Robot.create(name:"BIO-6", hear: true , see: true , arms: false,  speed: true , wheels: true , jump: true , doors: true , stairs: true , talk: false ,  laser: true, heat: false, gas: false, robothead: "11")

Robot.create(name:"Cy-1", hear: true , see: true , arms: false,  speed: false, wheels: false, jump: true , doors: true , stairs: true , talk: false ,  laser: true, heat: false, gas: false, robothead: "12")

Robot.create(name:"Cy-2", hear: true , see: true , arms: false,  speed: false, wheels: false, jump: false , doors: false, stairs: false, talk: false ,  laser: true, heat: false, gas: false, robothead: "97")

Robot.create(name:"Cy-3", hear: true , see: true , arms: false,  speed: true , wheels: false, jump: true , doors: true , stairs: true , talk: false ,  laser: true, heat: false, gas: false, robothead: "13")

Robot.create(name:"Cy-4", hear: true , see: true , arms: false,  speed: false, wheels: true , jump: true, doors:true , stairs: true , talk: false ,  laser: true, heat: false, gas: false, robothead: "14")

Robot.create(name:"Cy-5", hear: true , see: true , arms: false,  speed: true , wheels: true , jump: true , doors: true , stairs: false, talk: false ,  laser: true, heat: false, gas: false, robothead: "15")

Robot.create(name:"Cy-6", hear: true , see: true , arms: false,  speed: false, wheels: false, jump: true , doors: true , stairs: false, talk: false ,  laser: true, heat: false, gas: false, robothead: "16")

Robot.create(name:"XE-1", hear: true , see: true , arms: false,  speed:  true, wheels: false, jump:  true , doors: true, stairs: false, talk: false ,  laser: true, heat: false, gas: false, robothead: "17")

Robot.create(name:"XE-2", hear: true , see: true , arms: false,  speed: false, wheels: true , jump: true , doors: true , stairs: false, talk: false ,  laser: true, heat: false, gas: false, robothead: "18")


Robot.create(name:"XE-3", hear:true , see:true , arms: false,  speed:true , wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: true, heat: false, gas: false, robothead: "19")

################################# Can Hear Cant See #######
Robot.create(name:"XE-4", hear: true , see: false , arms: false ,  speed: true , wheels: true , jump: false , doors: false , stairs: true , talk: false ,  laser: true, heat: true, gas: false, robothead: "20")

Robot.create(name:"XE-5", hear: true , see: false , arms: true,  speed: true , wheels: true, jump: false , doors: false, stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "21")

Robot.create(name:"XE-6", hear: true , see: false , arms: false,  speed: true , wheels: true , jump: true , doors: false, stairs: true , talk: false ,  laser: true, heat: true, gas: false, robothead: "22")

Robot.create(name:"SYL-1", hear: true , see: false , arms: false,  speed: false, wheels: false, jump:  true , doors: false, stairs: true , talk: false ,  laser: true, heat: true, gas: false, robothead: "23")

Robot.create(name:"SYL-2", hear: true , see: false , arms: false,  speed: true , wheels: false, jump: true, doors: false, stairs: true , talk: false ,  laser: true, heat: true, gas: false, robothead: "24")

Robot.create(name:"SYL-3", hear: true , see: false , arms: false,  speed: false, wheels: true , jump: true , doors: false, stairs: true , talk: false ,  laser: true, heat: true, gas: false, robothead: "25")

Robot.create(name:"SYL-4", hear: true , see: false , arms: false,  speed: true , wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "26")

Robot.create(name:"SYL-5", hear: true , see: false , arms: false,  speed: false, wheels: false, jump: true , doors: false, stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "27")

Robot.create(name:"SYL-6", hear: true , see: false , arms: false,  speed: true , wheels: false, jump: true , doors: false, stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "28")

Robot.create(name:"", hear: true , see: false , arms: false,  speed: false, wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "29")

Robot.create(name:"GLX-1", hear: true , see: false , arms: false,  speed: true , wheels: true , jump: true , doors: true , stairs: true , talk: false ,  laser: true, heat: true, gas: false, robothead: "30")

Robot.create(name:"GLX-2", hear: true , see: false , arms: false,  speed: false, wheels: false, jump: true , doors: true , stairs: true , talk: false ,  laser: true, heat: true, gas: false, robothead: "31")

Robot.create(name:"GLX-3", hear: true , see: false , arms: false,  speed: false, wheels: false, jump: false , doors: false, stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "32")

Robot.create(name:"GLX-4", hear: true , see: false , arms: false,  speed: true , wheels: false, jump: true , doors: true , stairs: true , talk: false ,  laser: true, heat: true, gas: false, robothead: "33")

Robot.create(name:"GLX-5", hear: true , see: false , arms: false,  speed: false, wheels: true , jump: true, doors:true , stairs: true , talk: false ,  laser: true, heat: true, gas: false, robothead: "34")

Robot.create(name:"GLX-6", hear: true , see: false , arms: false,  speed: true , wheels: true , jump: true , doors: true , stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "35")

Robot.create(name:"Z-", hear: true , see: false , arms: false,  speed: false, wheels: false, jump: true , doors: true , stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "36")

Robot.create(name:"Z-1", hear: true , see: false , arms: false,  speed:  true, wheels: false, jump:  true , doors: true, stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "37")

Robot.create(name:"Z-2", hear: true , see: false , arms: false,  speed: false, wheels: true , jump: true , doors: true , stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "38")


Robot.create(name:"Z-3", hear:true , see: false , arms: false,  speed:true , wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: true, heat: true, gas: false, robothead: "39")


##Can Hear Can see arms #########
Robot.create(name:"Z-4", hear:true , see:true , arms:true ,  speed: true , wheels: true, jump: true , doors: false, stairs: true , talk: false,  laser: false, heat: false , gas: true, robothead: "40")

Robot.create(name:"Z-5", hear:true , see:true , arms:true ,  speed: false, wheels:false, jump: true , doors: false, stairs: true , talk: false,  laser: false, heat: false , gas: true, robothead: "41")

Robot.create(name:"Z-6", hear:true , see:true , arms:true ,  speed: true , wheels:false, jump: true , doors: false, stairs: true , talk: false,  laser: false, heat: false , gas: true, robothead: "42")

Robot.create(name:"OXE-1", hear:true , see:true , arms:true ,  speed: false, wheels: true, jump: true , doors: false, stairs: true , talk: false,  laser: false, heat: false , gas: true, robothead: "43")

Robot.create(name:"OXE-2", hear:true , see:true , arms:true ,  speed: true , wheels: true, jump: true , doors: false, stairs: false, talk: false,  laser: false, heat: false , gas: true, robothead: "44")

Robot.create(name:"OXE-3", hear:true , see:true , arms:true ,  speed: false, wheels:false, jump: true , doors: false, stairs: false, talk: false,  laser: false, heat: false , gas: true, robothead: "45")

Robot.create(name:"OXE-4", hear:true , see:true , arms:true ,  speed:true , wheels:false, jump: true , doors: false, stairs: false, talk: false,  laser: false, heat: false , gas: true, robothead: "46")

Robot.create(name:"OXE-5", hear:true , see:true , arms:true ,  speed: false, wheels: true, jump: true , doors: false, stairs: false, talk: false,  laser: false, heat: false , gas: true, robothead: "47")

Robot.create(name:"OXE-6", hear:true , see:true , arms:true ,  speed: true , wheels: true, jump: true , doors: true , stairs: true , talk: false,  laser: false, heat: false , gas: true, robothead: "48")

Robot.create(name:"FLUX-1", hear:true , see:true , arms:true ,  speed: false, wheels:false, jump: true, doors: true, stairs: true, talk: false,  laser: false, heat: false , gas: true, robothead: "49")

Robot.create(name:"FLUX-2", hear:true , see:true , arms:true ,  speed: true , wheels:false, jump: true , doors: true, stairs: true , talk: false,  laser: false, heat: false , gas: true, robothead: "50")

Robot.create(name:"FLUX-3", hear:true , see:true , arms:true ,  speed: false, wheels: true, jump: true , doors: true , stairs: true , talk: false,  laser: false, heat: false , gas: true, robothead: "51")

Robot.create(name:"FLUX-4", hear:true , see:true , arms:true ,  speed: true , wheels: true, jump: true , doors: true , stairs: false, talk: false,  laser: false, heat: false , gas: true, robothead: "52")

Robot.create(name:"FLUX-5", hear:true , see:true , arms:true ,  speed: false, wheels:false, jump: true , doors: true , stairs: false, talk: false,  laser: false, heat: false , gas: true, robothead: "53")

Robot.create(name:"FLUX-6", hear:true , see:true , arms:true ,  speed: true , wheels:false, jump: true , doors: true , stairs: false, talk: false,  laser: false, heat: false , gas: true, robothead: "54")

Robot.create(name:"ZORO", hear:true , see:true , arms:true ,  speed: false, wheels: true, jump: true , doors: true , stairs: false, talk: false,  laser: false, heat: false , gas: true, robothead: "55")

#####################END LASER ####################
####################GAS BOTS ######################
Robot.create(name:"VT-1", hear: true , see: true , arms: false ,  speed: true , wheels: true , jump: false , doors: false , stairs: true , talk: false ,  laser: false, heat: false, gas: true, robothead: "56")

Robot.create(name:"VT-2", hear: true , see: true , arms: true,  speed: true , wheels: true, jump: false , doors: false, stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "57")

Robot.create(name:"VT-3", hear: true , see: true , arms: false,  speed: true , wheels: true , jump: true , doors: false, stairs: true , talk: false ,  laser: false, heat: false, gas: true, robothead: "58")

Robot.create(name:"VT-5", hear: true , see: true , arms: false,  speed: false, wheels: false, jump:  true , doors: false, stairs: true , talk: false ,  laser: false, heat: false, gas: true, robothead: "59")

Robot.create(name:"VT-6", hear: true , see: true , arms: false,  speed: true , wheels: false, jump: true, doors: false, stairs: true , talk: false ,  laser: false, heat: false, gas: true, robothead: "60")

Robot.create(name:"PAX-1", hear: true , see: true , arms: false,  speed: false, wheels: true , jump: true , doors: false, stairs: true , talk: false ,  laser: false, heat: false, gas: true, robothead: "61")

Robot.create(name:"PAX-2", hear: true , see: true , arms: false,  speed: true , wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "62")

Robot.create(name:"PAX-3", hear: true , see: true , arms: false,  speed: false, wheels: false, jump: true , doors: false, stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "63")

Robot.create(name:"PAX-4", hear: true , see: true , arms: false,  speed: true , wheels: false, jump: true , doors: false, stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "64")

Robot.create(name:"PAX-5", hear: true , see: true , arms: false,  speed: false, wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "65")

Robot.create(name:"PAX-6", hear: true , see: true , arms: false,  speed: true , wheels: true , jump: true , doors: true , stairs: true , talk: false ,  laser: false, heat: false, gas: true, robothead: "66")

Robot.create(name:"OTX-1", hear: true , see: true , arms: false,  speed: false, wheels: false, jump: true , doors: true , stairs: true , talk: false ,  laser: false, heat: false, gas: true, robothead: "67")

Robot.create(name:"OTX-2", hear: true , see: true , arms: false,  speed: false, wheels: false, jump: false , doors: false, stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "68")

Robot.create(name:"OTX-3", hear: true , see: true , arms: false,  speed: true , wheels: false, jump: true , doors: true , stairs: true , talk: false ,  laser: false, heat: false, gas: true, robothead: "69")

Robot.create(name:"OTX-4", hear: true , see: true , arms: false,  speed: false, wheels: true , jump: true, doors:true , stairs: true , talk: false ,  laser: false, heat: false, gas: true, robothead: "70")

Robot.create(name:"OTX-5", hear: true , see: true , arms: false,  speed: true , wheels: true , jump: true , doors: true , stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "71")

Robot.create(name:"OTX-6", hear: true , see: true , arms: false,  speed: false, wheels: false, jump: true , doors: true , stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "72")

Robot.create(name:"XRA-1", hear: true , see: true , arms: false,  speed:  true, wheels: false, jump:  true , doors: true, stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "73")

Robot.create(name:"XRA-2", hear: true , see: true , arms: false,  speed: false, wheels: true , jump: true , doors: true , stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "74")


Robot.create(name:"XRA-3", hear:true , see:true , arms: false,  speed:true , wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: false, heat: false, gas: true, robothead: "75")

################################# Can Hear Cant See #######
Robot.create(name:"XRA-4", hear: true , see: false , arms: false ,  speed: true , wheels: true , jump: false , doors: false , stairs: true , talk: false ,  laser: false, heat: true, gas: true, robothead: "76")

Robot.create(name:"XRA-5", hear: true , see: false , arms: true,  speed: true , wheels: true, jump: false , doors: false, stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "77")

Robot.create(name:"XRA-6", hear: true , see: false , arms: false,  speed: true , wheels: true , jump: true , doors: false, stairs: true , talk: false ,  laser: false, heat: true, gas: true, robothead: "78")

Robot.create(name:"DLR-1", hear: true , see: false , arms: false,  speed: false, wheels: false, jump:  true , doors: false, stairs: true , talk: false ,  laser: false, heat: true, gas: true, robothead: "79")

Robot.create(name:"DLR-2", hear: true , see: false , arms: false,  speed: true , wheels: false, jump: true, doors: false, stairs: true , talk: false ,  laser: false, heat: true, gas: true, robothead: "80")

Robot.create(name:"DLR-3", hear: true , see: false , arms: false,  speed: false, wheels: true , jump: true , doors: false, stairs: true , talk: false ,  laser: false, heat: true, gas: true, robothead: "81")

Robot.create(name:"DLR-4", hear: true , see: false , arms: false,  speed: true , wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "82")

Robot.create(name:"DLR-5", hear: true , see: false , arms: false,  speed: false, wheels: false, jump: true , doors: false, stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "83")

Robot.create(name:"DLR-6", hear: true , see: false , arms: false,  speed: true , wheels: false, jump: true , doors: false, stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "84")

Robot.create(name:"TORO", hear: true , see: false , arms: false,  speed: false, wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "85")

Robot.create(name:"FSU-1", hear: true , see: false , arms: false,  speed: true , wheels: true , jump: true , doors: true , stairs: true , talk: false ,  laser: false, heat: true, gas: true, robothead: "86")

Robot.create(name:"FSU-2", hear: true , see: false , arms: false,  speed: false, wheels: false, jump: true , doors: true , stairs: true , talk: false ,  laser: false, heat: true, gas: true, robothead: "87")

Robot.create(name:"FSU-3", hear: true , see: false , arms: false,  speed: false, wheels: false, jump: false , doors: false, stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "88")

Robot.create(name:"FSU-4", hear: true , see: false , arms: false,  speed: true , wheels: false, jump: true , doors: true , stairs: true , talk: false ,  laser: false, heat: true, gas: true, robothead: "89")

Robot.create(name:"FSU-5", hear: true , see: false , arms: false,  speed: false, wheels: true , jump: true, doors:true , stairs: true , talk: false ,  laser: false, heat: true, gas: true, robothead: "90")

Robot.create(name:"FSU-6", hear: true , see: false , arms: false,  speed: true , wheels: true , jump: true , doors: true , stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "91")

Robot.create(name:"ZW-0", hear: true , see: false , arms: false,  speed: false, wheels: false, jump: true , doors: true , stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "92")

Robot.create(name:"ZW-1", hear: true , see: false , arms: false,  speed:  true, wheels: false, jump:  true , doors: true, stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "93")

Robot.create(name:"ZW-2", hear: true , see: false , arms: false,  speed: false, wheels: true , jump: true , doors: true , stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "94")


Robot.create(name:"ZW-3", hear:true , see: false , arms: false,  speed:true , wheels: true , jump: true , doors: false, stairs: false, talk: false ,  laser: false, heat: true, gas: true, robothead: "95")


################################### END ROBOTS ###########################################
