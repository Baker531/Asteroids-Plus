if (!instance_exists(obj_ship)) exit;

if (point_distance(x,y, obj_ship.x,obj_ship.y) < ship.detectionRadius) {
    if (ship.tracking) {
        var new_angle = point_direction(x,y, obj_ship.x, obj_ship.y);
        new_angle = image_angle - angle_difference(image_angle, new_angle);
        image_angle = lerp(image_angle, new_angle, 0.05);
    }
    if (ship.following) {
        direction = image_angle;    
    }
    if (near_obj(obj_ship, ship.decelRadius)) {
        speed -= ship.decel;
    } else {
        speed += ship.accel;
    }
    if (ship.shooting) {
        if (++bulletCounter >= ship.fireRate) {
            create_bullet(image_angle, ship.bulletSpeed, 0, sprite_height/2);
            bulletCounter = 0;
        }
    }
} else {
    if (ship.returning) {
        image_angle = lerp(image_angle, direction, 0.05);
    }
    if (ship.decel > 0 || ship.accel > 0) {
        speed = lerp(speed, initialSpeed, 0.1);    
    }
}