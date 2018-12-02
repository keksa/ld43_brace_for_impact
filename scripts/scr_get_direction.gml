var target_direction = argument0;

var i;
for (i = 0; i < instance_number(obj_engine); i += 1)
{
    enemy[i] = instance_find(obj_Enemy,i);
}
