/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 5E9E3B9B
/// @DnDArgument : "macro" "MAX_TIME"
/// @DnDArgument : "value" "60*6"
#macro MAX_TIME 60*6

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 049673A9
/// @DnDInput : 2
/// @DnDArgument : "expr" "MAX_TIME"
/// @DnDArgument : "var" "timer"
/// @DnDArgument : "var_1" "text_index"
timer = MAX_TIME;
text_index = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59B415EF
/// @DnDArgument : "code" "text = ["This is the tutorial of our game. We hope you have an great time!", $(13_10)"Skip page with Enter Key", $(13_10)"Move With Arrow Keys", $(13_10)"Watch Out For The Ghosts. They'll Insta Kill You",$(13_10)"Enemies are killable with your weapons and traps",$(13_10)"Skip whole tutorial with Delete",$(13_10)"I wonder what enter does...",$(13_10)"Wow, you made it this far? You must have nothing to do...\nPAY $5 TO SKIP TUTORIAL FOREVER BY PRESSING P",$(13_10)"We have recieved payment. Please enjoy the rest of the tutorial.",$(13_10)"Power ups will spawn ransomly",$(13_10)"You think I meant randomly, no... Powerups are a premium feature we are holding for ransom.",$(13_10)"If you are on a Mac, you should have enough money to buy our powerups",$(13_10)"Have Fun",$(13_10)"Good Luck",$(13_10)"",$(13_10)"Did you want more controls? Fine.",$(13_10)"Shoot With Enter Key", $(13_10)"JK Shoot With Space",$(13_10)"Switch Items With Num Keys",$(13_10)"",$(13_10)"This game is a maze based defense game where the enemies are going to surround the player from all directions while the player has to navigate the maze, control aim, ammo, traps, and more in order to survive. The player will face hordes of enemies in a wave based experience and earn in game currency to buy ammo and new gear as well as power ups like a chocolate bar. That's right. A chocolate bar. Who knows what that would do? I don't since I'm just text. The answer will cost you. I will reveal it early if you give the developers of the game $5. They will tell you everything and probably sell you the game for like $30 at most. Like the code and everything. They will sell it to you instead of getting it leaked like Twitch did. The real controls are pretty standard and some enemies will only follow you and not kill you. Move is WASD, item switching is on scroll wheel, shoot is left click. What else, traps can kill certain enemies, but not all, or can they? JK they are useful and replace your weapon so you place with left click as well.",$(13_10)"By the way, the real key to skip the whole tutorial is F3"];$(13_10)$(13_10)boxWidth = sprite_get_width(spr_textbox);$(13_10)stringHeight = string_height(array_get(text, 0));$(13_10)$(13_10)"
text = ["This is the tutorial of our game. We hope you have an great time!", 
"Skip page with Enter Key", 
"Move With Arrow Keys", 
"Watch Out For The Ghosts. They'll Insta Kill You",
"Enemies are killable with your weapons and traps",
"Skip whole tutorial with Delete",
"I wonder what enter does...",
"Wow, you made it this far? You must have nothing to do...\nPAY $5 TO SKIP TUTORIAL FOREVER BY PRESSING P",
"We have recieved payment. Please enjoy the rest of the tutorial.",
"Power ups will spawn ransomly",
"You think I meant randomly, no... Powerups are a premium feature we are holding for ransom.",
"If you are on a Mac, you should have enough money to buy our powerups",
"Have Fun",
"Good Luck",
"",
"Did you want more controls? Fine.",
"Shoot With Enter Key", 
"JK Shoot With Space",
"Switch Items With Num Keys",
"",
"This game is a maze based defense game where the enemies are going to surround the player from all directions while the player has to navigate the maze, control aim, ammo, traps, and more in order to survive. The player will face hordes of enemies in a wave based experience and earn in game currency to buy ammo and new gear as well as power ups like a chocolate bar. That's right. A chocolate bar. Who knows what that would do? I don't since I'm just text. The answer will cost you. I will reveal it early if you give the developers of the game $5. They will tell you everything and probably sell you the game for like $30 at most. Like the code and everything. They will sell it to you instead of getting it leaked like Twitch did. The real controls are pretty standard and some enemies will only follow you and not kill you. Move is WASD, item switching is on scroll wheel, shoot is left click. What else, traps can kill certain enemies, but not all, or can they? JK they are useful and replace your weapon so you place with left click as well.",
"By the way, the real key to skip the whole tutorial is F3"];

boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(array_get(text, 0));