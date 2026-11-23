randomise()
global.targetPanel = obj_PanelArray
xCord = irandom_range(1,14)
yCord = irandom_range(1,14)
obj_BattleController.battleGrid[xCord,yCord].entity = id;
obj_BattleController.battleGrid[xCord,yCord].occupied = true;
depth = 1
deactivate = false

//test block to randomly generate stats

up = "W"
down = "S"
left = "A"
right = "D"

str = irandom_range(10,45);
vig = irandom_range(10,45);
spi = irandom_range(10,45);
mnd = irandom_range(10,45);
agi = irandom_range(10,45);
lck = irandom_range(10,45);

//test block to generate stats from base attributes

apMax = round((vig+agi)/15) + 4;
hpMax = vig*2 + round(mnd*1.2) + round(str*1.05) + 150;
hp = hpMax
critChance = lck/10;
spMax = 100
sp = spMax
meleeApCost = 3



