// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function debris(number, debris_speed, debris_variance){
    repeat(number) {
        var inst = instance_create_layer(x, y, "Instances", obj_debris);
        inst.speed = random_range(debris_speed-debris_variance, debris_speed+debris_variance)
        inst.image_blend = image_blend;
    }
}

function spawn_obj(obj, num, radius) {
    repeat(num) {
        var xx, yy;
        do {
            xx = irandom_range(0, room_width);
            yy = irandom_range(0, room_height);
        } until (point_distance(xx, yy, obj_ship.x, obj_ship.y) > radius)
        instance_create_layer(xx, yy, "Instances", obj);
    }
}
function near_obj(obj, radius) {
    return (point_distance(x, y, obj.x, obj.y) < radius)    
}
function draw_overlay(sprite, subsprite, color, alpha) {
    draw_sprite_ext(sprite, subsprite, x, y, image_xscale, image_yscale, image_angle, color, alpha)
}
function checkNextLevel() {
    if (global.levelScore >= global.scoreRequired && !global.nextLevel) {
        show_debug_message(obj_alarms);
        global.nextLevel = true;
        with (obj_alarms) {alarm[0] = 120};
    }
}

function nextLevel() {
    global.level++;
    global.levelScore = 0;
    global.destroyed_asteroids = 0;
    global.total_asteroids += ASTEROID_INCREASE;
    global.scoreRequired += global.config.scoreRequiredChange;
    global.nextLevel = false;
    health = obj_ship.hp;
    room_restart();
}

function resetLevel() {
    health = 100;
    global.destroyed_asteroids = 0;
    room_restart();
}

function increaseScore(by) {
    global.levelScore += by;
    score += by;
    checkNextLevel();
}