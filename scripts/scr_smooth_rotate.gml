var angleStart = argument0;
var angleEnd = argument1;
var rotationSpeed = argument2;

if (abs(((angleEnd - angleStart) mod 360 + 540) mod 360 - 180) <= rotationSpeed) {
    angleStart = angleEnd;
} else {
    angleStart += sign(((angleEnd - angleStart) mod 360 + 540) mod 360 - 180) * rotationSpeed;
}

return angleStart;
