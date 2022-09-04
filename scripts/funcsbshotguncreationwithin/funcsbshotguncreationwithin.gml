// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function funcSBShotgunCreationWithin(BIG_object,direction,speed,spriteindex,object,amount,separationDegrees,sentMode){
    var minDegree = 0;
    if (amount % 2 == 1) {
        minDegree = ((amount - 1)/2)*separationDegrees;
    }
    else {
        minDegree = (amount/2)*separationDegrees + separationDegrees/2;
    }
    var maxDegree = minDegree;
    minDegree = -minDegree;
    var bulletArray;
    var megaArray;
    var count = 0;
    for (var i = minDegree; i <= maxDegree; i = i + separationDegrees)
    {
        var bullet = funcSBCreationWithin(BIG_object,direction + i,speed,spriteindex,object);
        bulletArray[count++] = bullet;
        with(bullet)
        {
            directionSurplus = i;
            mode = sentMode;
        }
    }
    megaArray[0] = bulletArray;
    megaArray[1] = count;
    return megaArray;
}