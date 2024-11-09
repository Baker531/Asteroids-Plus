event_inherited();

type = global.weighted_ships[
    irandom_range(0, array_length(global.weighted_ships) - 1)
];
ship = global.config.ships[type];

speed = ship.speed;
direction = irandom_range(0, 359);
image_angle = direction;

// initialSpeed = 1.5;

// objScore = 100;

// damage = 20;
// max_hp = 10;
// hp = max_hp;
// cameraShake = 4;

// shooting = true;
// bulletSpeed = 5;
// bulletCounter = 0;
// fireRate = 30;
// bulletDamage = 10;

// following = true; // Move forward along angle
// tracking = true; // Point towards player
// returning = true; // If not seeing player, return to old angle
// fade = 0.1; // Fade between

// dodging = false; // Slow down if very near player
// chasing = true; // Speed up if near player
// decel = 0.05; // Deceleration when scared
// accel = 0.02; // Acceleration when not scared
// decelRadius = 150; // How easily scared the ship is (minimum distance to ship)

// detectionRadius = 250;

pwup_chance = 25;

// Healthbar properties
hb_y_off = 0;
hb_width = 30;
hb_height = 5;

