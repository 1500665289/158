local XG = GameMain:NewMod("XG");

function XG:LXDT1()
local zj = me.npcObj;
zj:LeaveMapExplore();

zj:LeaveFlying();
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
NpcMgr:AddNpc(npc,300,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc:AddTitle("灵墟洞天大弟子",0,CS.XiaWorld.g_emNpcTitleType.Normal,3)
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(300000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",4)
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 10000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
local count = 0;
while(count < 4) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(0)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end;
npc:AddLing(9999999);
for i=0,6,1 do
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,500 + 50*i,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,5,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:AddTitle("灵墟洞天弟子",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddFeature("ZTofBody");
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 100;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end



function XG:LXDT2()
local zj = me.npcObj;
zj:LeaveMapExplore();

zj:LeaveFlying();
for i=1,9,3 do
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,1000 + 150*i,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,5,CS.XiaWorld.g_emNpcRichLable.Normal);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc:AddTitle("灵墟洞天弟子",0,CS.XiaWorld.g_emNpcTitleType.Normal,2)
npc.PropertyMgr:AddFeature("ZTofBody");
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
for i=1,9,3 do
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,1000 + 150*i,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,5,CS.XiaWorld.g_emNpcRichLable.Normal);

npc:AddTitle("灵墟洞天弟子",0,CS.XiaWorld.g_emNpcTitleType.Normal,3)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);

npc.PropertyMgr:AddFeature("ZTofBody");
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 300;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end
end

function XG:LXDT3()
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,1000,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,5,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("叶凡");
npc.PropertyMgr:AddFeature("GodBody");
npc.LuaHelper:AddTitle("荒古圣体","荒古后第一个打破诅咒的圣体",4);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",2)
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
end
end


function XG:LXDT4()
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,600,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,7,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("姜家跑腿");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("追杀圣体","荒古后第不知道几个追杀圣体的人",2);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
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
end
end



