var dir = point_direction(x, y, mouse_x, mouse_y);


if(dir > 90 && dir < 270) {
	image_yscale = -1;
} else {
	image_yscale = 1;
}

image_angle = dir;

function shoot() {
	 // Calcular a posição do cano da arma considerando a rotação
    var bulletX = x + lengthdir_x(xOffset, image_angle) + lengthdir_x(yOffset * image_yscale, image_angle + 90);
    var bulletY = y + lengthdir_y(xOffset, image_angle) + lengthdir_y(yOffset * image_yscale, image_angle + 90);

    // Criar o projétil na posição calculada
    var bullet = instance_create_layer(bulletX, bulletY, "Instances", objBullet);
    
    // Definir a direção do projétil para a direção atual do jogador
	bullet.speed = 3;
    bullet.direction = image_angle;
    bullet.image_angle = bullet.direction;
}

if(mouse_check_button_pressed(mb_left)) {
	shoot();
}