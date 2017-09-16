obj = instance_create(other.x + random_range(-16, 16), other.y - 48 + random_range(-8, 8), obj_damage_font);
obj.dmg = irandom_range(other.minDamage, other.maxDamage);
hp -= obj.dmg;
with (other) {instance_destroy();}