function XG:LXDT5()
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,1000,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,5,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("叶凡");
npc.PropertyMgr:AddFeature("GodBody");
npc.LuaHelper:AddTitle("荒古圣体","荒古后第一个打破诅咒的圣体",4);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",2)
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
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
NpcMgr:AddNpc(npc,600,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
ThingMgr:EquptNpc(npc,7,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("姜家跑腿");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("追杀圣体","荒古后第不知道几个追杀圣体的人",2);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
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
end
end
end



function XG:LXDT6()
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,1000,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("韩长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("古人诚不欺我","荒古后第一个准备拿圣体炼药之人",3);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(400000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
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
end
end


function XG:LXDT7()
local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);

NpcMgr:AddNpc(npc,1000,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("韩长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("古人诚不欺我","荒古后第一个准备拿圣体炼药之人",3);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(1000000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",5)
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
end
end

function XG:JJHFF2()
local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);

NpcMgr:AddNpc(npc,1100,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("麻衣人");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("神秘麻衣人","。。。。",3);

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(1500000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
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
fabao:AddLing(99999999999);
count = count + 1;
end
local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);

NpcMgr:AddNpc(npc,1010,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("麻衣人头头");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("神秘麻衣人","。。。。",3);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(2000000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
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
fabao:AddLing(99999999999);
count = count + 1;
end
local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);

NpcMgr:AddNpc(npc,1020,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("麻衣人");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("神秘麻衣人","。。。。",3);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(1500000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
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
fabao:AddLing(99999999999);
count = count + 1;
end
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,1410,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,5,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("叶凡");
npc.PropertyMgr:AddFeature("GodBody");
npc.LuaHelper:AddTitle("荒古圣体","荒古后第一个打破诅咒的圣体",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",2)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end;
local count = 0;
while(count < 4) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(0)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
end
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,1400,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,5,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("姬紫月");
npc.PropertyMgr:AddFeature("YuanofBody");
npc.LuaHelper:AddTitle("姬家小月亮","。。。。",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",4)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end;
local count = 0;
while(count < 4) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(0)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
end
end

function XG:JJHFF()
local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);

NpcMgr:AddNpc(npc,1210,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("麻衣人");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("神秘麻衣人","。。。。",3);

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(1200000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
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
fabao:AddLing(99999999999);
count = count + 1;
end
local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);

NpcMgr:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("麻衣人头头");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.LuaHelper:AddTitle("神秘麻衣人","。。。。",3);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(2000000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
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
fabao:AddLing(99999999999);
count = count + 1;
end
local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);

NpcMgr:AddNpc(npc,1110,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Normal);
npc:SetName("麻衣人");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("神秘麻衣人","。。。。",3);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(1200000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
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
fabao:AddLing(99999999999);
count = count + 1;
end
end


function XG:KQWDF()			
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姜家圣主");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("ZT_ALL");
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1000,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
npc.PropertyMgr.Practice.GodCount = 6
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(5500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1500)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1600)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1000)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("瑶光圣主");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("ZT_ALL");
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1020,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
npc.PropertyMgr.Practice.GodCount = 6
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(5500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
npc.FightBody.AttackTime = 10000;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end
local count = 0;
while(count < 6) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1500)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1500)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end;
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姬家圣主");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("ZT_ALL");
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1030,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
npc.PropertyMgr.Practice.GodCount = 6
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(5500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
npc.FightBody.AttackTime = 10000;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end
local count = 0;
while(count < 6) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3600)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,3500)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end;
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姚曦");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(3500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3600)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end;
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("瑶光圣子");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1020,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(3500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3600)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姬皓月");
npc.PropertyMgr:AddFeature("KingofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1060,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(3300000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3600)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
end
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

function XG:YXYG()			
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姚曦");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1030,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
npc.PropertyMgr.Practice.GodCount = 1
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(6000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3600)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1000)
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
end



function XG:KQWDF2()			
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姚曦");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,2600)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end;
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("瑶光圣子");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1020,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,2600)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姬皓月");
npc.PropertyMgr:AddFeature("KingofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1060,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2300000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,2600)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
end
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

function XG:DDLQ()			
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姚曦");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(4000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1400)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,700)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("瑶光圣子");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1020,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(4000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1400)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,700)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姬皓月");
npc.PropertyMgr:AddFeature("KingofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1060,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(4000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1400)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,700)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("瑶光圣子");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1020,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(4000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1400)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,700)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("金翅小鹏王");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1030,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(4000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1800)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,800)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("姜家圣体");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1160,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(4000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1400)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,700)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("太初圣子");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1060,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(3000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1400)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,700)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("太初圣女");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1060,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(4000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1400)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,700)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("阴阳圣子");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1065,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(3000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1400)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,700)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("阴阳圣女");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1020,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(3000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1400)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,700)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("大衍圣女");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1025,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(3000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1400)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,700)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("幻灭宫弟子");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1560,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,6,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(900000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
npc.FightBody.AttackTime = 50;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",4)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end;
local count = 0;
while(count < 4) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,500)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,700)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,200)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("阴阳教弟子");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1260,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,6,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(700000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
npc.FightBody.AttackTime = 50;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",4)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end;
local count = 0;
while(count < 4) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,500)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,700)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,200)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("太初圣地弟子");
npc.PropertyMgr:AddFeature("ZTofBody");

npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1460,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,6,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(700000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
npc.FightBody.AttackTime = 50;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",4)
local list = npc.Equip:FindFabao();
for k,v in pairs(list) do;
npc.Equip:UnEquipItem(v);
ThingMgr:RemoveThing(v);
end;
local count = 0;
while(count < 4) do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,500)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,700)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,200)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;

npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 50;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

function XG:DDLQ()			
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇头头");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,11,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(5555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,2200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1700)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1.2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1200)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇头头");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,11,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(5555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,2200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1700)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1.2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1200)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇头头");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,11,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(5555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);

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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,2200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1700)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1.2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1200)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 100000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇小弟");
npc.PropertyMgr:AddFeature("ZTofBody");
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);

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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1.5)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,2.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,800)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 1000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇小弟");
npc.PropertyMgr:AddFeature("ZTofBody");
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1.5)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,2.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,800)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 1000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇小弟");
npc.PropertyMgr:AddFeature("ZTofBody");
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1.5)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,2.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,800)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 1000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇小弟");
npc.PropertyMgr:AddFeature("ZTofBody");
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1.5)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,2.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,800)
npc:EquipItem(fabao);
fabao:AddLing(999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 1000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇小弟");
npc.PropertyMgr:AddFeature("ZTofBody");
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1.5)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,2.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,800)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 1000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇小弟");
npc.PropertyMgr:AddFeature("ZTofBody");
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1.5)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,800)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 1000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇小弟");
npc.PropertyMgr:AddFeature("ZTofBody");
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);

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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1.5)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,2.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,800)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 1000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("流寇小弟");
npc.PropertyMgr:AddFeature("ZTofBody");
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(2555555);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,1100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1.5)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,2.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,800)
npc:EquipItem(fabao);
fabao:AddLing(99999999999);
count = count + 1;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 20;
npc.FightBody.AttackTime = 1000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

