event_inherited();


initialSpeed = 1.5;
speed = initialSpeed;
direction = irandom_range(0, 359);
image_angle = direction;

objScore = 100;

damage = 20;
max_hp = 10;
hp = max_hp;

shooting = true;
bulletSpeed = 4;
bulletCounter = 0;
fireRate = 30;

following = true; // Move forward towards angle
tracking = true; // Point towards player
fade = 0.1; // Fade between

dodging = false; // Slow down if very near player
chasing = true; // Speed up if near player
decel = 0.05; // Deceleration when scared
accel = 0.02; // Acceleration when not scared
decelRadius = 150; // How easily scared the ship is (minimum distance to ship)

detectionRadius = 250;


// Healthbar properties
hb_y_off = 10;
hb_width = 40;
hb_height = 5;

