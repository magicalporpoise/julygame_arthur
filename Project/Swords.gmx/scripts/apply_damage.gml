/// apply_damage(person, damage)
//  
//  person      the object receiving the damage
//  damage      the amount of damage
//
//      apply damage to a hittable object

per = argument0;
dmg = argument1;

per.my_life_cur -= dmg;

per.my_life_cur = clamp(per.my_life_cur, 0, per.my_life_max);