function XG:YSYB1()
for i=2,8,3 do
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,1000 + 150*i,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Normal);

npc:AddTitle("贪婪修行者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(1500000);
for i=2,6,3 do
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,1000 + 150*i,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,11,CS.XiaWorld.g_emNpcRichLable.Normal);

npc:AddTitle("贪婪修行者",0,CS.XiaWorld.g_emNpcTitleType.Normal,3)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(3000000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end
end

function XG:YSTZ()
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc.LuaHelper:AddTitle("附近真仙散修","......",2);
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,900,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 1
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
npc.PropertyMgr.Practice:MakeGold(900000);
npc.PropertyMgr.Practice:RandomTree();

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

function XG:YSTZ1()
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc.LuaHelper:AddTitle("附近真仙散修","......",2);
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,900,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 1
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
npc.PropertyMgr.Practice:MakeGold(1500000);
npc.PropertyMgr.Practice:RandomTree();
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 10000;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",4)
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


function XG:YSJC()

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("金翅小鹏王");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("天鹏之躯","以龙象为食，以天鹏极速出名。",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,8,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(3000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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

function XG:YSJC1()

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("金翅小鹏王");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.LuaHelper:AddTitle("天鹏之躯","以龙象为食，以天鹏极速出名。",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1200,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,11,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice:MakeGold(4000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,2800)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,3)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,2100)
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

function XG:YSQD1()
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
NpcMgr:AddNpc(npc,300,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc:AddTitle("实力一般，但想抢东西",0,CS.XiaWorld.g_emNpcTitleType.Normal,3)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:AddFeature("ZTofBody");
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(150000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 50;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc:AddLing(9999999);
for i=3,6,2 do
local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
NpcMgr:AddNpc(npc,310 + 120*i,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
npc:AddTitle("实力一般，但是想抢东西",0,CS.XiaWorld.g_emNpcTitleType.Normal,3)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:AddFeature("ZTofBody");
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(150000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 50;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
npc:AddLing(9999999);
end
end

function XG:YSQD2()
for i=2,6,2 do
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");

NpcMgr:AddNpc(npc,1000 + 150*i,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,6,CS.XiaWorld.g_emNpcRichLable.Normal);

npc:AddTitle("小偷修行者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:AddFeature("ZTofBody");
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(900000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 10000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
for i=3,7,1 do
local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);

NpcMgr:AddNpc(npc,1000 + 150*i,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);

ThingMgr:EquptNpc(npc,6,CS.XiaWorld.g_emNpcRichLable.Normal);

npc:AddTitle("小偷修行者",0,CS.XiaWorld.g_emNpcTitleType.Normal,3)
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 4;
npc:AddLing(9999999);
npc.PropertyMgr.Practice:MakeGold(350000);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 10;
npc.FightBody.AttackTime = 50;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end
end


function XG:YSQD3()
local a = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
				a:SetPostion(Map:GetRandomWalkAbleKeyinLifeArea(),true);
				a.PropertyMgr:AddFeature("ZTofBody");
				a:Draw();
				a.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
				while(a.PropertyMgr.Practice.StageValue ~= a.PropertyMgr.Practice.CurStage.Value) do;
				a.PropertyMgr.Practice:AddPractice(999999999);
				a.PropertyMgr.Practice:BrokenNeck();
				end
				a.PropertyMgr.Practice:MakeGold(3000000);
				a.PropertyMgr.Practice:RandomTree();
				a.PropertyMgr:SetPropertyOverwrite('NpcFight_FabaoNum',6);
				a:AddLing(999999999);
				local list = a.Equip:FindFabao();
				for k,v in pairs(list) do;
				a.Equip:UnEquipItem(v);
				ThingMgr:RemoveThing(v);
				end
				local count = 0;
				while(count < 6) do
				local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12,10);
				fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
				fabao.Fabao:AddGodCount(0)
				a:EquipItem(fabao);
				fabao:AddLing(fabao.MaxLing);
				count = count + 1;
				npc.FightBody.AttackWait = 10;
				npc.FightBody.AttackTime = 10000;
				local a = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
				a:SetPostion(Map:GetRandomWalkAbleKeyinLifeArea(),true);
				a.PropertyMgr:AddFeature("ZTofBody");
				a:Draw();
				a.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
				while(a.PropertyMgr.Practice.StageValue ~= a.PropertyMgr.Practice.CurStage.Value) do;
				a.PropertyMgr.Practice:AddPractice(999999999);
				a.PropertyMgr.Practice:BrokenNeck();
				end
				a.PropertyMgr.Practice:MakeGold(3000000);
				a.PropertyMgr.Practice:RandomTree();
				a.PropertyMgr:SetPropertyOverwrite('NpcFight_FabaoNum',6);
				a:AddLing(999999999);
				local list = a.Equip:FindFabao();
				for k,v in pairs(list) do;
				a.Equip:UnEquipItem(v);
				ThingMgr:RemoveThing(v);
				end
				local count = 0;
				while(count < 6) do
				local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12,10);
				fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
				fabao.Fabao:AddGodCount(0)
				a:EquipItem(fabao);
				fabao:AddLing(fabao.MaxLing);
				count = count + 1;
				npc.FightBody.AttackWait = 10;
				npc.FightBody.AttackTime = 10000;
				local a = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
				a:SetPostion(Map:GetRandomWalkAbleKeyinLifeArea(),true);
				a.PropertyMgr:AddFeature("ZTofBody");
				a:Draw();
				a.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
				while(a.PropertyMgr.Practice.StageValue ~= a.PropertyMgr.Practice.CurStage.Value) do;
				a.PropertyMgr.Practice:AddPractice(999999999);
				a.PropertyMgr.Practice:BrokenNeck();
				end
				a.PropertyMgr.Practice:MakeGold(3000000);
				a.PropertyMgr.Practice:RandomTree();
				a.PropertyMgr:SetPropertyOverwrite('NpcFight_FabaoNum',6);
				a:AddLing(999999999);
				local list = a.Equip:FindFabao();
				for k,v in pairs(list) do;
				a.Equip:UnEquipItem(v);
				ThingMgr:RemoveThing(v);
				end
				local count = 0;
				while(count < 6) do
				local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12,10);
				fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
				fabao.Fabao:AddGodCount(0)
				a:EquipItem(fabao);
				fabao:AddLing(fabao.MaxLing);
				count = count + 1;
				a.FightBody.AttackWait = 10;
				a.FightBody.AttackTime = 10000;
				end
				end
				end
				end
				
function XG:YSGX1()
local a = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
				a:SetPostion(Map:GetRandomWalkAbleKeyinLifeArea(),true);
				a.PropertyMgr:AddFeature("ZTofBody");
				a:Draw();
				a.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
				while(a.PropertyMgr.Practice.StageValue ~= a.PropertyMgr.Practice.CurStage.Value) do;
				a.PropertyMgr.Practice:AddPractice(999999999);
				a.PropertyMgr.Practice:BrokenNeck();
			
				a.PropertyMgr.Practice:MakeGold(6000000);
				a.PropertyMgr.Practice:RandomTree();
				a.PropertyMgr:SetPropertyOverwrite('NpcFight_FabaoNum',6);
				a:AddLing(999999999);
				local list = a.Equip:FindFabao();
				for k,v in pairs(list) do;
				a.Equip:UnEquipItem(v);
				ThingMgr:RemoveThing(v);
				
				local count = 0;
				while(count < 6) do
				local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12,10);
				fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
				fabao.Fabao:AddGodCount(0)
				a:EquipItem(fabao);
				fabao:AddLing(fabao.MaxLing);
				count = count + 1;
				a.FightBody.AttackWait = 10;
				a.FightBody.AttackTime = 10000;
				end
				end	
				end
				end
				
function XG:YSGX2()
local a = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
				a:SetPostion(Map:GetRandomWalkAbleKeyinLifeArea(),true);
				a.PropertyMgr:AddFeature("ZTofBody");
				a:Draw();
				a.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
				while(a.PropertyMgr.Practice.StageValue ~= a.PropertyMgr.Practice.CurStage.Value) do;
				a.PropertyMgr.Practice:AddPractice(999999999);
				a.PropertyMgr.Practice:BrokenNeck();
				
				a.PropertyMgr.Practice:MakeGold(4000000);
				a.PropertyMgr.Practice:RandomTree();
				a.PropertyMgr:SetPropertyOverwrite('NpcFight_FabaoNum',6);
				a:AddLing(999999999);
				local list = a.Equip:FindFabao();
				for k,v in pairs(list) do;
				a.Equip:UnEquipItem(v);
				ThingMgr:RemoveThing(v);
				
				local count = 0;
				while(count < 6) do
				local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12,10);
				fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
				fabao.Fabao:AddGodCount(0)
				a:EquipItem(fabao);
				fabao:AddLing(fabao.MaxLing);
				count = count + 1;
				a.FightBody.AttackWait = 10;
				a.FightBody.AttackTime = 10000;
				end
				end
				end
				end
function XG:YYGX()			
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("阴阳教长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1000,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 3
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(5000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
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
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("阴阳教长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1020,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 3
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(5000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,900)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
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
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("阴阳教长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();

CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1010,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 3
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(5000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
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
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("阴阳教长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1030,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 3
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(5000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
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
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("阴阳教长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1040,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 10
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 3 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(4500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
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

function XG:LFZ()

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("老疯子");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("ZT_ALL");
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1000,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 10
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(12500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false)
local fabaoname = {"七日回魂丹","万古丸","行纵天下","万三峰域","天涯遗孤","天璇圣丹"}
for i=1,6,1 do
local item =CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao,0,12,100,"Item_Dan_ReBorn_4","Item_StarEssence",10)
npc.map:DropItem(item,npc.Key,true,true,false,true,5);
item:SetName(fabaoname[i]);
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,6200)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,3000)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.2)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,2000)
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

function XG:HZ()

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("荒主");
npc.PropertyMgr:AddFeature("ChaosfBody");

npc.PropertyMgr:AddModifier("ZT_ALL");

npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling");

npc.PropertyMgr:AddModifier("Modifier_SpNpc_Shield");

npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoAtk");

npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoSpeed");

npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoDisp");

npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoNum");

npc.PropertyMgr:AddModifier("Modifier_SpNpc_FightSkillCD");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.LuaHelper:AddTitle("大帝半成品","狠人大帝魔胎遗褪",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,11100,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 10

if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();

end
end
npc.PropertyMgr.Practice:MakeGold(50000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
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
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,9999)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,4000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,3500)
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

function XG:Lqnq()

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("天璇圣女");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("Modifier_SpNpc_Shield");
npc.PropertyMgr:AddModifier("ZT_ALL");
npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoAtk");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.LuaHelper:AddTitle("荒奴","。。。。",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,600,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 4
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
npc:AddLing(999999999);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false)
local fabaoname = {"七日回魂丹","万古丸","行纵天下","万三峰域","天涯遗孤","天璇圣丹"}
for i=1,6,1 do
local item =CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao,0,12,100,"Item_LifeStream","Item_StarEssence",10)
npc.map:DropItem(item,npc.Key,true,true,false,true,5);
item:SetName(fabaoname[i]);
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,4600)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,4000)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,2500)
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

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("天璇圣地长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.LuaHelper:AddTitle("荒奴","。。。。",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,500,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 1
while(npc.LuaHelper:GetGLevel() ~= 12)
do
npc.PropertyMgr.Practice:AddPractice(9999999)
npc.PropertyMgr.Practice:BrokenNeck();
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(8000000)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(8000000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);

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

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("天璇圣地长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.LuaHelper:AddTitle("荒奴","。。。。",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,500,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 1
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
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("天璇圣地长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.LuaHelper:AddTitle("荒奴","。。。。",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,500,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 1
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
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("天璇圣地长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.LuaHelper:AddTitle("荒奴","。。。。",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,500,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 1
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
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("天璇圣地长老");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.LuaHelper:AddTitle("荒奴","。。。。",4);
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,500,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
npc.PropertyMgr.Practice.GodCount = 1
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
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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

function XG:CLLD()			
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:SetName("赤龙老道");
npc.PropertyMgr:AddFeature("ZTofBody");
npc.PropertyMgr:AddModifier("ZT_ALL");
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1000,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do;
npc.PropertyMgr.Practice:AddPractice(999999999);
npc.PropertyMgr.Practice:BrokenNeck();
npc.PropertyMgr.Practice.GodCount = 6
if npc.LuaHelper:GetGLevel() == 12 then
while(npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value)
do
npc.PropertyMgr.Practice:AddPractice(999999999)
npc.PropertyMgr.Practice:BrokenNeck();
end
end
end
npc.PropertyMgr.Practice:MakeGold(9500000);
npc.PropertyMgr.Practice:RandomTree();
npc:AddLing(999999999);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 50;
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
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1],3) * 3;
fabao.Fabao:AddGodCount(6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,900)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.6)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1500)
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
end