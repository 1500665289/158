local SC = GameMain:NewMod("SC");

function SC:SCHLC()

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("中州双子王");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("黑暗君王","......",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1900,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 2
while(npc.LuaHelper:GetGLevel() ~= 12)
do
npc.PropertyMgr.Practice:AddPractice(9999999)
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(40000000)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(8000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 10000;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end;
local count = 0;
while(count < 6) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(0)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc:AddLing(999999999);
end

function SC:SCHLC1()

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("中州双子王");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("黑暗君王","......",4);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1900,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 2
while(npc.LuaHelper:GetGLevel() ~= 12)
do
npc.PropertyMgr.Practice:AddPractice(9999999)
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(40000000)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(4000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
npc.FightBody.AttackTime = 50000;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end;
local count = 0;
while(count < 6) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(0)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc:AddLing(999999999);
end

function SC:SWFS()
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姜太虚");
npc.PropertyMgr:AddFeature("KingofBody");
npc.LuaHelper:AddTitle("白衣神王","一袭白衣，绝代神王",4);
npc.PropertyMgr:AddModifier("ZT_ALL");
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 9
while(npc.LuaHelper:GetGLevel() ~= 12)
do
npc.PropertyMgr.Practice:AddPractice(9999999)
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(40000000)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(12500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
npc.FightBody.AttackTime = 50000;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)

local fabaoname = {"斗战龙气","天龙之威","太虚神王","海上升明月","青穹万里","紫霄龙王怒"}
for i=1,6,1 do
local item =CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao,0,12,100,"HUO_QCSH","Item_StarEssence",10)
npc.map:DropItem(item,npc.Key,true,true,false,true,5);
item:SetName(fabaoname[i]);
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,6600)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,3)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.35)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,4500)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,3900)
item:AddLing(99999999999);
npc:EquipItem(item,CS.XiaWorld.g_emEquipType.None)
end
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc:AddLing(999999999);
end

function SC:SWFS1()

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姜太虚");
npc.PropertyMgr:AddFeature("KingofBody");
npc.LuaHelper:AddTitle("白衣神王","一袭白衣，绝代神王",4);
npc.PropertyMgr:AddModifier("ZT_ALL");
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 6
while(npc.LuaHelper:GetGLevel() ~= 12)
do
npc.PropertyMgr.Practice:AddPractice(9999999)
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(90000000)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(10000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(9999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
npc.FightBody.AttackTime = 50000;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false)
local fabaoname = {"斗战龙气","天龙之威","太虚神王","海上升明月","青穹万里","紫霄龙王怒"}
for i=1,6,1 do
local item =CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao,0,12,100,"Item_LQ","Item_StarEssence",10)
npc.map:DropItem(item,npc.Key,true,true,false,true,5);
item:SetName(fabaoname[i]);
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,5000)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.5)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,3500)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,3000)
item:AddLing(99999999999);
npc:EquipItem(item,CS.XiaWorld.g_emEquipType.None)
end
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc:AddLing(999999999);
end


function SC:ST()

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("叶凡");
npc.PropertyMgr:AddFeature("GodBody");
npc.LuaHelper:AddTitle("荒古圣体","荒古后第一个打破诅咒的圣体",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1400,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(6000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
npc.FightBody.AttackTime = 50000;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end;
local count = 0;
while(count < 6) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(0)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3800)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,2400)
fabao:AddLing(99999999999);
end
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc:AddLing(999999999);
end

function SC:ST1()

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("叶凡");
npc.PropertyMgr:AddFeature("GodBody");
npc.LuaHelper:AddTitle("荒古圣体","荒古后第一个打破诅咒的圣体",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,8,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(4800000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
npc.FightBody.AttackTime = 50000;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",4)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end;
local count = 0;
while(count < 6) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(0)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
end;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc:AddLing(999999999);
end