#region global constants
#macro none "none"
#macro ASTEROID_INCREASE 30
#macro REQUIRED_ASTEROIDS 30
#macro DEBRIS_SPEED 1
#macro DEBRIS_SPEED_VARIANCE 0.5
#macro target_fps game_get_speed(gamespeed_fps)

#endregion

#region global variables
score = 0;
global.levelScore = 0;
lives = 3;
global.level = 1;
global.destroyed_asteroids = 0;
global.total_asteroids = 150;
global.levelDisplay = false;
textDuration = 120;
nextLevelAlpha = 1;
#endregion

#region global toolkit
function set_text_style(font, color) {
    draw_set_font(font);
    draw_set_color(color);
    if (argument_count == 3) {
        draw_set_halign(argument[2])
    }
}

#endregion

#region global functions
function spawn_objects() {
    spawn_obj(obj_asteroid, global.total_asteroids, 200);
    
    spawn_obj(obj_par_enemy, global.config.totalShips, 200);
    
}
#endregion

#region enums
enum factions {
    enemy,
    ally,
    neutral
}
enum pwup {
    two,
    three,
    four,
    eight,
    laser,
    shield
}
#endregion

randomize()

displayLevel()

#region Text

scribble_font_set_default("fnt_main")
text = {};
text.pre = {}
text.pre.instructions = scribble(@"
Get 1000 points to win the level!
Each level, points to win goes up by 200.
AIM: Destroy enemies and asteroids.


Sometimes, hitting an asteroid gives you a powerup. Hitting an asteroid has a 10% chance and hitting an enemy has a 25% chance to drop a random powerup. Collect it quick! The powerups are:

Two guns: Two forward-facing guns.
Three guns: Three forward-facing guns.

Four guns: Bullets go out from all points of the compass.

Eight guns: Congrats! You just turned into an asteroid-killing machine! Bullets come out in a star formation.

Laser: A powerful (if i can fix it) destroying beam of energy.

Shield: Nothing can get close to you! You have a shield generator! Go headbut some enemies.


There’s lots of enemies in asteroids plus.

Raider: The basic enemy. Can be destroyed in one shot. Fires bullets.

Hunter: Rather keen on dodging. Loves to evade you. Shoots fast bullets.

Brute: Tough. Has 50hp. It doesn’t shoot, but instead follows you.

Gunner: The machine-gun enemy. Fires lots of weak bullets. Has 20hp. Wipe it out quick.

Tank: The heaviest. Fires 20-damage bullets infrequently. Avoid. If you ram them, you lose 30hp.

    
The game is built around asteroids. So they deserve a mention.

When an asteroid is hit, it breaks in two. Unless, of course, it’s a small one.

When you smash into an asteroid, you lose:
10 Health for small
15 Health for medium
20 Health for large

When you hit an asteroid, you get 50 points.
    

When you lose all your health,
you lose a life and restart the level.
    
CONTROLS:
UP: accelerate
DOWN: reverse
LEFT/RIGHT: turn
SPACE: shoot
    
>>PRESS ENTER TO START<<
"
)
#endregion