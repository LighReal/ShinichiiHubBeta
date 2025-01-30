local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title="ShinichiHub",
    SubTitle="By Himawari", 
    TabWidth=160, 
    Theme="Dark",
    Acrylic=false,
    Size=UDim2.fromOffset(500, 320), 
    MinimizeKey=Enum.KeyCode.End
})
local Tabs = {
    Info=Window:AddTab({ Title="Thông Tin" }),
    Main=Window:AddTab({ Title="Cày" }),
    Sea=Window:AddTab({ Title="Sự Kiện" }),
    Item=Window:AddTab({ Title="Vật Phẩm" }),
    Setting=Window:AddTab({ Title="Cài Đặt" }),
    Status=Window:AddTab({ Title="Máy Chủ" }),
    Stats=Window:AddTab({ Title="Chỉ Số" }),
    Player=Window:AddTab({ Title="Người Chơi" }),
    Teleport=Window:AddTab({ Title="Dịch Chuyển" }),
    Visual=Window:AddTab({ Title="Giả" }),
    Fruit=Window:AddTab({ Title="Trái" }),
    Raid=Window:AddTab({ Title="Tập Kích" }),
    Race=Window:AddTab({ Title="Tộc" }),
    Shop=Window:AddTab({ Title="Cửa Hàng" }),
    Misc=Window:AddTab({ Title="Khác" }),
}
local Options = Fluent.Options
local id = game.PlaceId
if id==2753915549 then Sea1=true; elseif id==4442272183 then Sea2=true; elseif id==7449423635 then Sea3=true; else game:Shutdown() end;
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait()
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
Sea1=false
Sea2=false
Sea3=false
local placeId = game.PlaceId
if placeId==2753915549 then
Sea1=true
elseif placeId==4442272183 then
Sea2=true
elseif placeId==7449423635 then
Sea3=true
end
function CheckLevel()
local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
if Sea1 then
if Lv==1 or Lv<=9 or SelectMonster=="Bandit" then 
Ms="Bandit"
NameQuest="BanditQuest1"
QuestLv=1
NameMon="Bandit"
CFrameQ=CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
CFrameMon=CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
elseif Lv==10 or Lv<=14 or SelectMonster=="Monkey" then
Ms="Monkey"
NameQuest="JungleQuest"
QuestLv=1
NameMon="Monkey"
CFrameQ=CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameMon=CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
elseif Lv==15 or Lv<=29 or SelectMonster=="Gorilla" then
Ms="Gorilla"
NameQuest="JungleQuest"
QuestLv=2
NameMon="Gorilla"
CFrameQ=CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameMon=CFrame.new(-1142.6488037109, 40.462348937988,-515.39227294922)
elseif Lv==30 or Lv<=39 or SelectMonster=="Pirate" then
Ms="Pirate"
NameQuest="BuggyQuest1"
QuestLv=1
NameMon="Pirate"
CFrameQ=CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameMon=CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
elseif Lv==40 or Lv<=59 or SelectMonster=="Brute" then
Ms="Brute"
NameQuest="BuggyQuest1"
QuestLv=2
NameMon="Brute"
CFrameQ=CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameMon=CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
elseif Lv==60 or Lv<=74 or SelectMonster=="Desert Bandit" then
Ms="Desert Bandit"
NameQuest="DesertQuest"
QuestLv=1
NameMon="Desert Bandit"
CFrameQ=CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
CFrameMon=CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
elseif Lv==75 or Lv<=89 or SelectMonster=="Desert Officer" then
Ms="Desert Officer"
NameQuest="DesertQuest"
QuestLv=2
NameMon="Desert Officer"
CFrameQ=CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
CFrameMon=CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
elseif Lv==90 or Lv<=99 or SelectMonster=="Snow Bandit" then
Ms="Snow Bandit"
NameQuest="SnowQuest"
QuestLv=1
NameMon="Snow Bandit"
CFrameQ=CFrame.new(1386.8073730469, 87.272789001465,-1298.3576660156)
CFrameMon=CFrame.new(1356.3028564453, 105.76865386963,-1328.2418212891)
elseif Lv==100 or Lv<=119 or SelectMonster=="Snowman" then
Ms="Snowman"
NameQuest="SnowQuest"
QuestLv=2
NameMon="Snowman"
CFrameQ=CFrame.new(1386.8073730469, 87.272789001465,-1298.3576660156)
CFrameMon=CFrame.new(1218.7956542969, 138.01184082031,-1488.0262451172)
elseif Lv==120 or Lv<=149 or SelectMonster=="Chief Petty Officer" then
Ms="Chief Petty Officer"
NameQuest="MarineQuest2"
QuestLv=1
NameMon="Chief Petty Officer"
CFrameQ=CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
CFrameMon=CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
elseif Lv==150 or Lv<=174 or SelectMonster=="Sky Bandit" then
Ms="Sky Bandit"
NameQuest="SkyQuest"
QuestLv=1
NameMon="Sky Bandit"
CFrameQ=CFrame.new(-4842.1372070313, 717.69543457031,-2623.0483398438)
CFrameMon=CFrame.new(-4955.6411132813, 365.46365356445,-2908.1865234375)
elseif Lv==175 or Lv<=189 or SelectMonster=="Dark Master" then
Ms="Dark Master"
NameQuest="SkyQuest"
QuestLv=2
NameMon="Dark Master"
CFrameQ=CFrame.new(-4842.1372070313, 717.69543457031,-2623.0483398438)
CFrameMon=CFrame.new(-5148.1650390625, 439.04571533203,-2332.9611816406)
elseif Lv==190 or Lv<=209 or SelectMonster=="Prisoner" then
Ms="Prisoner"
NameQuest="PrisonerQuest"
QuestLv=1
NameMon="Prisoner"
CFrameQ=CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0,-0.999846935, 0, 0.0175017118)
CFrameMon=CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0,-0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
elseif Lv==210 or Lv<=249 or SelectMonster=="Dangerous Prisoner" then
Ms="Dangerous Prisoner"
NameQuest="PrisonerQuest"
QuestLv=2
NameMon="Dangerous Prisoner"
CFrameQ=CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0,-0.999846935, 0, 0.0175017118)
CFrameMon=CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0,-0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
elseif Lv==250 or Lv<=274 or SelectMonster=="Toga Warrior" then
Ms="Toga Warrior"
NameQuest="ColosseumQuest"
QuestLv=1
NameMon="Toga Warrior"
CFrameQ=CFrame.new(-1577.7890625, 7.4151420593262,-2984.4838867188)
CFrameMon=CFrame.new(-1872.5166015625, 49.080215454102,-2913.810546875)
elseif Lv==275 or Lv<=299 or SelectMonster=="Gladiator"  then
Ms="Gladiator"
NameQuest="ColosseumQuest"
QuestLv=2
NameMon="Gladiator"
CFrameQ=CFrame.new(-1577.7890625, 7.4151420593262,-2984.4838867188)
CFrameMon=CFrame.new(-1521.3740234375, 81.203170776367,-3066.3139648438)
elseif Lv==300 or Lv<=324 or SelectMonster=="Military Soldier" then
Ms="Military Soldier"
NameQuest="MagmaQuest"
QuestLv=1
NameMon="Military Soldier"
CFrameQ=CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
CFrameMon=CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
elseif Lv==325 or Lv<=374 or SelectMonster=="Military Spy" then
Ms="Military Spy"
NameQuest="MagmaQuest"
QuestLv=2
NameMon="Military Spy"
CFrameQ=CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
CFrameMon=CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0,-0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
elseif Lv==375 or Lv<=399 or SelectMonster=="Fishman Warrior" then 
Ms="Fishman Warrior"
NameQuest="FishmanQuest"
QuestLv=1
NameMon="Fishman Warrior"
CFrameQ=CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameMon=CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif Lv==400 or Lv<=449 or SelectMonster=="Fishman Commando" then 
Ms="Fishman Commando"
NameQuest="FishmanQuest"
QuestLv=2
NameMon="Fishman Commando"
CFrameQ=CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameMon=CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif Lv==10 or Lv<=474 or SelectMonster=="God's Guard" then 
Ms="God's Guard"
NameQuest="SkyExp1Quest"
QuestLv=1
NameMon="God's Guard"
CFrameQ=CFrame.new(-4721.8603515625, 845.30297851563,-1953.8489990234)
CFrameMon=CFrame.new(-4628.0498046875, 866.92877197266,-1931.2352294922)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248,-1667.55688))
end
elseif Lv==475 or Lv<=524 or SelectMonster=="Shanda" then 
Ms="Shanda"
NameQuest="SkyExp1Quest"
QuestLv=2
NameMon="Shanda"
CFrameQ=CFrame.new(-7863.1596679688, 5545.5190429688,-378.42266845703)
CFrameMon=CFrame.new(-7685.1474609375, 5601.0751953125,-441.38876342773)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625,-380.29119873047))
end
elseif Lv==525 or Lv<=549 or SelectMonster=="Royal Squad" then 
Ms="Royal Squad"
NameQuest="SkyExp2Quest"
QuestLv=1
NameMon="Royal Squad"
CFrameQ=CFrame.new(-7903.3828125, 5635.9897460938,-1410.923828125)
CFrameMon=CFrame.new(-7654.2514648438, 5637.1079101563,-1407.7550048828)
elseif Lv==550 or Lv<=624 or SelectMonster=="Royal Soldier" then 
Ms="Royal Soldier"
NameQuest="SkyExp2Quest"
QuestLv=2
NameMon="Royal Soldier"
CFrameQ=CFrame.new(-7903.3828125, 5635.9897460938,-1410.923828125)
CFrameMon=CFrame.new(-7760.4106445313, 5679.9077148438,-1884.8112792969)
elseif Lv==625 or Lv<=649 or SelectMonster=="Galley Pirate" then 
Ms="Galley Pirate"
NameQuest="FountainQuest"
QuestLv=1
NameMon="Galley Pirate"
CFrameQ=CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameMon=CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
elseif Lv>=650 or SelectMonster=="Galley Captain" then 
Ms="Galley Captain"
NameQuest="FountainQuest"
QuestLv=2
NameMon="Galley Captain"
CFrameQ=CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameMon=CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
end
end
if Sea2 then
if Lv==700 or Lv<=724 or SelectMonster=="Raider" then 
Ms="Raider"
NameQuest="Area1Quest"
QuestLv=1
NameMon="Raider"
CFrameQ=CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
CFrameMon=CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
elseif Lv==725 or Lv<=774 or SelectMonster=="Mercenary" then 
Ms="Mercenary"
NameQuest="Area1Quest"
QuestLv=2
NameMon="Mercenary"
CFrameQ=CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
CFrameMon=CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
elseif Lv==775 or Lv<=799 or SelectMonster=="Swan Pirate" then 
Ms="Swan Pirate"
NameQuest="Area2Quest"
QuestLv=1
NameMon="Swan Pirate"
CFrameQ=CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
CFrameMon=CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
elseif Lv==800 or Lv<=874 or SelectMonster=="Factory Staff" then
Ms="Factory Staff"
NameQuest="Area2Quest"
QuestLv=2
NameMon="Factory Staff"
CFrameQ=CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
CFrameMon=CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
elseif Lv==875 or Lv<=899 or SelectMonster=="Marine Lieutenan" then
Ms="Marine Lieutenant"
NameQuest="MarineQuest3"
QuestLv=1
NameMon="Marine Lieutenant"
CFrameQ=CFrame.new(-2440.9934082031, 73.04190826416,-3217.7082519531)
CFrameMon=CFrame.new(-2489.2622070313, 84.613594055176,-3151.8830566406)
elseif Lv==900 or Lv<=949 or SelectMonster=="Marine Captain" then 
Ms="Marine Captain"
NameQuest="MarineQuest3"
QuestLv=2
NameMon="Marine Captain"
CFrameQ=CFrame.new(-2440.9934082031, 73.04190826416,-3217.7082519531)
CFrameMon=CFrame.new(-2335.2026367188, 79.786659240723,-3245.8674316406)
elseif Lv==950 or Lv<=974 or SelectMonster=="Zombie" then
Ms="Zombie"
NameQuest="ZombieQuest"
QuestLv=1
NameMon="Zombie"
CFrameQ=CFrame.new(-5494.3413085938, 48.505931854248,-794.59094238281)
CFrameMon=CFrame.new(-5536.4970703125, 101.08577728271,-835.59075927734)
elseif Lv==975 or Lv<=999 or SelectMonster=="Vampire" then
Ms="Vampire"
NameQuest="ZombieQuest"
QuestLv=2
NameMon="Vampire"
CFrameQ=CFrame.new(-5494.3413085938, 48.505931854248,-794.59094238281)
CFrameMon=CFrame.new(-5806.1098632813, 16.722528457642,-1164.4384765625)
elseif Lv==1000 or Lv<=1049 or SelectMonster=="Snow Trooper" then 
Ms="Snow Trooper"
NameQuest="SnowMountainQuest"
QuestLv=1
NameMon="Snow Trooper"
CFrameQ=CFrame.new(607.05963134766, 401.44781494141,-5370.5546875)
CFrameMon=CFrame.new(535.21051025391, 432.74209594727,-5484.9165039063)
elseif Lv==1050 or Lv<=1099 or SelectMonster=="Winter Warrior" then 
Ms="Winter Warrior"
NameQuest="SnowMountainQuest"
QuestLv=2
NameMon="Winter Warrior"
CFrameQ=CFrame.new(607.05963134766, 401.44781494141,-5370.5546875)
CFrameMon=CFrame.new(1234.4449462891, 456.95419311523,-5174.130859375)
elseif Lv==1100 or Lv<=1124 or SelectMonster=="Lab Subordinate" then 
Ms="Lab Subordinate"
NameQuest="IceSideQuest"
QuestLv=1
NameMon="Lab Subordinate"
CFrameQ=CFrame.new(-6061.841796875, 15.926671981812,-4902.0385742188)
CFrameMon=CFrame.new(-5720.5576171875, 63.309471130371,-4784.6103515625)
elseif Lv==1125 or Lv<=1174 or SelectMonster=="Horned Warrior" then
Ms="Horned Warrior"
NameQuest="IceSideQuest"
QuestLv=2
NameMon="Horned Warrior"
CFrameQ=CFrame.new(-6061.841796875, 15.926671981812,-4902.0385742188)
CFrameMon=CFrame.new(-6292.751953125, 91.181983947754,-5502.6499023438)
elseif Lv==1175 or Lv<=1199 or SelectMonster=="Magma Ninja" then 
Ms="Magma Ninja"
NameQuest="FireSideQuest"
QuestLv=1
NameMon="Magma Ninja"
CFrameQ=CFrame.new(-5429.0473632813, 15.977565765381,-5297.9614257813)
CFrameMon=CFrame.new(-5461.8388671875, 130.36347961426,-5836.4702148438)
elseif Lv==1200 or Lv<=1249 or SelectMonster=="Lava Pirate" then 
Ms="Lava Pirate"
NameQuest="FireSideQuest"
QuestLv=2
NameMon="Lava Pirate"
CFrameQ=CFrame.new(-5429.0473632813, 15.977565765381,-5297.9614257813)
CFrameMon=CFrame.new(-5251.1889648438, 55.164535522461,-4774.4096679688)
elseif Lv==1250 or Lv<=1274 or SelectMonster=="Ship Deckhand" then
Ms="Ship Deckhand"
NameQuest="ShipQuest1"
QuestLv=1
NameMon="Ship Deckhand"
CFrameQ=CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
CFrameMon=CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv==1275 or Lv<=1299 or SelectMonster=="Ship Engineer"  then 
Ms="Ship Engineer"
NameQuest="ShipQuest1"
QuestLv=2
NameMon="Ship Engineer"
CFrameQ=CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
CFrameMon=CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv==1300 or Lv<=1324 or SelectMonster=="Ship Steward" then 
Ms="Ship Steward"
NameQuest="ShipQuest2"
QuestLv=1
NameMon="Ship Steward"
CFrameQ=CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
CFrameMon=CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv==1325 or Lv<=1349 or SelectMonster=="Ship Officer" then 
Ms="Ship Officer"
NameQuest="ShipQuest2"
QuestLv=2
NameMon="Ship Officer"
CFrameQ=CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
CFrameMon=CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv==1350 or Lv<=1374 or SelectMonster=="Arctic Warrior" then 
Ms="Arctic Warrior"
NameQuest="FrostQuest"
QuestLv=1
NameMon="Arctic Warrior"
CFrameQ=CFrame.new(5668.1372070313, 28.202531814575,-6484.6005859375)
CFrameMon=CFrame.new(5935.4541015625, 77.26016998291,-6472.7568359375)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715,-132.83953857422))
end
elseif Lv==1375 or Lv<=1424 or SelectMonster=="Snow Lurker" then
Ms="Snow Lurker"
NameQuest="FrostQuest"
QuestLv=2
NameMon="Snow Lurker"
CFrameQ=CFrame.new(5668.1372070313, 28.202531814575,-6484.6005859375)
CFrameMon=CFrame.new(5628.482421875, 57.574996948242,-6618.3481445313)
elseif Lv==1425 or Lv<=1449 or SelectMonster=="Sea Soldier" then
Ms="Sea Soldier"
NameQuest="ForgottenQuest"
QuestLv=1
NameMon="Sea Soldier"
CFrameQ=CFrame.new(-3054.5827636719, 236.87213134766,-10147.790039063)
CFrameMon=CFrame.new(-3185.0153808594, 58.789089202881,-9663.6064453125)
elseif Lv>=1450 or SelectMonster=="Water Fighter" then 
Ms="Water Fighter"
NameQuest="ForgottenQuest"
QuestLv=2
NameMon="Water Fighter"
CFrameQ=CFrame.new(-3054.5827636719, 236.87213134766,-10147.790039063)
CFrameMon=CFrame.new(-3262.9301757813, 298.69036865234,-10552.529296875)
end
end
if Sea3 then
if Lv==1500 or Lv<=1524 or SelectMonster=="Pirate Millionaire" then 
Ms="Pirate Millionaire"
NameQuest="PiratePortQuest"
QuestLv=1
NameMon="Pirate Millionaire"
CFrameQ=CFrame.new(-450.1046447753906, 107.68145751953125, 5950.72607421875)
CFrameMon=CFrame.new(-193.99227905273438, 56.12502670288086, 5755.7880859375)
elseif Lv==1525 or Lv<=1574 or SelectMonster=="Pistol Billionaire" then 
Ms="Pistol Billionaire"
NameQuest="PiratePortQuest"
QuestLv=2
NameMon="Pistol Billionaire"
CFrameQ=CFrame.new(-450.1046447753906, 107.68145751953125, 5950.72607421875)
CFrameMon=CFrame.new(-188.14462280273438, 84.49613189697266, 6337.0419921875)
elseif Lv==1575 or Lv<=1599 or SelectMonster=="Dragon Crew Warrior" then 
Ms="Dragon Crew Warrior"
NameQuest="DragonCrewQuest"
QuestLv=1
NameMon="Dragon Crew Warrior"
CFrameQ=CFrame.new(6735.11083984375, 126.99046325683594,-711.0979614257812)
CFrameMon=CFrame.new(6615.2333984375, 50.847679138183594,-978.93408203125)
elseif Lv==1600 or Lv<=1624 or SelectMonster=="Dragon Crew Archer" then 
Ms="Dragon Crew Archer"
NameQuest="DragonCrewQuest"
QuestLv=2
NameMon="Dragon Crew Archer"
CFrameQ=CFrame.new(6735.11083984375, 126.99046325683594,-711.0979614257812)
CFrameMon=CFrame.new(6818.58935546875, 483.718994140625, 512.726806640625)
elseif Lv==1625 or Lv<=1649 or SelectMonster=="Hydra Enforcer" then 
Ms="Hydra Enforcer"
NameQuest="VenomCrewQuest"
QuestLv=1
NameMon="Hydra Enforcer"
CFrameQ=CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
CFrameMon=CFrame.new(4547.115234375, 1001.60205078125, 334.1954650878906)
elseif Lv==1650 or Lv<=1699 or SelectMonster=="Venomous Assailant" then 
Ms="Venomous Assailant"
NameQuest="VenomCrewQuest"
QuestLv=2
NameMon="Venomous Assailant"
CFrameQ=CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
CFrameMon=CFrame.new(4637.88525390625, 1077.85595703125, 882.4183959960938)
elseif Lv==1700 or Lv<=1724 or SelectMonster=="Marine Commodore" then
Ms="Marine Commodore"
NameQuest="MarineTreeIsland"
QuestLv=1
NameMon="Marine Commodore"
CFrameQ=CFrame.new(2179.98828125, 28.731239318848,-6740.0551757813)
CFrameMon=CFrame.new(2198.0063476563, 128.71075439453,-7109.5043945313)
elseif Lv==1725 or Lv<=1774 or SelectMonster=="Marine Rear Admiral" then
Ms="Marine Rear Admiral"
NameQuest="MarineTreeIsland"
QuestLv=2
NameMon="Marine Rear Admiral"
CFrameQ=CFrame.new(2179.98828125, 28.731239318848,-6740.0551757813)
CFrameMon=CFrame.new(3294.3142089844, 385.41125488281,-7048.6342773438)
elseif Lv==1775 or Lv<=1799 or SelectMonster=="Fishman Raider" then 
Ms="Fishman Raider"
NameQuest="DeepForestIsland3"
QuestLv=1
NameMon="Fishman Raider"
CFrameQ=CFrame.new(-10582.759765625, 331.78845214844,-8757.666015625)
CFrameMon=CFrame.new(-10553.268554688, 521.38439941406,-8176.9458007813)
elseif Lv==1800 or Lv<=1824 or SelectMonster=="Fishman Captain" then
Ms="Fishman Captain"
NameQuest="DeepForestIsland3"
QuestLv=2
NameMon="Fishman Captain"
CFrameQ=CFrame.new(-10583.099609375, 331.78845214844,-8759.4638671875)
CFrameMon=CFrame.new(-10789.401367188, 427.18637084961,-9131.4423828125)
elseif Lv==1825 or Lv<=1849 or SelectMonster=="Forest Pirate" then 
Ms="Forest Pirate"
NameQuest="DeepForestIsland"
QuestLv=1
NameMon="Forest Pirate"
CFrameQ=CFrame.new(-13232.662109375, 332.40396118164,-7626.4819335938)
CFrameMon=CFrame.new(-13489.397460938, 400.30349731445,-7770.251953125)
elseif Lv==1850 or Lv<=1899 or SelectMonster=="Mythological Pirate" then 
Ms="Mythological Pirate"
NameQuest="DeepForestIsland"
QuestLv=2
NameMon="Mythological Pirate"
CFrameQ=CFrame.new(-13232.662109375, 332.40396118164,-7626.4819335938)
CFrameMon=CFrame.new(-13508.616210938, 582.46228027344,-6985.3037109375)
elseif Lv==1900 or Lv<=1924 or SelectMonster=="Jungle Pirate" then 
Ms="Jungle Pirate"
NameQuest="DeepForestIsland2"
QuestLv=1
NameMon="Jungle Pirate"
CFrameQ=CFrame.new(-12682.096679688, 390.88653564453,-9902.1240234375)
CFrameMon=CFrame.new(-12267.103515625, 459.75262451172,-10277.200195313)
elseif Lv==1925 or Lv<=1974 or SelectMonster=="Musketeer Pirate" then 
Ms="Musketeer Pirate"
NameQuest="DeepForestIsland2"
QuestLv=2
NameMon="Musketeer Pirate"
CFrameQ=CFrame.new(-12682.096679688, 390.88653564453,-9902.1240234375)
CFrameMon=CFrame.new(-13291.5078125, 520.47338867188,-9904.638671875)
elseif Lv==1975 or Lv<=1999 or SelectMonster=="Reborn Skeleton" then
Ms="Reborn Skeleton"
NameQuest="HauntedQuest1"
QuestLv=1
NameMon="Reborn Skeleton"
CFrameQ=CFrame.new(-9480.80762, 142.130661, 5566.37305,-0.00655503059, 4.52954225e-08,-0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542,-2.01955679e-08,-0.00655503059)
CFrameMon=CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597,-1.3950732e-05,-0.208259016,-1.08073925e-06, 1,-7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
elseif Lv==2000 or Lv<=2024 or SelectMonster=="Living Zombie" then
Ms="Living Zombie"
NameQuest="HauntedQuest1"
QuestLv=2
NameMon="Living Zombie"
CFrameQ=CFrame.new(-9480.80762, 142.130661, 5566.37305,-0.00655503059, 4.52954225e-08,-0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542,-2.01955679e-08,-0.00655503059)
CFrameMon=CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364,-2.58006327e-08, 1,-6.06848474e-08,-0.0324240364, 5.98163865e-08, 0.999474227)
elseif Lv==2025 or Lv<=2049 or SelectMonster=="Demonic Soul" then
Ms="Demonic Soul"
NameQuest="HauntedQuest2"
QuestLv=1
NameMon="Demonic Soul"
CFrameQ=CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
CFrameMon=CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
elseif Lv==2050 or Lv<=2074 or SelectMonster=="Posessed Mummy" then
Ms="Posessed Mummy"
NameQuest="HauntedQuest2"
QuestLv=2
NameMon="Posessed Mummy"
CFrameQ=CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
CFrameMon=CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
elseif Lv==2075 or Lv<=2099 or SelectMonster=="Peanut Scout" then
Ms="Peanut Scout"
NameQuest="NutsIslandQuest"
QuestLv=1
NameMon="Peanut Scout"
CFrameQ=CFrame.new(-2105.53198, 37.2495995,-10195.5088,-0.766061664, 0,-0.642767608, 0, 1, 0, 0.642767608, 0,-0.766061664)
CFrameMon=CFrame.new(-2150.587890625, 122.49767303467,-10358.994140625)
elseif Lv==2100 or Lv<=2124 or SelectMonster=="Peanut President" then
Ms="Peanut President"
NameQuest="NutsIslandQuest"
QuestLv=2
NameMon="Peanut President"
CFrameQ=CFrame.new(-2105.53198, 37.2495995,-10195.5088,-0.766061664, 0,-0.642767608, 0, 1, 0, 0.642767608, 0,-0.766061664)
CFrameMon=CFrame.new(-2150.587890625, 122.49767303467,-10358.994140625)
elseif Lv==2125 or Lv<=2149 or SelectMonster=="Ice Cream Chef" then
Ms="Ice Cream Chef"
NameQuest="IceCreamIslandQuest"
QuestLv=1
NameMon="Ice Cream Chef"
CFrameQ=CFrame.new(-819.376709, 64.9259796,-10967.2832,-0.766061664, 0, 0.642767608, 0, 1, 0,-0.642767608, 0,-0.766061664)
CFrameMon=CFrame.new(-789.941528, 209.382889,-11009.9805,-0.0703101531,-0,-0.997525156,-0, 1.00000012,-0, 0.997525275, 0,-0.0703101456)
elseif Lv==2150 or Lv<=2199 or SelectMonster=="Ice Cream Commander" then
Ms="Ice Cream Commander"
NameQuest="IceCreamIslandQuest"
QuestLv=2
NameMon="Ice Cream Commander"
CFrameQ=CFrame.new(-819.376709, 64.9259796,-10967.2832,-0.766061664, 0, 0.642767608, 0, 1, 0,-0.642767608, 0,-0.766061664)
CFrameMon=CFrame.new(-789.941528, 209.382889,-11009.9805,-0.0703101531,-0,-0.997525156,-0, 1.00000012,-0, 0.997525275, 0,-0.0703101456)
elseif Lv==2200 or Lv<=2224 or SelectMonster=="Cookie Crafter" then
Ms="Cookie Crafter"
NameQuest="CakeQuest1"
QuestLv=1
NameMon="Cookie Crafter"
CFrameQ=CFrame.new(-2022.29858, 36.9275894,-12030.9766,-0.961273909, 0,-0.275594592, 0, 1, 0, 0.275594592, 0,-0.961273909)
CFrameMon=CFrame.new(-2321.71216, 36.699482,-12216.7871,-0.780074954, 0, 0.625686109, 0, 1, 0,-0.625686109, 0,-0.780074954)
elseif Lv==2225 or Lv<=2249 or SelectMonster=="Cake Guard" then
Ms="Cake Guard"
NameQuest="CakeQuest1"
QuestLv=2
NameMon="Cake Guard"
CFrameQ=CFrame.new(-2022.29858, 36.9275894,-12030.9766,-0.961273909, 0,-0.275594592, 0, 1, 0, 0.275594592, 0,-0.961273909)
CFrameMon=CFrame.new(-1418.11011, 36.6718941,-12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0,-0.997700036, 0, 0.0677844882)
elseif Lv==2250 or Lv<=2274 or SelectMonster=="Baking Staff" then
Ms="Baking Staff"
NameQuest="CakeQuest2"
QuestLv=1
NameMon="Baking Staff"
CFrameQ=CFrame.new(-1928.31763, 37.7296638,-12840.626, 0.951068401,-0,-0.308980465, 0, 1,-0, 0.308980465, 0, 0.951068401)
CFrameMon=CFrame.new(-1980.43848, 36.6716766,-12983.8418,-0.254443765, 0,-0.967087567, 0, 1, 0, 0.967087567, 0,-0.254443765)
elseif Lv==2275 or Lv<=2299 or SelectMonster=="Head Baker" then
Ms="Head Baker"
NameQuest="CakeQuest2"
QuestLv=2
NameMon="Head Baker"
CFrameQ=CFrame.new(-1928.31763, 37.7296638,-12840.626, 0.951068401,-0,-0.308980465, 0, 1,-0, 0.308980465, 0, 0.951068401)
CFrameMon=CFrame.new(-2251.5791, 52.2714615,-13033.3965,-0.991971016, 0,-0.126466095, 0, 1, 0, 0.126466095, 0,-0.991971016)
elseif Lv==2300 or Lv<=2324 or SelectMonster=="Cocoa Warrior" then
Ms="Cocoa Warrior"
NameQuest="ChocQuest1"
QuestLv=1
NameMon="Cocoa Warrior"
CFrameQ=CFrame.new(231.75, 23.9003029,-12200.292,-1, 0, 0, 0, 1, 0, 0, 0,-1)
CFrameMon=CFrame.new(167.978516, 26.2254658,-12238.874,-0.939700961, 0, 0.341998369, 0, 1, 0,-0.341998369, 0,-0.939700961)
elseif Lv==2325 or Lv<=2349 or SelectMonster=="Chocolate Bar Battler" then
Ms="Chocolate Bar Battler"
NameQuest="ChocQuest1"
QuestLv=2
NameMon="Chocolate Bar Battler"
CFrameQ=CFrame.new(231.75, 23.9003029,-12200.292,-1, 0, 0, 0, 1, 0, 0, 0,-1)
CFrameMon=CFrame.new(701.312073, 25.5824986,-12708.2148,-0.342042685, 0,-0.939684391, 0, 1, 0, 0.939684391, 0,-0.342042685)
elseif Lv==2350 or Lv<=2374 or SelectMonster=="Sweet Thief" then
Ms="Sweet Thief"
NameQuest="ChocQuest2"
QuestLv=1
NameMon="Sweet Thief"
CFrameQ=CFrame.new(151.198242, 23.8907146,-12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0,-0.906319618, 0, 0.422592998)
CFrameMon=CFrame.new(-140.258301, 25.5824986,-12652.3115, 0.173624337,-0,-0.984811902, 0, 1,-0, 0.984811902, 0, 0.173624337)
elseif Lv==2375 or Lv<=2400 or SelectMonster=="Candy Rebel" then
Ms="Candy Rebel"
NameQuest="ChocQuest2"
QuestLv=2
NameMon="Candy Rebel"
CFrameQ=CFrame.new(151.198242, 23.8907146,-12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0,-0.906319618, 0, 0.422592998)
CFrameMon=CFrame.new(47.9231453, 25.5824986,-13029.2402,-0.819156051, 0,-0.573571265, 0, 1, 0, 0.573571265, 0,-0.819156051)
elseif Lv==2400 or Lv<=2424 or SelectMonster=="Candy Pirate" then
Ms="Candy Pirate"
NameQuest="CandyQuest1"
QuestLv=1
NameMon="Candy Pirate"
CFrameQ=CFrame.new(-1149.328, 13.5759039,-14445.6143,-0.156446099, 0,-0.987686574, 0, 1, 0, 0.987686574, 0,-0.156446099)
CFrameMon=CFrame.new(-1437.56348, 17.1481285,-14385.6934, 0.173624337,-0,-0.984811902, 0, 1,-0, 0.984811902, 0, 0.173624337)
elseif Lv==2425 or Lv<=2449 or SelectMonster=="Snow Demon" then
Ms="Snow Demon"
NameQuest="CandyQuest1"
QuestLv=2
NameMon="Snow Demon"
CFrameQ=CFrame.new(-1149.328, 13.5759039,-14445.6143,-0.156446099, 0,-0.987686574, 0, 1, 0, 0.987686574, 0,-0.156446099)
CFrameMon=CFrame.new(-916.222656, 17.1481285,-14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0,-0.500031412, 0, 0.866007268)
elseif Lv==2450 or Lv<=2474 or SelectMonster=="Isle Outlaw" then
Ms="Isle Outlaw"
NameQuest="TikiQuest1"
QuestLv=1
NameMon="Isle Outlaw"
CFrameQ=CFrame.new(-16549.890625, 55.68635559082031,-179.91360473632812)
CFrameMon=CFrame.new(-16162.8193359375, 11.6863374710083,-96.45481872558594)
elseif Lv==2475 or Lv<=2499  or SelectMonster=="Island Boy" then
Ms="Island Boy"
NameQuest="TikiQuest1"
QuestLv=2
NameMon="Island Boy"
CFrameQ=CFrame.new(-16549.890625, 55.68635559082031,-179.91360473632812)
CFrameMon=CFrame.new(-16357.3125, 20.632822036743164, 1005.64892578125)
elseif Lv==2500 or Lv<=2524 or SelectMonster=="Sun-kissed Warrior" then
Ms="Sun-kissed Warrior"
NameQuest="TikiQuest2"
QuestLv=1
NameMon="Sun-kissed Warrior"
CFrameQ=CFrame.new(-16541.021484375, 54.77081298828125, 1051.461181640625)
CFrameMon=CFrame.new(-16357.3125, 20.632822036743164, 1005.64892578125)
elseif Lv==2525 or Lv<=2549 or SelectMonster=="Isle Champion" then
Ms="Isle Champion"
NameQuest="TikiQuest2"
QuestLv=2
NameMon="Isle Champion"
CFrameQ=CFrame.new(-16541.021484375, 54.77081298828125, 1051.461181640625)
CFrameMon=CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
elseif Lv==2550 or Lv<=2574 or SelectMonster=="Serpent Hunter" then
Ms="Serpent Hunter"
NameQuest="TikiQuest3"
QuestLv=1
NameMon="Serpent Hunter"
CFrameQ=CFrame.new(-16665.19140625, 104.59640502929688, 1579.6943359375)
CFrameMon=CFrame.new(-16621.4140625, 121.40631103515625, 1290.6881103515625)
elseif Lv==2575 or Lv<=2599 or SelectMonster=="Skull Slayer" or Lv==2600 then
Ms="Skull Slayer"
NameQuest="TikiQuest3"
QuestLv=2
NameMon="Skull Slayer"
CFrameQ=CFrame.new(-16665.19140625, 104.59640502929688, 1579.6943359375)
CFrameMon=CFrame.new(-16811.5703125, 84.625244140625, 1542.235107421875)
end
end
end
if Sea1 then
tableMon={
  "Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"
} elseif Sea2 then
tableMon={
  "Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"
} elseif Sea3 then
tableMon={
  "Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Hydra Enforcer","Venomous Assailant","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Sun-kissed Warrior","Isle Champion","Serpent Hunter","Skull Slayer"
}
end
if Sea1 then
AreaList={
  'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'
} elseif Sea2 then
AreaList={
  'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
} elseif Sea3 then
AreaList={
  'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'
}
end
function CheckBossQuest()
if Sea1 then
if SelectBoss=="The Gorilla King" then
BossMon="The Gorilla King"
NameBoss='The Gorrila King'
NameQuestBoss="JungleQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$2,000\n7,000 Exp."
CFrameQBoss=CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameBoss=CFrame.new(-1088.75977, 8.13463783,-488.559906,-0.707134247, 0, 0.707079291, 0, 1, 0,-0.707079291, 0,-0.707134247)
elseif SelectBoss=="Bobby" then
BossMon="Bobby"
NameBoss='Bobby'
NameQuestBoss="BuggyQuest1"
QuestLvBoss=3
RewardBoss="Reward:\n$8,000\n35,000 Exp."
CFrameQBoss=CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameBoss=CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
elseif SelectBoss=="The Saw" then
BossMon="The Saw"
NameBoss='The Saw'
CFrameBoss=CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
elseif SelectBoss=="Yeti" then
BossMon="Yeti"
NameBoss='Yeti'
NameQuestBoss="SnowQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$10,000\n180,000 Exp."
CFrameQBoss=CFrame.new(1386.8073730469, 87.272789001465,-1298.3576660156)
CFrameBoss=CFrame.new(1218.7956542969, 138.01184082031,-1488.0262451172)
elseif SelectBoss=="Mob Leader" then
BossMon="Mob Leader"
NameBoss='Mob Leader'
CFrameBoss=CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
elseif SelectBoss=="Vice Admiral" then
BossMon="Vice Admiral"
NameBoss='Vice Admiral'
NameQuestBoss="MarineQuest2"
QuestLvBoss=2
RewardBoss="Reward:\n$10,000\n180,000 Exp."
CFrameQBoss=CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
CFrameBoss=CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
elseif SelectBoss=="Saber Expert" then
NameBoss='Saber Expert'
BossMon="Saber Expert"
CFrameBoss=CFrame.new(-1458.89502, 29.8870335,-50.633564)
elseif SelectBoss=="Warden" then
BossMon="Warden"
NameBoss='Warden'
NameQuestBoss="ImpelQuest"
QuestLvBoss=1
RewardBoss="Reward:\n$6,000\n850,000 Exp."
CFrameBoss=CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961,-4.49946401e-06, 0.975376427,-1.95412576e-05, 1, 9.03162072e-06,-0.975376427,-2.10519756e-05, 0.220546961)
CFrameQBoss=CFrame.new(5191.86133, 2.84020686, 686.438721,-0.731384635, 0, 0.681965172, 0, 1, 0,-0.681965172, 0,-0.731384635)
elseif SelectBoss=="Chief Warden" then
BossMon="Chief Warden"
NameBoss='Chief Warden'
NameQuestBoss="ImpelQuest"
QuestLvBoss=2
RewardBoss="Reward:\n$10,000\n1,000,000 Exp."
CFrameBoss=CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343,-0.00062915677, 0.939684749, 0.00191645394, 0.999998152,-2.80422337e-05,-0.939682961, 0.00181045406, 0.342041939)
CFrameQBoss=CFrame.new(5191.86133, 2.84020686, 686.438721,-0.731384635, 0, 0.681965172, 0, 1, 0,-0.681965172, 0,-0.731384635)
elseif SelectBoss=="Swan" then
BossMon="Swan"
NameBoss='Swan'
NameQuestBoss="ImpelQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$15,000\n1,600,000 Exp."
CFrameBoss=CFrame.new(5325.09619, 7.03906584, 719.570679,-0.309060812, 0, 0.951042235, 0, 1, 0,-0.951042235, 0,-0.309060812)
CFrameQBoss=CFrame.new(5191.86133, 2.84020686, 686.438721,-0.731384635, 0, 0.681965172, 0, 1, 0,-0.681965172, 0,-0.731384635)
elseif SelectBoss=="Magma Admiral" then
BossMon="Magma Admiral"
NameBoss='Magma Admiral'
NameQuestBoss="MagmaQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$15,000\n2,800,000 Exp."
CFrameQBoss=CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
CFrameBoss=CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
elseif SelectBoss=="Fishman Lord" then
BossMon="Fishman Lord"
NameBoss='Fishman Lord'
NameQuestBoss="FishmanQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$15,000\n4,000,000 Exp."
CFrameQBoss=CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameBoss=CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
elseif SelectBoss=="Wysper" then
BossMon="Wysper"
NameBoss='Wysper'
NameQuestBoss="SkyExp1Quest"
QuestLvBoss=3
RewardBoss="Reward:\n$15,000\n4,800,000 Exp."
CFrameQBoss=CFrame.new(-7861.947265625, 5545.517578125,-379.85974121094)
CFrameBoss=CFrame.new(-7866.1333007813, 5576.4311523438,-546.74816894531)
elseif SelectBoss=="Thunder God" then
BossMon="Thunder God"
NameBoss='Thunder God'
NameQuestBoss="SkyExp2Quest"
QuestLvBoss=3
RewardBoss="Reward:\n$20,000\n5,800,000 Exp."
CFrameQBoss=CFrame.new(-7903.3828125, 5635.9897460938,-1410.923828125)
CFrameBoss=CFrame.new(-7994.984375, 5761.025390625,-2088.6479492188)
elseif SelectBoss=="Cyborg" then
BossMon="Cyborg"
NameBoss='Cyborg'
NameQuestBoss="FountainQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$20,000\n7,500,000 Exp."
CFrameQBoss=CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameBoss=CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
elseif SelectBoss=="Ice Admiral" then
BossMon="Ice Admiral"
NameBoss='Ice Admiral'
CFrameBoss=CFrame.new(1266.08948, 26.1757946,-1399.57678,-0.573599219, 0,-0.81913656, 0, 1, 0, 0.81913656, 0,-0.573599219)
elseif SelectBoss=="Greybeard" then
BossMon="Greybeard"
NameBoss='Greybeard'
CFrameBoss=CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
end
end
if Sea2 then
if SelectBoss=="Diamond" then
BossMon="Diamond"
NameBoss='Diamond'
NameQuestBoss="Area1Quest"
QuestLvBoss=3
RewardBoss="Reward:\n$25,000\n9,000,000 Exp."
CFrameQBoss=CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
CFrameBoss=CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
elseif SelectBoss=="Jeremy" then
BossMon="Jeremy"
NameBoss='Jeremy'
NameQuestBoss="Area2Quest"
QuestLvBoss=3
RewardBoss="Reward:\n$25,000\n11,500,000 Exp."
CFrameQBoss=CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
CFrameBoss=CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
elseif SelectBoss=="Fajita" then
BossMon="Fajita"
NameBoss='Fajita'
NameQuestBoss="MarineQuest3"
QuestLvBoss=3
RewardBoss="Reward:\n$25,000\n15,000,000 Exp."
CFrameQBoss=CFrame.new(-2441.986328125, 73.359344482422,-3217.5324707031)
CFrameBoss=CFrame.new(-2172.7399902344, 103.32216644287,-4015.025390625)
elseif SelectBoss=="Don Swan" then
BossMon="Don Swan"
NameBoss='Don Swan'
CFrameBoss=CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
elseif SelectBoss=="Smoke Admiral" then
BossMon="Smoke Admiral"
NameBoss='Smoke Admiral'
NameQuestBoss="IceSideQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$20,000\n25,000,000 Exp."
CFrameQBoss=CFrame.new(-5429.0473632813, 15.977565765381,-5297.9614257813)
CFrameBoss=CFrame.new(-5275.1987304688, 20.757257461548,-5260.6669921875)
elseif SelectBoss=="Awakened Ice Admiral" then
BossMon="Awakened Ice Admiral"
NameBoss='Awakened Ice Admiral'
NameQuestBoss="FrostQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$20,000\n36,000,000 Exp."
CFrameQBoss=CFrame.new(5668.9780273438, 28.519989013672,-6483.3520507813)
CFrameBoss=CFrame.new(6403.5439453125, 340.29766845703,-6894.5595703125)
elseif SelectBoss=="Tide Keeper" then
BossMon="Tide Keeper"
NameBoss='Tide Keeper'
NameQuestBoss="ForgottenQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$12,500\n38,000,000 Exp."
CFrameQBoss=CFrame.new(-3053.9814453125, 237.18954467773,-10145.0390625)
CFrameBoss=CFrame.new(-3795.6423339844, 105.88877105713,-11421.307617188)
elseif SelectBoss=="Darkbeard" then
BossMon="Darkbeard"
NameBoss='Darkbeard'
CFrameMon=CFrame.new(3677.08203125, 62.751937866211,-3144.8332519531)
elseif SelectBoss=="Cursed Captain" then
BossMon="Cursed Captain"
NameBoss='Cursed Captain'
CFrameBoss=CFrame.new(916.928589, 181.092773, 33422)
elseif SelectBoss=="Order" then
BossMon="Order"
NameBoss='Order'
CFrameBoss=CFrame.new(-6217.2021484375, 28.047645568848,-5053.1357421875)
end
end
if Sea3 then
if SelectBoss=="Stone" then
BossMon="Stone"
NameBoss='Stone'
NameQuestBoss="PiratePortQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$25,000\n40,000,000 Exp."
CFrameQBoss=CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
CFrameBoss=CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
elseif SelectBoss=="Hydra Leader" then
BossMon="Hydra Leader"
NameBoss='Hydra Leader'
NameQuestBoss="VenomCrewQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$30,000\n52,000,000 Exp."
CFrameQBoss=CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
CFrameBoss=CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
elseif SelectBoss=="Kilo Admiral" then
BossMon="Kilo Admiral"
NameBoss='Kilo Admiral'
NameQuestBoss="MarineTreeIsland"
QuestLvBoss=3
RewardBoss="Reward:\n$35,000\n56,000,000 Exp."
CFrameQBoss=CFrame.new(2179.3010253906, 28.731239318848,-6739.9741210938)
CFrameBoss=CFrame.new(2764.2233886719, 432.46154785156,-7144.4580078125)
elseif SelectBoss=="Captain Elephant" then
BossMon="Captain Elephant"
NameBoss='Captain Elephant'
NameQuestBoss="DeepForestIsland"
QuestLvBoss=3
RewardBoss="Reward:\n$40,000\n67,000,000 Exp."
CFrameQBoss=CFrame.new(-13232.682617188, 332.40396118164,-7626.01171875)
CFrameBoss=CFrame.new(-13376.7578125, 433.28689575195,-8071.392578125)
elseif SelectBoss=="Beautiful Pirate" then
BossMon="Beautiful Pirate"
NameBoss='Beautiful Pirate'
NameQuestBoss="DeepForestIsland2"
QuestLvBoss=3
RewardBoss="Reward:\n$50,000\n70,000,000 Exp."
CFrameQBoss=CFrame.new(-12682.096679688, 390.88653564453,-9902.1240234375)
CFrameBoss=CFrame.new(5283.609375, 22.56223487854,-110.78285217285)
elseif SelectBoss=="Cake Queen" then
BossMon="Cake Queen"
NameBoss='Cake Queen'
NameQuestBoss="IceCreamIslandQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$30,000\n112,500,000 Exp."
CFrameQBoss=CFrame.new(-819.376709, 64.9259796,-10967.2832,-0.766061664, 0, 0.642767608, 0, 1, 0,-0.642767608, 0,-0.766061664)
CFrameBoss=CFrame.new(-678.648804, 381.353943,-11114.2012,-0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929,-0.417492568, 0.0167988986,-0.90852499)
elseif SelectBoss=="Longma" then
BossMon="Longma"
NameBoss='Longma'
CFrameBoss=CFrame.new(-10238.875976563, 389.7912902832,-9549.7939453125)
elseif SelectBoss=="Soul Reaper" then
BossMon="Soul Reaper"
NameBoss='Soul Reaper'
CFrameBoss=CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
elseif SelectBoss=="rip_indra True Form" then
BossMon="rip_indra True Form"
NameBoss='rip_indra True Form'
CFrameBoss=CFrame.new(-5415.3920898438, 505.74133300781,-2814.0166015625)
end
end
end
function MaterialMon()
if SelectMaterial=="Radioactive Material" then
MMon="Factory Staff"
MPos=CFrame.new(295,73,-56)
SP="Default"
elseif SelectMaterial=="Mystic Droplet" then
MMon="Water Fighter"
MPos=CFrame.new(-3385,239,-10542)
SP="Default"
elseif SelectMaterial=="Magma Ore" then
if Sea1 then
MMon="Military Spy"
MPos=CFrame.new(-5815,84,8820)
SP="Default"
elseif Sea2 then
MMon="Magma Ninja"
MPos=CFrame.new(-5428,78,-5959)
SP="Default"
end
elseif SelectMaterial=="Angel Wings" then
MMon="God's Guard"
MPos=CFrame.new(-4698,845,-1912)
SP="Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-7859.09814, 5544.19043,-381.476196)).Magnitude>=5000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043,-381.476196))
end
elseif SelectMaterial=="Leather" then
if Sea1 then
MMon="Brute"
MPos=CFrame.new(-1145,15,4350)
SP="Default"
elseif Sea2 then
MMon="Marine Captain"
MPos=CFrame.new(-2010.5059814453125, 73.00115966796875,-3326.620849609375)
SP="Default"
elseif Sea3 then
MMon="Jungle Pirate"
MPos=CFrame.new(-11975.78515625, 331.7734069824219,-10620.0302734375)
SP="Default"
end
elseif SelectMaterial=="Scrap Metal" then
if Sea1 then
MMon="Brute"
MPos=CFrame.new(-1145,15,4350)
SP="Default"
elseif Sea2 then
MMon="Swan Pirate"
MPos=CFrame.new(878,122,1235)
SP="Default"
elseif Sea3 then
MMon="Jungle Pirate"
MPos=CFrame.new(-12107,332,-10549)
SP="Default"
end
elseif SelectMaterial=="Fish Tail" then
if Sea3 then
MMon="Fishman Raider"
MPos=CFrame.new(-10993,332,-8940)
SP="Default"
elseif Sea1 then
MMon="Fishman Warrior"
MPos=CFrame.new(61123,19,1569)
SP="Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude>=17000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
end
end
elseif SelectMaterial=="Demonic Wisp" then
MMon="Demonic Soul"
MPos=CFrame.new(-9507,172,6158)
SP="Default"
elseif SelectMaterial=="Vampire Fang" then
MMon="Vampire"
MPos=CFrame.new(-6033,7,-1317)
SP="Default"
elseif SelectMaterial=="Conjured Cocoa" then
MMon="Chocolate Bar Battler"
MPos=CFrame.new(620.6344604492188,78.93644714355469,-12581.369140625)
SP="Default"
elseif SelectMaterial=="Dragon Scale" then
MMon="Dragon Crew Archer"
MPos=CFrame.new(6827.91455078125, 609.4127197265625, 252.3538055419922)
SP="Default"
elseif SelectMaterial=="Gunpowder" then
MMon="Pistol Billionaire"
MPos=CFrame.new(-469,74,5904)
SP="Default"
elseif SelectMaterial=="Mini Tusk" then
MMon="Mythological Pirate"
MPos=CFrame.new()
SP="Default"
function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~="Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name='NameEsp'
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font="GothamBold"
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        name.TextColor3=Color3.fromRGB(8, 0, 0)
                    else
                        v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function isnil(thing)
return (thing==nil)
end
local function round(n)
return math.floor(tonumber(n)+0.5)
end
Number=math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Character.Head
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size10"
                    name.TextWrapped=true
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    if v.Team==game.Players.LocalPlayer.Team then
                        name.TextColor3=Color3.new(0,0,254)
                    else
                        name.TextColor3=Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text=(v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name='NameEsp'..Number
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font=Enum.Font.GothamSemibold
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        if v.Name=="Chest1" then
                            name.TextColor3=Color3.fromRGB(109, 109, 109)
                            name.Text=("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest2" then
                            name.TextColor3=Color3.fromRGB(173, 158, 21)
                            name.Text=("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest3" then
                            name.TextColor3=Color3.fromRGB(85, 255, 255)
                            name.Text=("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Handle
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 255, 255)
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name=="Flower2" or v.Name=="Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 0, 0)
                    if v.Name=="Flower1" then 
                        name.Text=("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name=="Flower2" then
                        name.Text=("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 0, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 174, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(251, 255, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end
function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~="Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name='NameEsp'
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font="GothamBold"
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        name.TextColor3=Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function isnil(thing)
return (thing==nil)
end
local function round(n)
return math.floor(tonumber(n)+0.5)
end
Number=math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Character.Head
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    if v.Team==game.Players.LocalPlayer.Team then
                        name.TextColor3=Color3.new(0,255,0)
                    else
                        name.TextColor3=Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text=(v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name='NameEsp'..Number
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font=Enum.Font.GothamSemibold
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        if v.Name=="Chest1" then
                            name.TextColor3=Color3.fromRGB(109, 109, 109)
                            name.Text=("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest2" then
                            name.TextColor3=Color3.fromRGB(173, 158, 21)
                            name.Text=("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest3" then
                            name.TextColor3=Color3.fromRGB(85, 255, 255)
                            name.Text=("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Handle
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 255, 255)
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name=="Flower2" or v.Name=="Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 0, 0)
                    if v.Name=="Flower1" then 
                        name.Text=("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name=="Flower2" then
                        name.Text=("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 0, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 174, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(251, 255, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end
spawn(function()
while wait() do
    pcall(function()
        if MobESP then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("MobEap") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")
                        BillboardGui.Parent=v
                        BillboardGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active=true
                        BillboardGui.Name="MobEap"
                        BillboardGui.AlwaysOnTop=true
                        BillboardGui.LightInfluence=1.000
                        BillboardGui.Size=UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset=Vector3.new(0, 2.5, 0)
                        TextLabel.Parent=BillboardGui
                        TextLabel.BackgroundColor3=Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency=1.000
                        TextLabel.Size=UDim2.new(0, 200, 0, 50)
                        TextLabel.Font=Enum.Font.GothamBold
                        TextLabel.TextColor3=Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size=35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude)
                    v.MobEap.TextLabel.Text=v.Name.."-"..Dis.." Distance"
                end
            end
        else
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("MobEap") then
                    v.MobEap:Destroy()
                end
            end
        end
    end)
end
end)
spawn(function()
while wait() do
    pcall(function()
        if SeaESP then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("Seaesps") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")
                        BillboardGui.Parent=v
                        BillboardGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active=true
                        BillboardGui.Name="Seaesps"
                        BillboardGui.AlwaysOnTop=true
                        BillboardGui.LightInfluence=1.000
                        BillboardGui.Size=UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset=Vector3.new(0, 2.5, 0)
                        TextLabel.Parent=BillboardGui
                        TextLabel.BackgroundColor3=Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency=1.000
                        TextLabel.Size=UDim2.new(0, 200, 0, 50)
                        TextLabel.Font=Enum.Font.GothamBold
                        TextLabel.TextColor3=Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size=35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude)
                    v.Seaesps.TextLabel.Text=v.Name.."-"..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Seaesps") then
                    v.Seaesps:Destroy()
                end
            end
        end
    end)
end
end)
spawn(function()
while wait() do
    pcall(function()
        if NpcESP then
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("NpcEspes") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")
                        BillboardGui.Parent=v
                        BillboardGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active=true
                        BillboardGui.Name="NpcEspes"
                        BillboardGui.AlwaysOnTop=true
                        BillboardGui.LightInfluence=1.000
                        BillboardGui.Size=UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset=Vector3.new(0, 2.5, 0)
                        TextLabel.Parent=BillboardGui
                        TextLabel.BackgroundColor3=Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency=1.000
                        TextLabel.Size=UDim2.new(0, 200, 0, 50)
                        TextLabel.Font=Enum.Font.GothamBold
                        TextLabel.TextColor3=Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size=35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude)
                    v.NpcEspes.TextLabel.Text=v.Name.."-"..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild("NpcEspes") then
                    v.NpcEspes:Destroy()
                end
            end
        end
    end)
end
end)
function isnil(thing)
return (thing==nil)
end
local function round(n)
return math.floor(tonumber(n)+0.5)
end
Number=math.random(1, 1000000)
function UpdateIslandMirageESP() 
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    pcall(function()
        if MirageIslandESP then 
            if v.Name=="Mirage Island" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function UpdateAuraESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AuraESP then 
            if v.Name=="Master of Enhancement" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function UpdateLSDESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if LADESP then 
            if v.Name=="Legendary Sword Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function UpdateGeaESP() 
for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
    pcall(function()
        if GearESP then 
            if v.Name=="MeshPart" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function Tween2(KG)
    local Distance = (KG.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed = 350
    local tweenInfo = TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear)
    local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
        CFrame = KG
    })
    tween:Play()
    if _G.StopTween2 then
        tween:Cancel()
    end
    _G.Clip2 = true
    wait(Distance / Speed)
    _G.Clip2 = false
end
function BKP(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
end
TweenSpeed = 350
function Tween(KG)
    local Distance = (KG.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed = TweenSpeed  
    local tweenInfo = TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear)
    local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
        CFrame = KG
    })
    tween:Play()
    if _G.StopTween then
        tween:Cancel()
    end
end
function EquipTool(ToolSe)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        end
    end
   spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.AutoEvoRace or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.GhostShip or _G.Ship or _G.Auto_Holy_Torch or _G.TeleportPly or _G.Auto_Sea3 or _G.Auto_Sea2 or _G.Tweenfruit or _G.AutoFishCrew or _G.Auto_Saber or _G.AutoShark or _G.Auto_Warden or _G.Auto_RainbowHaki or AutoFarmRace or _G.AutoQuestRace or Auto_Law or AutoTushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.Auto_MusketeerHat or _G.Auto_ObservationV2 or _G.AutoNear or _G.Auto_PoleV1 or _G.Auto_Buddy or _G.Ectoplasm or AutoEvoRace or AutoBartilo or _G.Auto_Canvander or _G.AutoLevel or _G.Auto_DualKatana or Auto_Quest_Yama_3 or Auto_Quest_Yama_2 or Auto_Quest_Yama_1 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3  or _G.Clip2 or _G.Auto_Regoku or _G.AutoBone or _G.AutoBoneNoQuest or _G.AutoBoss or AutoFarmMasDevilFruit or AutoFarmMasGun or AutoHallowSycthe or AutoTushita or _G.Cake or _G.Auto_SkullGuitar or _G.AutoFarmSwan or _G.AutoEliteor or AutoNextIsland or Musketeer or _G.AutoMaterial or AutoFarmRaceQuest or _G.Factory or _G.Auto_Saw or _G.AutoFrozenDimension or _G.AutoKillTrial or _G.AutoUpgrade or _G.TweenToFrozenDimension then
                        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                            local Noclip = Instance.new("BodyVelocity")
                            Noclip.Name="BodyClip"
                            Noclip.Parent=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            Noclip.MaxForce=Vector3.new(100000,100000,100000)
                            Noclip.Velocity=Vector3.new(0,0,0)
                        end
                    else
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                    end
                end)
            end
        end)
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.AutoEvoRace or _G.Auto_RainbowHaki or _G.Auto_SkullGuitar or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.Auto_Sea3 or _G.Auto_Sea2 or _G.GhostShip or _G.Ship or _G.Auto_Holy_Torch or _G.TeleportPly or _G.Tweenfruit or _G.Auto_Saber or _G.Auto_PoleV1 or _G.Auto_MusketeerHat or _G.AutoFishCrew or _G.AutoShark or AutoFarmRace or _G.AutoQuestRace or _G.Auto_Warden or Auto_Law or _G.Auto_DualKatana or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or AutoTushita or _G.AutoHolyTorch or _G.Auto_Buddy or _G.AutoTerrorshark or _G.farmpiranya or Auto_Quest_Yama_3 or _G.Auto_ObservationV2 or Auto_Quest_Yama_2 or Auto_Quest_Yama_1 or _G.AutoNear or _G.Ectoplasm or AutoEvoRace or _G.AutoKillTrial or AutoBartilo or AutoFarmMasGun or _G.Auto_Regoku or _G.AutoLevel or _G.Clip2 or _G.AutoBone or _G.Auto_Canvander or _G.AutoBoneNoQuest or _G.AutoBoss or _G.Auto_Saw or AutoFarmMasDevilFruit or AutoHallowSycthe or AutoTushita or _G.Cake or _G.AutoFarmSwan or _G.AutoEliteor or AutoNextIsland or Musketeer or _G.AutoMaterial or _G.Factory or _G.AutoFrozenDimension or AutoFarmRaceQuest or _G.AutoUpgrade or _G.TweenToFrozenDimension then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide=false
      end
      end
      end
      end)
    end)
  end)
  task.spawn(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
    game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
      pcall(function()
        if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
        game.Players.LocalPlayer.Character.Stun.Value=0
        end
        end)
      end)
    end
    end)
function CheckMaterial(matname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v)=="table" then
if v.Type=="Material" then
if v.Name==matname then
return v.Count
end
end
end
end
return 0
end
function GetWeaponInventory(Weaponname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v)=="table" then
if v.Type=="Sword" then
if v.Name==Weaponname then
return true
end
end
end
end
return false
end
local player = game.Players.LocalPlayer
function AttackNoCoolDown()
    local character = player.Character
    if not character then return end
    local equippedWeapon = nil
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            equippedWeapon = item
            break
        end
    end
    if not equippedWeapon then return end
    local function IsEntityAlive(entity)
        return entity and entity:FindFirstChild("Humanoid") and entity.Humanoid.Health > 0
    end
    local function GetEnemiesInRange(range)
        local enemies = game:GetService("Workspace").Enemies:GetChildren()
        local targets = {}
        local playerPos = character:GetPivot().Position
        for _, enemy in ipairs(enemies) do
            local primaryPart = enemy:FindFirstChild("HumanoidRootPart")
            if primaryPart and IsEntityAlive(enemy) and (primaryPart.Position - playerPos).Magnitude <= range then
                table.insert(targets, enemy)
            end
        end
        return targets
    end
    if equippedWeapon:FindFirstChild("LeftClickRemote") then
        local attackCount = 1  
        local enemiesInRange = GetEnemiesInRange(60)
        for _, enemy in ipairs(enemiesInRange) do
            local direction = (enemy.HumanoidRootPart.Position - character:GetPivot().Position).Unit
            pcall(function()
                equippedWeapon.LeftClickRemote:FireServer(direction, attackCount)
            end)
            attackCount = attackCount + 1
            if attackCount > 1000000000 then attackCount = 1 end
        end
    else
        local targets = {}
        local enemies = game:GetService("Workspace").Enemies:GetChildren()
        local playerPos = character:GetPivot().Position
        local mainTarget = nil
        for _, enemy in ipairs(enemies) do
            if not enemy:GetAttribute("IsBoat") and IsEntityAlive(enemy) then
                local head = enemy:FindFirstChild("Head")
                if head and (playerPos - head.Position).Magnitude <= 60 then
                    table.insert(targets, { enemy, head })
                    mainTarget = head
                end
            end
        end
        if not mainTarget then return end
        pcall(function()
            local storage = game:GetService("ReplicatedStorage")
            local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
            local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")
            if #targets > 0 then
                attackEvent:FireServer(0.000000001)
                hitEvent:FireServer(mainTarget, targets)
            else
                task.wait(0.000000001)
            end
        end)
    end
end
Type=1
spawn(function()
    while wait() do
        if Type==1 then
            Pos=CFrame.new(0, 20, 0)
        end
    end
end)
spawn(function()
    while wait() do
        Type=1
    end
end)
  function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
function to(P)
    repeat wait(_G.Fast_Delay)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=P
    until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=2000
end
function to(p)
        pcall(function()
            if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>=2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health>0 then
                if NameMon=="FishmanQuest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif Mon=="God's Guard"  then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248,-1667.55688))
                elseif NameMon=="SkyExp1Quest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625,-380.29119873047))
                elseif NameMon=="ShipQuest1" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif NameMon=="ShipQuest2" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif NameMon=="FrostQuest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715,-132.83953857422))
                else
                        repeat wait(_G.Fast_Delay)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=p
                        wait(.05)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=p
                    until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<2500 and game.Players.LocalPlayer.Character.Humanoid.Health>0
                    wait()
                end
            end
        end)
    end
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local ParticleEmitter = Instance.new("ParticleEmitter")
local TweenService = game:GetService("TweenService")
ScreenGui.Parent=game.CoreGui
ScreenGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
ImageButton.Parent=ScreenGui
ImageButton.BackgroundColor3=Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel=0
ImageButton.Position=UDim2.new(0.120833337-0.10, 0, 0.0952890813+0.01, 0)
ImageButton.Size=UDim2.new(0, 50, 0, 50)
ImageButton.Draggable=true
ImageButton.Image="file:///D:/AJxt1KP960TJM7EQdaQuaTKnAAhLRBZQQOdufQxhXnTvCcSIB3ryQ3ByQFaxEuw030o8NtZ0j5T7FhZ54ESvCu6fP3wKdnfM66x6IpZrPhzwfp0r7W_iISX-cIWpZlkYbpsz3bHdtIEimFNQk6lcuYACXxieEct-B_WHkFq9YxHq-95orAkdf_zas1024.png"
UICorner.Parent=ImageButton
UICorner.CornerRadius=UDim.new(0, 12) 
ParticleEmitter.Parent=ImageButton
ParticleEmitter.LightEmission=1
ParticleEmitter.Size=NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0)})
ParticleEmitter.Lifetime=NumberRange.new(0.5, 1)
ParticleEmitter.Rate=0 
ParticleEmitter.Speed=NumberRange.new(5, 10)
ParticleEmitter.Color=ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255))
local rotateTween = TweenService:Create(ImageButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation=360})
ImageButton.MouseButton1Down:Connect(function()
    ParticleEmitter.Rate=100
    task.delay(1, function()
        ParticleEmitter.Rate=0
    end)
    rotateTween:Play()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
    rotateTween.Completed:Connect(function()
        ImageButton.Rotation=0
    end)
    local zoomTween = TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size=UDim2.new(0, 60, 0, 60)})
    zoomTween:Play()
    zoomTween.Completed:Connect(function()
        local resetZoom = TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size=UDim2.new(0, 50, 0, 50)})
        resetZoom:Play()
    end)
end)
task.defer(function()
    if game:GetService("ReplicatedStorage"):FindFirstChild("Effect") 
        and game:GetService("ReplicatedStorage").Effect:FindFirstChild("Container") 
        and game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
        local DeathEffect = require(game:GetService("ReplicatedStorage").Effect.Container.Death)
        local CameraShaker = require(game:GetService("ReplicatedStorage").Util.CameraShaker)
        if CameraShaker then
            CameraShaker:Stop()
        end
        if hookfunction then
            hookfunction(DeathEffect, function(...) return ... end)
        end
    end
end)Tabs.Info:AddParagraph({
    Title="Phát Triển Himawari",
    Content="Skidder"
})
local executorName
if identifyexecutor then
    executorName=identifyexecutor()
elseif getexecutorname then
    executorName=getexecutorname()
end
if executorName then
    Tabs.Info:AddParagraph({
        Title="Client Đang Dùng",
        Content=executorName
    })
end
Tabs.Info:AddParagraph({
    Title="Cập Nhật",
    Content="Tôi Sẽ Cập Nhiều Nhiều Tính Năng Hơn Để Mang Đến Cho Các Bạn Trải Nghiệm Tốt Nhất\nNếu Có Lỗi Hãy Kiên Nhẫn Chờ Tôi Fix Vì Tôi Không Thể Thử Nghiệm Hết"
})
Tabs.Info:AddParagraph({
    Title="Các Client Android Hỗ Trợ",
    Content="Tất Cả Client Android"
})
Tabs.Info:AddParagraph({
    Title="Các Client Pc Hỗ Trợ",
    Content="Tất Cả Client Pc (Cung Kb t sP hET dC k NUA)"
})
_G.FastAttackStrix_Mode="Super Fast Attack"
spawn(function()
    while wait() do
        if _G.FastAttackStrix_Mode then
            pcall(function()
                if _G.FastAttackStrix_Mode=="Super Fast Attack" then
                    _G.Fast_Delay=0.000000001 
                end
            end)
        end
    end
end)
local DropdownSelectWeapon = Tabs.Main:AddDropdown("DropdownSelectWeapon", {
    Title = "Vũ Khí",
    Description = "",
    Values = {'Melee', 'Sword', 'Blox Fruit'},
    Multi = false,
    Default = 1,
})
DropdownSelectWeapon:SetValue('Melee')
DropdownSelectWeapon:OnChanged(function(Value)
    ChooseWeapon = Value
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if ChooseWeapon == "Melee" then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Sword" then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Blox Fruit" then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)
local ToggleLevel = Tabs.Main:AddToggle("ToggleLevel", {
    Title="Auto Farm Level",
    Description="",
    Default=false })
ToggleLevel:OnChanged(function(Value)
    _G.AutoLevel=Value
    if Value==false then
        wait()
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleLevel:SetValue(false)
    spawn(function()
        while task.wait() do
        if _G.AutoLevel then
        pcall(function()
          CheckLevel()
          if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
          Tween(CFrameQ)
          if (CFrameQ.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=5 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
          end
          elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true then
          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
          if v.Name==Ms then
          repeat wait(_G.Fast_Delay)
          AttackNoCoolDown()
          bringmob=true
          AutoHaki()
          EquipTool(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame*Pos)
          v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
          v.HumanoidRootPart.Transparency=1
          v.Humanoid.JumpPower=0
          v.Humanoid.WalkSpeed=0
          v.HumanoidRootPart.CanCollide=false
          FarmPos=v.HumanoidRootPart.CFrame
          MonFarm=v.Name
          until not _G.AutoLevel or not v.Parent or v.Humanoid.Health<=0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible==false
          bringmob=false
        end   
          end
          end
          for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name,NameMon) then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude>=10 then
            Tween(v.HumanoidRootPart.CFrame*Pos)
          end
          end
          end
          end
          end)
        end
        end
        end)
        ToggleMobAura = Tabs.Main:AddToggle("ToggleMobAura", {
            Title="Farm Liver",
            Description="",
            Default=false })
        ToggleMobAura:OnChanged(function(Value)
            _G.AutoNear=Value
            if Value==false then
                wait()
                Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
            end
        end)
        Options.ToggleMobAura:SetValue(false)
        spawn(function()
            while wait() do
            if _G.AutoNear then
            pcall(function()
              for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
              if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
              if v.Name then
              if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v:FindFirstChild("HumanoidRootPart").Position).Magnitude<=5000 then
                repeat wait(_G.Fast_Delay)
                    AttackNoCoolDown()
                    bringmob=true
              AutoHaki()
              EquipTool(SelectWeapon)
              Tween(v.HumanoidRootPart.CFrame*Pos)
              v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
              v.HumanoidRootPart.Transparency=1
              v.Humanoid.JumpPower=0
              v.Humanoid.WalkSpeed=0
              v.HumanoidRootPart.CanCollide=false
              FarmPos=v.HumanoidRootPart.CFrame
              MonFarm=v.Name
              until not _G.AutoNear or not v.Parent or v.Humanoid.Health<=0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
              bringmob=false
            end
              end
              end
              end
              end)
            end
            end
          end)
          ToggleCastleRaid = Tabs.Main:AddToggle("ToggleCastleRaid", {
            Title="Đấm Hải Tặc",
            Description="", 
            Default=false })
        ToggleCastleRaid:OnChanged(function(Value)
            _G.CastleRaid=Value
        end)
        Options.ToggleCastleRaid:SetValue(false)
        spawn(function()
            while wait() do
                if _G.CastleRaid then
                    pcall(function()
                        local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921,-2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1,-1.06665446e-07,-0.380223751, 1.12297109e-07, 0.924894512)
                        if (CFrame.new(-5539.3115234375, 313.800537109375,-2972.372314453125).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=500 then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if _G.CastleRaid and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 then
                                    if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<2000 then
                                        repeat wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.CanCollide=false
                                            v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                            Tween(v.HumanoidRootPart.CFrame*Pos)
                                        until v.Humanoid.Health<=0 or not v.Parent or not _G.CastleRaid
                                    end
                                end
                            end
                        else
                            Tween(CFrameCastleRaid)
                        end
                    end)
                end
            end
            end)
    local ToggleHakiFortress = Tabs.Main:AddToggle("ToggleHakiFortress", { 
        Title="Bật Haki Màu Pháo Đài", 
        Description="", 
        Default=false 
    })
    ToggleHakiFortress:OnChanged(function(Value)
        _G.EnableHakiFortress=Value
    end)
    Options.ToggleHakiFortress:SetValue(false)
    local function EquipAuraAndTeleport(storageName, targetPosition)
        local args = {
            [1]={
                ["StorageName"]=storageName,
                ["Type"]="AuraSkin",
                ["Context"]="Equip"
            }
        }
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/FruitCustomizerRF"):InvokeServer(unpack(args))
        Tween2(targetPosition)
    end
    local function IsAtPosition(targetPosition, tolerance)
        local character = game.Players.LocalPlayer.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then
            return false
        end
        local characterPosition = character.HumanoidRootPart.Position
        return (characterPosition-targetPosition).Magnitude<tolerance
    end
    spawn(function()
        while true do
            if _G.EnableHakiFortress then
                EquipAuraAndTeleport("Snow White", Vector3.new(-4971.71826171875, 335.9582214355469,-3720.0595703125))
                while not IsAtPosition(Vector3.new(-4971.71826171875, 335.9582214355469,-3720.0595703125), 1) do
                    wait(0.1)
                end
                wait(0.5) 
                EquipAuraAndTeleport("Pure Red", Vector3.new(-5414.92041015625, 314.2582092285156,-2212.20166015625))
                while not IsAtPosition(Vector3.new(-5414.92041015625, 314.2582092285156,-2212.20166015625), 1) do
                    wait(0.1)
                end
                wait(0.5) 
                EquipAuraAndTeleport("Winter Sky", Vector3.new(-5420.26318359375, 1089.3582763671875,-2666.8193359375))
                while not IsAtPosition(Vector3.new(-5420.26318359375, 1089.3582763671875,-2666.8193359375), 1) do
                    wait(0.1)
                end
                wait(0.5) 
                _G.EnableHakiFortress=false
            end
            wait(0.5)
        end
    end)
    Mn:Section("Chest Farm")
    
    Mn:Toggle({"Tự Động Lụm Rương",false,function(V)
        _G.FarmChest = V
        StopTween(_G.FarmChest)
    end})
     
    spawn(function()
        while wait() do
            if _G.FarmChest then
                local Players = game:GetService("Players")
                local Player = Players.LocalPlayer
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local Position = Character:GetPivot().Position
                local CollectionService = game:GetService("CollectionService")
                local Chests = CollectionService:GetTagged("_ChestTagged")
                local Distance, Nearest = math.huge
                for i = 1, #Chests do
                    local Chest = Chests[i]
                    local Magnitude = (Chest:GetPivot().Position - Position).Magnitude
                    if (not Chest:GetAttribute("IsDisabled") and (Magnitude < Distance)) then
                        Distance, Nearest = Magnitude, Chest
                    end
                end
                if Nearest then
                    local ChestPosition = Nearest:GetPivot().Position
                    local CFrameTarget = CFrame.new(ChestPosition)
                    topos(CFrameTarget)
                end
            end
        end
    end)
    
    Mn:Toggle({"Lụm Rương Bypass",false,function(V)
        _G.ChestBypass = V
    end})
    
    spawn(function()
        while wait() do
            if _G.ChestBypass then
                local Players = game:GetService("Players")
                local Player = Players.LocalPlayer
                local CollectionService = game:GetService("CollectionService")
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local StartTime = tick()
                while tick() - StartTime < 4 do
                    Character = Player.Character or Player.CharacterAdded:Wait()
                    local Position = Character:GetPivot().Position
                    local Chests = CollectionService:GetTagged("_ChestTagged")
                    local Distance, Nearest = math.huge
                    for i = 1, #Chests do
                        local Chest = Chests[i]
                        local Magnitude = (Chest:GetPivot().Position - Position).Magnitude
                        if (not Chest:GetAttribute("IsDisabled") and (Magnitude < Distance)) then
                            Distance, Nearest = Magnitude, Chest
                        end
                    end
                    if Nearest then
                        local ChestPosition = Nearest:GetPivot().Position
                        Character:PivotTo(CFrame.new(ChestPosition))
                        task.wait(0.2)
                    else
                        break
                    end
                end
                if Player.Character then
                    Player.Character:BreakJoints()
                    Player.CharacterAdded:Wait()
                end
            end
        end
    end)
    
    Mn:Toggle({"Tự Động Dừng Khi Có Item",false,function(V)
        _G.StopItemsChest = V
    end})
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.StopItemsChest then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") then
                        _G.ChestBypass = false
                        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    end
                end
            end)
        end
    end)
    ection("Hải Tặc")

    Mn:Toggle({"Tự Động Đánh Hải Tặc",false, function(V)
        _G.RaidPirate = V
        StopTween(_G.RaidPirate)
    end})
        
    spawn(function()
        while wait() do
            if _G.RaidPirate then
                pcall(function()
                    local CFrameBoss = CFrame.new(-5496.17432, 363.768921, -2841.53027)
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.RaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        TP2(v.HumanoidRootPart.CFrame * Pos)
                                    until v.Humanoid.Health <= 0 or not v.Parent or not _G.RaidPirate
                                end
                            end
                        end
                    else
                        topos(CFrameBoss)
                    end
                    topos(CFrame.new(-5496.17432, 313.768921, -2841.53027))
                end)
            end
        end
    end)
    
    Mn:Section("Xương")
    
    local Bone = {
        ["Reborn Skeleton"] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
        ["Living Zombie"] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
        ["Demonic Soul"] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
        ["Posessed Mummy"] = CFrame.new(-9570.88281, 5.81831884, 6187.86279)
    }
    
    spawn(function()
        spawn(function()
            while task.wait(.1) do
                if BonesBring then
                    pcall(function()
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                local targetCFrame = Bone[v.Name]
                                if targetCFrame then
                                    v.HumanoidRootPart.CFrame = targetCFrame
                                end
                                v.Head.CanCollide = false
                                v.Humanoid.Sit = false
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                if v.Humanoid:FindFirstChild('Animator') then
                                    v.Humanoid:FindFirstChild('Animator'):Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end)
                end
            end
        end)
    end)
    
    local BoneCheck = Mn:Paragraph({
        Title = "Trạng Thái Xương",
        Desc = ""
    })
        
    spawn(function()
        while wait() do
            pcall(function()
                BoneCheck:Set("Xương Đang Có: "..(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")))
            end)
        end
    end)
    
    Mn:Toggle({"Tự Động Cày Xương",false,function(V)
        _G.Bone = V
        StopTween(_G.Bone)
    end})
    
    Mn:Toggle({"Nhận Nhiệm Vụ Cày Xương",true,function(V)
        _G.QuestBone = V
    end})
    
       local BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
    spawn(function()
        while wait() do 
            if _G.Bone and not _G.QuestBone and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                   repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        BonesBring = true
                                        PosMonBone = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not _G.Bone or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude > 3500 then
                    BTP(BonePos)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude < 3500 then
                    topos(BonePos)
                    end
                else
                    topos(BonePos)
                end
                        UnEquipWeapon(_G.SelectWeapon)
                        BonesBring = false
                        topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Reborn Skeleton" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Living Zombie" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Demonic Soul" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Posessed Mummy" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)    
    
    local BoneQuestPos = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
    
    spawn(function()
        while wait() do
            if _G.Bone and _G.QuestBone and World3 then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, "Demonic Soul") then
                        BonesBring = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        BonesBring = false
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude > 3500 then
                        BTP(BoneQuestPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude < 3500 then
                        topos(BoneQuestPos)
                        end
                    else
                        topos(BoneQuestPos)
                    end
                    if (BoneQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then    
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()                                            
                                                PosMonBone = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                BonesBring = true
                                            until not _G.Bone or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            BonesBring = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            BonesBring = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]") then
                             topos(game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]").HumanoidRootPart.CFrame * CFrame.new(15,10,2))
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Mn:Toggle({"Tự Động Đổi Xương",false,function(V)
        _G.Random_Bone = V
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Random_Bone then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end
        end)
    end)
    
    Mn:Toggle({"Tự Động Cầu Nguyện",false,function(V)
        _G.Pray = V
        StopTween(_G.Pray)
    end})
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Pray then    
                    TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",1)
                end
            end
        end)
    end)
    
    Mn:Toggle({"Tự Động Thử Vận May",false,function(V)
        _G.Trylux = V
        StopTween(_G.Trylux)
    end})
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Trylux then    
                    TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2)
                end
            end
        end)
    end)
    
    Mn:Section("Tư Lệnh Bột")
    
    local Cake = {
        ["Cookie Crafter"] = CFrame.new(-2333.28052, 37.8239059, -12093.2861),
        ["Cake Guard"] = CFrame.new(-1575.56433, 37.8238907, -12416.2529),
        ["Baking Staff"] = CFrame.new(-1872.35742, 37.8239517, -12899.4248),
        ["Head Baker"] = CFrame.new(-2223.1416, 53.5283203, -12854.752)
    }
    
    spawn(function()
        spawn(function()
            while task.wait(.1) do
                if CakeBring then
                    pcall(function()
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                local targetCFrame = Cake[v.Name]
                                if targetCFrame then
                                    v.HumanoidRootPart.CFrame = targetCFrame
                                end
                                v.Head.CanCollide = false
                                v.Humanoid.Sit = false
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                if v.Humanoid:FindFirstChild('Animator') then
                                    v.Humanoid:FindFirstChild('Animator'):Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end)
                end
            end
        end)
    end)
        
    local MobKilled = Mn:Paragraph({
        Title = "Trạng Thái Quái",
        Desc = ""
    })
        
    spawn(function()
        while wait() do
            pcall(function()
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    MobKilled:Set("Còn: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    MobKilled:Set("Còn: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    MobKilled:Set("Còn: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
                else
                    MobKilled:Set("Có Trùm Xuất Hiện")
                end
            end)
        end
    end)
        
    Mn:Toggle({"Tự Động Cày Tư Lệnh Bột",false,function(V)
        _G.DoughtBoss = V
        StopTween(_G.DoughtBoss)
    end})
    
    Mn:Toggle({"Nhận Nhiệm Vụ Tư Lệnh Bột",true,function(V)
        _G.QuestCake = V
    end})
        
    spawn(function()
        while wait() do
            if _G.DoughtBoss and not _G.QuestCake then
                pcall(function()
                    local CakePos = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" or v.Name == "Dough King" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until not _G.DoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        else
                            if KillMob == 0 then
                            end
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                CakeBring = true
                                                PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                            until not _G.DoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude > 3500 then
                                        BTP(CakePos)
                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude < 3500 then
                                        topos(CakePos)
                                    end
                                else
                                    topos(CakePos)
                                end
                                CakeBring = false
                                UnEquipWeapon(_G.SelectWeapon)
                                topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
            if _G.DoughtBoss and _G.QuestCake and World3 then
                pcall(function()
                    local CakeQuestPos = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" or v.Name == "Dough King" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until not _G.DoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        else
                            if KillMob == 0 then
                            end
                            local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                            if not string.find(QuestTitle, "Cookie Crafter") then
                                CakeBring = false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                CakeBring = false
                                if BypassTP then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeQuestPos.Position).Magnitude > 3500 then
                                        BTP(CakeQuestPos)
                                    else
                                        topos(CakeQuestPos)
                                    end
                                else
                                    topos(CakeQuestPos)
                                end
                                if (CakeQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest1", 1)
                                end
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                            if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
                                                    repeat
                                                        wait()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        AutoHaki()
                                                        PosMonCake = v.HumanoidRootPart.CFrame
                                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false
                                                        CakeBring = true
                                                        PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                    until not _G.DoughtBoss or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or v.Humanoid.Health <= 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                                else
                                                    CakeBring = false
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                end
                                            end
                                        end
                                    end
                                else
                                    CakeBring = false
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2))
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    Mn:Toggle({"Tự Động Triệu Hồi Trùm",false,function(V)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",value)
    end})
    
    Mn:Toggle({"Tự Động Đánh Vua Bột", false,function(V)
         _G.doughking = V
        StopTween( _G.doughking)
    end})
    
    Mn:Toggle({"Tự Động Vua Bột Hop", false,function(V)
         _G.doughkingHop = V
    end})
    
    spawn(function()
        while wait() do
            if  _G.doughking and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dough King" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.doughking or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-2662.818603515625, 1062.3480224609375, -11853.6953125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.doughkingHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    Mn:Section("Thông Thạo")
    
    Mn:Toggle({"Tự Động Cày Thông Thạo Trái",false,function(V)
        _G.FarmFruitMastery = V
        StopTween(_G.FarmFruitMastery)
        if _G.FarmFruitMastery == false then
            UseSkill = false 
        end
    end})
    
    spawn(function()
        while wait() do
            if _G.FarmFruitMastery then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        Magnet = false
                        UseSkill = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMasteryFruitMagnet = false
                        UseSkill = false
                        CheckQuest()
                        repeat wait()
                            TP1(CFrameQuest)
                        until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.FarmFruitMastery
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            wait(0.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                            wait(0.1)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMs = v.Humanoid.MaxHealth * Kill_At/100
                                            repeat task.wait()
                                                if v.Humanoid.Health <= HealthMs then
                                                    AutoHaki()
                                                    EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                    TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    UseSkill = true
                                                else           
                                                    UseSkill = false 
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP1(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                end
                                                StartMasteryFruitMagnet = true
                                            until not _G.FarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            UseSkill = false
                                            StartMasteryFruitMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            TP1(CFrameMon)
                            UnEquipWeapon(_G.SelectWeapon)
                            StartMasteryFruitMagnet = false   
                            UseSkill = false 
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                            if Mob then
                                TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                            else
                                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
            if UseSkill then
                pcall(function()
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then                      
                            if _G.SkillZ then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then          
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then   
                            if _G.SkillZ then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then        
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then 
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                            if _G.SkillZ and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if _G.SkillV then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            if _G.SkillZ then 
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if _G.SkillV then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if UseSkill then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"Skill locked!") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if UseSkill then
                    local args = {
                        [1] = PosMonMasteryFruit.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                end
            end)
        end)
    end)
    
    Mn:Toggle({"Tự Động Cày Thông Thạo Súng",false,function(V)
        _G.FarmGunMastery = V
        StopTween(_G.FarmGunMastery)
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.FarmGunMastery then
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        Magnet = false                                      
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMasteryGunMagnet = false
                        CheckQuest()
                        TP1(CFrameQuest)
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(0.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            pcall(function()
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Mon then
                                        repeat task.wait()
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                HealthMin = v.Humanoid.MaxHealth * Kill_At/100
                                                if v.Humanoid.Health <= HealthMin then                                                
                                                    EquipWeapon(SelectWeaponGun)
                                                    TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                    v.Head.CanCollide = false                                                
                                                    local args = {
                                                        [1] = v.HumanoidRootPart.Position,
                                                        [2] = v.HumanoidRootPart
                                                    }
                                                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                else
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false               
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    TP1(v.HumanoidRootPart.CFrame * Pos)
                                                end
                                                StartMasteryGunMagnet = true 
                                                PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                            else
                                                StartMasteryGunMagnet = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        until v.Humanoid.Health <= 0 or _G.FarmGunMastery == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMasteryGunMagnet = false
                                    end
                                end
                            end)
                        else
                           TP1(CFrameMon)
                           UnEquipWeapon(_G.SelectWeapon)
                            _G.FarmGunMastery = false
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                            if Mob then
                                TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                            else
                                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                end
                            end
                        end 
                    end
                end
            end
        end)
    end)
    Mn:Section("Haki Quan Sát")

    Mn:Toggle({"Tự Động Cày Haki Quan Sát",false,function(V)
        _G.Observation = V
        StopTween(_G.Observation)
    end})
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Observation then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(2)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.Observation
                end
            end)
        end
    end)
       
    Mn:Toggle({"Tự Động Cày Haki Quan Sát Hop",false,function(V)
        _G.Observation_Hop = V
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Observation then
                    if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
                        wait(2)
                    else
                        if World2 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.Observation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                            wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Observation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.Observation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                            end
                        elseif World1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.Observation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Observation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.Observation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                            end
                        elseif World3 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.Observation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Observation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.Observation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                            end
                        end
                    end
                end
            end
        end)
    end)
        
    Mn:Section("Trùm")
    
    local Boss = Mn:Paragraph({
        Title = "Trạng Thái Trùm",
        Desc = ""
    })
    
    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    Boss:Set("Trạng Thái : Có")	
                else
                    Boss:Set("Trạng Thái : Không")	
                end
            end)
        end
    end)
    
    if World1 then
        Mn:Dropdown({
            Name = "Chọn Trùm",
            Default = false,
            Options = {
                "The Saw",
                "The Gorilla King",
                "Bobby",
                "Yeti",
                "Mob Leader",
                "Vice Admiral",
                "Warden",
                "Chief Warden",
                "Swan",
                "Magma Admiral",
                "Fishman Lord",
                "Wysper",
                "Thunder God",
                "Cyborg",
                "Saber Expert"
            },
            Callback = function(V)
                _G.SelectBoss = V
            end
        })
    end
    
    if World2 then
        Mn:Dropdown({
            Name = "Chọn Trùm",
            Default = false,
            Options = {
                "Diamond",
                "Jeremy",
                "Fajita",
                "Don Swan",
                "Smoke Admiral",
                "Cursed Captain",
                "Darkbeard",
                "Order",
                "Awakened Ice Admiral",
                "Tide Keeper"
            },
            Callback = function(V)
                _G.SelectBoss = V
            end
        })
    end
    
    if World3 then
        Mn:Dropdown({
            Name = "Chọn Trùm",
            Default = false,
            Options = {
                "Stone",
                "Island Empress",
                "Kilo Admiral",
                "Captain Elephant",
                "Beautiful Pirate",
                "rip_indra True Form",
                "Longma",
                "Soul Reaper",
                "Cake Queen"
            },
            Callback = function(V)
                _G.SelectBoss = V
            end
        })
    end
    
    Mn:Toggle({"Tự Động Đánh Trùm",false,function(V)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        _G.FarmBoss = V
        StopTween(_G.FarmBoss)
    end})
    
    spawn(function()
        while wait() do
            if _G.FarmBoss and BypassTP then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.FarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
                        if ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
                            topos(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
                        else
                            BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
            if _G.FarmBoss and not BypassTP then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.FarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        end
                    end
                end)
            end
        end
    end)
    
    Mn:Toggle({"Tự Động Đánh Tất Cả Trùm",false,function(V)
        _G.AllBoss = V
        StopTween(_G.AllBoss)
    end})
    
    Mn:Toggle({"Tự Động Đánh Tất Cả Trùm Hop",false,function(V)
        _G.AllBossHop = V
    end})
    
    spawn(function()
        while wait() do
            if _G.AllBoss then
                pcall(function()
                    for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                        if (v.Name == "rip_indra" or v.Name == "Ice Admiral") or (v.Name == "Saber Expert" or v.Name == "The Saw" or v.Name == "Greybeard" or v.Name == "Mob Leader" or v.Name == "The Gorilla King" or v.Name == "Bobby" or v.Name == "Yeti" or v.Name == "Vice Admiral" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral" or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Cyborg") or (v.Name == "Don Swan" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Order" or v.Name == "Darkbeard") or (v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Cake Queen" or v.Name == "rip_indra True Form" or v.Name == "Longma" or v.Name == "Soul Reaper" or v.Name == "Cake Prince" or v.Name == "Dough King") then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    topos(v.HumanoidRootPart.CFrame*Pos)
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.AllBoss == false or not v.Parent
                            end
                        else
                            if _G.AllBossHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    ------------------------------------------------------------------------------------------------------------------------------------
    St:Section("Bay")
    
    getgenv().TweenSpeed = 350
    St:Slider({"Tốc Độ Bay", 50, 350, 5, 350, function(V)
        getgenv().TweenSpeed = V
    end})
    
    St:Button({
      Name = "Dừng Bay",
      Callback = function()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        _G.Clip = false
      end
    })
     
    St:Toggle({"Gôm Quái",true,function(V)
        _G.BringMonster = V
    end})
    
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringMonster then
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.Level and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        elseif _G.Level and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                    end
                end
            end)
        end
    end)
        
    spawn(function()
        while task.wait() do
            pcall(function()
                if StartMagnet then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= _G.BringMode then
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            v.Humanoid:ChangeState(11)
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(5,5,5)
                            v.HumanoidRootPart.CFrame = _G.PosMon
                            sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius",  math.huge)
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  9e20)
                        end
                    end
                end
            end)
        end
    end)
    
    local Bring = {"Ít", "Thường", "Nhiều"}
    St:Dropdown({
        Name = "Chọn Chế Độ Gôm",
        Default = "Ít",
        Options = Bring,
        Callback = function(V)
            _G.BringMode = V
        end
    })
    
    spawn(function()
        while wait(0.1) do
            if _G.BringMode then
                pcall(function()
                    if _G.BringMode == "Ít" then
                        _G.BringMode = 250
                    elseif _G.BringMode == "Thường" then
                        _G.BringMode = 300
                    elseif _G.BringMode == "Nhiều" then
                        _G.BringMode = 350
                    end
                end)
            end
        end
    end)
    
    St:Slider({"Chọn Độ Cao Khi Cày", 1, 100, 5, 25, function(V)
        PosY = V
    end})
    
    St:Toggle({"Tự Động Bậc Haki",true,function(V)
        _G.Haki = V
    end})
    
    spawn(function()
        while wait(.1) do
            if _G.Haki then 
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    local args = {
                        [1] = "Buso"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end
    end)
    
    St:Toggle({"Tắt Thông Báo",false,function(V)
        _G.Remove_trct = V
    end})
    
    spawn(function()
        while wait() do
            if _G.Remove_trct then
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
            else
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
            end
        end
    end)
    
    local Blur = Instance.new("BlurEffect")
    Blur.Size = 100
    Blur.Enabled = false
    Blur.Parent = game.Lighting
    
    St:Toggle({"Fix Lag",false,function(V)
        Blur.Enabled = V
    end})
    
    St:Toggle({"white screen", false, function(V)
        _G.WhiteScreen = V
        game:GetService("RunService"):Set3dRenderingEnabled(not _G.WhiteScreen)
    end})
    
    spawn(function()
        while wait() do
            if _G.WhiteScreen then
                for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                    if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "DamageCounter" or 
                       v.Name == "SwordSlash" or v.Name == "SlashTail" or v.Name == "Sounds" then
                        v:Destroy() 
                    end
                end
            end
        end
    end)
    
        St:Toggle({"Ẩn Quái",false,function(V)
        _G.hadesinvis = V
        
        while wait() do
            if _G.hadesinvis then
                pcall(function()
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                        if v.ClassName == "MeshPart" then
                            v.Transparency = 1
                        end
                    end
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                        if v.Name == "Head" then
                            v.Transparency = 1
                        end
                    end
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                        if v.ClassName == "Accessory" then
                            v.Handle.Transparency = 1
                        end
                    end
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                        if v.ClassName == "Decal" then
                            v.Transparency = 1
                        end
                    end
                end)
            end
        end
    end})
    
    St:Toggle({"Giảm Đồ Hoạ", false, function(V)
        if V then
            cleanlag()
        end
    end})
    
    function cleanlag()
        spawn(function()
            for _, v in pairs(workspace:GetDescendants()) do
                if v.ClassName == 'Part' 
                or v.ClassName == 'SpawnLocation' 
                or v.ClassName == 'WedgePart' 
                or v.ClassName == 'Terrain' then
                    v.Material = 'Plastic'
                end
            end
            for _, v in pairs(game:GetDescendants()) do 
                if v:IsA('Texture') then
                    v.Texture = ''
                elseif v:IsA('BasePart') then
                    v.Material = 'Plastic'
                end 
            end 
            for _, v in pairs(Players.LocalPlayer.PlayerScripts:GetDescendants()) do
                local unwantedScripts = {
                    'RecordMode', 'Fireflies', 'Wind', 'WindShake', 'WindLines', 
                    'WaterBlur', 'WaterEffect', 'wave', 'WaterColorCorrection', 
                    'WaterCFrame', 'MirageFog', 'MobileButtonTransparency', 
                    'WeatherStuff', 'AnimateEntrance', 'Particle', 'AccessoryInvisible'
                }
                if table.find(unwantedScripts, v.Name) then
                    v:Destroy()
                end
            end
        end)
    end
    
    St:Section("Cài Đặt Cày Thông Thạo")
    
    St:Slider({"Chọn % Máu Quái", 10, 150, 5, 70, function(V)
        Kill_At = V
    end})
    
    St:Toggle({"Sài Chiêu Z",true,function(V)
        _G.SkillZ = V
    end})
     
    St:Toggle({"Sài Chiêu X",true,function(V)
        _G.SkillX = V
    end})
        
    St:Toggle({"Sài Chiêu C",true,function(V)
        _G.SkillC = V
    end})
        
    St:Toggle({"Sài Chiêu V",true,function(V)
        _G.SkillV = V
    end})
    ------------------------------------------------------------------------------------------------------------------------------------
    if World1 or World2 then
        M:Section("World")
    end
    
    if World1 then
        M:Toggle({"Tự Động Qua Sea 2",false,function(V)
            _G.SecondSea = V
            StopTween(_G.SecondSea)
        end})
    
        spawn(function()
            while wait() do 
                if _G.SecondSea then
                    pcall(function()
                        local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
                        if MyLevel >= 700 and World1 then
                            if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                                repeat topos(CFrame1) wait() until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.SecondSea == false
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                wait(0.5)
                                EquipWeapon("Key")
                                repeat topos(CFrame.new(1347.7124, 37.3751602, -1325.6488)) wait() until (Vector3.new(1347.7124, 37.3751602, -1325.6488)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.SecondSea == false
                                wait(0.5)
                            else
                                if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Ice Admiral" then
                                                if not v.Humanoid.Health <= 0 then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        OldCFrameSecond = v.HumanoidRootPart.CFrame
                                                        repeat task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.Head.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            v.HumanoidRootPart.CFrame = OldCFrameSecond
                                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until not _G.SecondSea or not v.Parent or v.Humanoid.Health <= 0
                                                    end
                                                else 
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                                end
                                            end
                                        end
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
    
    if World2 then
        M:Toggle({"Tự Động Qua Sea 3",false,function(V)
            _G.ThirdSea = V
            StopTween(_G.ThirdSea)
        end})
    
        spawn(function()
            while wait() do
                if _G.ThirdSea then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                            _G.Level = false
                            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                                topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                                wait(1.8)
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "rip_indra" then
                                            OldCFrameThird = v.HumanoidRootPart.CFrame
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CFrame = OldCFrameThird
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.ThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                    topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                end
                            end
                        end
                    end)
                end
            end
        end)
    
        M:Toggle({"Tự Động Đánh Nhà Máy",false,function(V)
            _G.Factory = V
            StopTween(_G.Factory)
        end})
    
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.Factory then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()         
                                        EquipWeapon(_G.SelectWeapon)           
                                        topos(CFrame.new(448.46756, 199.356781, -441.389252))                                  
                                    until v.Humanoid.Health <= 0 or _G.Factory == false
                                end
                            end
                        else
                            topos(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end)
            end
        end)
    end
    
    M:Section("Vũ Khí Cận Chiến")
    
    M:Toggle({"Tự Động Superhuman",false,function(V)
        _G.Superhuman = V
    end})
    
    spawn(function()
        pcall(function()
            while wait() do 
                if _G.Superhuman then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                        UnEquipWeapon("Combat")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end   
                    if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                        _G.SelectWeapon = "Superhuman"
                    end  
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                            _G.SelectWeapon = "Black Leg"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                            _G.SelectWeapon = "Electro"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                            _G.SelectWeapon = "Fishman Karate"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                            _G.SelectWeapon = "Dragon Claw"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            UnEquipWeapon("Black Leg")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            UnEquipWeapon("Black Leg")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            UnEquipWeapon("Electro")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            UnEquipWeapon("Electro")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            UnEquipWeapon("Fishman Karate")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            UnEquipWeapon("Fishman Karate")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            UnEquipWeapon("Dragon Claw")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            UnEquipWeapon("Dragon Claw")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end 
                    end
                end
            end
        end)
    end)
    
    M:Toggle({"Tự Động DeathStep",false,function(V)
        _G.DeathStep = V
    end})
    
    spawn(function()
        while wait() do wait()
            if _G.DeathStep then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                        _G.SelectWeapon = "Black Leg"
                    end 
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end
            end
        end
    end)
    
    M:Toggle({"Tự Động Sharkman Karate",false,function(V)
        _G.Sharkman = V
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Sharkman then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                            topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                        else 
                            Ms = "Tide Keeper"
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then   
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then    
                                        OldCFrameShark = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.Head.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CFrame = OldCFrameShark
                                            topos(v.HumanoidRootPart.CFrame*CFrame.new(2,20,2))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.Sharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                    end
                                end
                            else
                                topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                                wait(3)
                            end
                        end
                    else 
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    end
                end
            end
        end)
    end)
        
    M:Toggle({"Tự Động Electric Claw",false,function(V)
        _G.ElectricClaw = V
        StopTween(_G.ElectricClaw)
    end})
    
    spawn(function()
        pcall(function()
            while wait() do 
                if _G.ElectricClaw then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            _G.SelectWeapon = "Electric Claw"
                        end  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            _G.SelectWeapon = "Electric Claw"
                        end  
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                            _G.SelectWeapon = "Electro"
                        end 
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                end
                if _G.ElectricClaw then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            if _G.Level == false then
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(2)
                                repeat task.wait()
                                    topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                until not _G.ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            elseif _G.Level == true then
                                _G.Level = false
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(2)
                                repeat task.wait()
                                    topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                until not _G.ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                _G.SelectWeapon = "Electric Claw"
                                wait(.1)
                                _G.Level = true
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    M:Toggle({"Tự Động Dragon Talon",false,function(V)
        _G.DragonTalon = V
    end})
    
    spawn(function()
        while wait() do
            if _G.DragonTalon then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                        _G.SelectWeapon = "Dragon Claw"
                    end 
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                end
            end
        end
    end)
        
    M:Toggle({"Tự Động GodHuman",false,function(V)
        _G.God_Human = V
    end})
    
    spawn(function()
        while task.wait() do
            if _G.God_Human then
                pcall(function()
                    if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                            end
                        else
                        
                        end
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                            end
                        else
                        
                        end
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            end
                        else
                        
                        end
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                            end
                        else
                        
                        end
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true), "Bring") then
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                                end
                            end
                        else
                        
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                end)
            end
        end
    end)
    
    M:Section("Nguyên Liệu")
    
    if World2 then
    M:Toggle({"Tự Động Cày Vật liệu Phóng Xạ",false,function(V)
        Radioactive = V
        StopTween(Radioactive)
    end})
    
    local MaterialsPos1 = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312)
    spawn(function()
        while wait() do
            if Radioactive and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Factory Staff" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not Radioactive or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos1.Position).Magnitude > 3500 then
                    BTP(MaterialsPos1)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos1.Position).Magnitude < 3500 then
                    topos(MaterialsPos1)
                    end
                else
                    topos(MaterialsPos1)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)  
    
    M:Toggle({"Tự Động Cày Vật Chất Kì Dị",false,function(V)
        _G.Ectoplasm = V
        StopTween(_G.Ectoplasm)
    end})
    
    spawn(function()
        while wait() do
            if _G.Ectoplasm and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Ship Officer" or v.Name == "Ship Steward" or "Ship Engineer" or "Ship Deckhand" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        StartEctoplasmMagnet = true
                                        EctoplasmMon = v.HumanoidRootPart.CFrame
                                    until not _G.Ectoplasm or not v.Parent or v.Humanoid.Health <= 0
                                    StartEctoplasmMagnet = false
                                end
                            end
                        end
                    else
                        StartEctoplasmMagnet = false
                        topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                    end
                end)
            end
        end
    end)
        
    M:Toggle({"Tự Động Cày Giọt Huyền Bí",false,function(V)
        _G.Makori_gay = V
        StopTween(_G.Makori_gay)
    end})
    
    local MaterialsPos2 = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        spawn(function()
            while wait() do
                if _G.Makori_gay and World2 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Water Fighter" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false 
                                            StartMagnet = true
                                            _G.PosMon = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        until not _G.Makori_gay or not v.Parent or v.Humanoid.Health <= 0
                                        StartMagnet = false
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos2.Position).Magnitude > 3500 then
                        BTP(MaterialsPos2)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos2.Position).Magnitude < 3500 then
                        topos(MaterialsPos2)
                        end
                    else
                        topos(MaterialsPos2)
                    end
                        UnEquipWeapon(_G.SelectWeapon)
                        topos(CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
        
    if World1 or World2 then
    M:Toggle({"Tự Động Cày Quặng Dung Nham",false,function(V)
        _G.Umm = V
        StopTween(_G.Umm)
    end})
    
    local MaterialsPos3 = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)
    spawn(function()
        while wait() do
            if _G.Umm and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Military Spy" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not _G.Umm or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos3.Position).Magnitude > 3500 then
                    BTP(MaterialsPos3)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos3.Position).Magnitude < 3500 then
                    topos(MaterialsPos3)
                    end
                else
                    topos(MaterialsPos3)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
       
    local MaterialsPos4 = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)
        spawn(function()
            while wait() do
                if _G.Umm and World2 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Lava Pirate" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false 
                                            StartMagnet = true
                                            _G.PosMon = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        until not _G.Umm or not v.Parent or v.Humanoid.Health <= 0
                                        StartMagnet = false
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos4.Position).Magnitude > 3500 then
                        BTP(MaterialsPos4)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos4.Position).Magnitude < 3500 then
                        topos(MaterialsPos4)
                        end
                    else
                        topos(MaterialsPos4)
                    end
                        UnEquipWeapon(_G.SelectWeapon)
                        topos(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
        
    if World1 then  
    M:Toggle({"Tự Động Cày Đôi Cánh Thiên Thần",false,function(V)
        _G.Wing = V
        StopTween(_G.Wing)
    end})
    
    local MaterialsPos5 = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375)
       spawn(function()
            while wait() do
                if _G.Wing and World1 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Royal Soldier" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false 
                                            StartMagnet = true
                                            _G.PosMon = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        until not _G.Wing or not v.Parent or v.Humanoid.Health <= 0
                                        StartMagnet = false
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos5.Position).Magnitude > 3500 then
                        BTP(MaterialsPos5)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos5.Position).Magnitude < 3500 then
                        topos(MaterialsPos5)
                        end
                    else
                        topos(MaterialsPos5)
                    end
                        UnEquipWeapon(_G.SelectWeapon)
                        topos(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
    
    if World1 or World2 or World3 then   
    M:Toggle({"Tự Động Cày Da",false,function(V)
        _G.Leather = V
        StopTween(_G.Leather)
    end})
    
    local MaterialsPos6 = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)
    spawn(function()
        while wait() do
            if _G.Leather and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not _G.Leather or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos6.Position).Magnitude > 3500 then
                    BTP(MaterialsPos6)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos6.Position).Magnitude < 3500 then
                    topos(MaterialsPos6)
                    end
                else
                    topos(MaterialsPos6)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    local MaterialsPos7 = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
    spawn(function()
        while wait() do
            if _G.Leather and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Marine Captain" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not _G.Leather or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos7.Position).Magnitude > 3500 then
                    BTP(MaterialsPos7)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos7.Position).Magnitude < 3500 then
                    topos(MaterialsPos7)
                    end
                else
                    topos(MaterialsPos7)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    local MaterialsPos8 = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
    spawn(function()
        while wait() do
            if _G.Leather and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Jungle Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not _G.Leather or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos8.Position).Magnitude > 3500 then
                    BTP(MaterialsPos8)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos8.Position).Magnitude < 3500 then
                    topos(MaterialsPos8)
                    end
                else
                    topos(MaterialsPos8)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    end
      
    if World1 or world2 or World3 then    
    M:Toggle({"Tự Động Cày Sắt Vụn",false,function(V)
        Scrap = V
        StopTween(Scrap)
    end})
    
    local MaterialsPos9 = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)
    spawn(function()
        while wait() do
            if Scrap and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Brute" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not Scrap or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos9.Position).Magnitude > 3500 then
                    BTP(MaterialsPos9)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos9.Position).Magnitude < 3500 then
                    topos(MaterialsPos9)
                    end
                else
                    topos(MaterialsPos9)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    local MaterialsPos10 = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)
    spawn(function()
        while wait() do
            if Scrap and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mercenary" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not Scrap or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos10.Position).Magnitude > 3500 then
                    BTP(MaterialsPos10)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos10.Position).Magnitude < 3500 then
                    topos(MaterialsPos10)
                    end
                else
                    topos(MaterialsPos10)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    local MaterialsPos11 = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)
        spawn(function()
            while wait() do
                if Scrap and World3 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Pirate Millionaire" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false 
                                            StartMagnet = true
                                            _G.PosMon = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        until not Scrap or not v.Parent or v.Humanoid.Health <= 0
                                        StartMagnet = false
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos11.Position).Magnitude > 3500 then
                        BTP(MaterialsPos11)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos11.Position).Magnitude < 3500 then
                        topos(MaterialsPos11)
                        end
                    else
                        topos(MaterialsPos11)
                    end
                        UnEquipWeapon(_G.SelectWeapon)
                        topos(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
        
    if World3 then  
    M:Toggle({"Tự Động Cày Ca Cao",false,function(V)
        Cocoafarm = V
        StopTween(Cocoafarm)
    end})
    
    local MaterialsPos12 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)
    spawn(function()
        while wait() do
            if Cocoafarm and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Chocolate Bar Battler" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not Cocoafarm or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos12.Position).Magnitude > 3500 then
                    BTP(MaterialsPos12)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos12.Position).Magnitude < 3500 then
                    topos(MaterialsPos12)
                    end
                else
                    topos(MaterialsPos12)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
     
    M:Toggle({"Tự Động Cày Vảy Rồng",false,function(V)
        Dragon_Scale = V
        StopTween(Dragon_Scale)
    end})
    
    local MaterialsPos13 = CFrame.new(6752, 565, 315)
    spawn(function()
        while wait() do
            if Dragon_Scale and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dragon Crew Archer" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not Dragon_Scale or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos13.Position).Magnitude > 3500 then
                    BTP(MaterialsPos13)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos13.Position).Magnitude < 3500 then
                    topos(MaterialsPos13)
                    end
                else
                    topos(MaterialsPos13)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(6752, 565, 315))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
          
    M:Toggle({"Tự Động Cày Thuốc Súng",false,function(V)
        Gunpowder = V
        StopTween(Gunpowder)
    end})
    
    local MaterialsPos14 = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)
    spawn(function()
        while wait() do
            if Gunpowder and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Pistol Billionaire" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not Gunpowder or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos14.Position).Magnitude > 3500 then
                    BTP(MaterialsPos14)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos14.Position).Magnitude < 3500 then
                    topos(MaterialsPos14)
                    end
                else
                    topos(MaterialsPos14)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
     
    M:Toggle({"Tự Động Cày Đuôi Cá",false,function(V)
        Fish = V
        StopTween(Fish)
    end})
    
    local MaterialsPos15 = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)
    spawn(function()
        while wait() do
            if Fish and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fishman Captain" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not Fish or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos15.Position).Magnitude > 3500 then
                    BTP(MaterialsPos15)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos15.Position).Magnitude < 3500 then
                    topos(MaterialsPos15)
                    end
                else
                    topos(MaterialsPos15)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    M:Toggle({"Tự Động Cày Sừng Tê Giác",false,function(V)
        MiniHee = V
        StopTween(MiniHee)
    end})
    
    local MaterialsPos16 = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)
    spawn(function()
            while wait() do
                if MiniHee and World3 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Mythological Pirate" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false 
                                            StartMagnet = true
                                            _G.PosMon = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        until not MiniHee or not v.Parent or v.Humanoid.Health <= 0
                                        StartMagnet = false
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos16.Position).Magnitude > 3500 then
                        BTP(MaterialsPos16)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MaterialsPos16.Position).Magnitude < 3500 then
                        topos(MaterialsPos16)
                        end
                    else
                        topos(MaterialsPos16)
                    end
                        UnEquipWeapon(_G.SelectWeapon)
                        topos(CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if _G.StardHop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
    
    if World3 then
    M:Section("Nhiệm Vụ Tập Kích")
    
    M:Toggle({"Tự Động Phoenix Raid", false, function(V)
        _G.AdvanceDungeon = V
        StopTween(_G.AdvanceDungeon)
    end})
    
    spawn(function()
        while wait() do
            if _G.AdvanceDungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal")
                                end
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                            if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal")
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    M:Toggle({"Tự Động Dough Raid",false,function(V)
        _G.DoughKingRaid = V
        StopTween(_G.DoughKingRaid)
    end})
        
    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.DoughKingRaid and StartCakeStartMagnet and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = POSCAKE
                        v.HumanoidRootPart.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end)
        end)
    end)
    
    spawn(function()
        while wait() do
            if _G.DoughKingRaid then
                pcall(function()
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                        if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"), "Where") then
                            game.StarterGui:SetCore("SendNotification", {
                                Title = "Notification",
                                Text = "Not Have Enough Material",
                                Icon = "http://www.roblox.com/asset/?id=",
                                Duration = 2.5
                            })
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                        end
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
                        if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), "Do you want to open the portal now?") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        else
                            if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                        repeat
                                            wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            StartCakeStartMagnet = true
                                            POSCAKE = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        until _G.DoughKingRaid == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            else
                                StartCakeStartMagnet = false
                                topos(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Dough King" then
                                    repeat
                                        wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until _G.DoughKingRaid == false or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            topos(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                        end
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
                        local args = { [1] = "CakeScientist", [2] = "Check" }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    else
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                until _G.DoughKingRaid == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
                                            end
                                        end
                                    end
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                    end
                                end
                            end
                        else
                            wait(0.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        end
                    end
                end)
            end
        end
    end)
    end
        
    if World1 then
    M:Paragraph({
        Title = "Sea 1",
        Desc = "World 1"
    })
        
    M:Section("Râu Xám")
    
    M:Toggle({"Tự Động Đánh Râu Xám", false,function(V)
         _G.Greybeard = V
        StopTween(_G.Greybeard)
    end})
    
    M:Toggle({"Tự Động Râu Xám Hop", false,function(V)
         _G.Greybeardhop = V
    end})
    
    local GayMakPos = CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375)
    spawn(function()
        while wait() do
            if  _G.Greybeard and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Greybeard" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Greybeard or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GayMakPos.Position).Magnitude > 3500 then
                    BTP(GayMakPos)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GayMakPos.Position).Magnitude < 3500 then
                    topos(GayMakPos)
                    end
                else
                    topos(GayMakPos)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Greybeardhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    M:Section("Saber")
        
    M:Toggle({"Tự Động Lấy Saber",false,function(V)
        _G.Saber = V
        StopTween(_G.Saber)
    end})
        
    M:Toggle({"Tự Động Saber Hop",false,function(V)
        _G.SaberHop = V
    end})
                
    spawn(function()
        while task.wait() do
            if _G.Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                wait(1)
                            else
                                topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                            end
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                                    topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                                  else
                                  topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                    wait(0.5)
                                    EquipWeapon("Cup")
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                    wait(0)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                                else
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                        topos(CFrame.new(-2967.59521, 4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Mob Leader" then
                                                   if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until v.Humanoid.Health <= 0 or not _G.Saber
                                                     end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                     end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                        wait(0.5)
                                        EquipWeapon("Relic")
                                        wait(0.5)
                                        topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Saber Expert" then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                        until v.Humanoid.Health <= 0 or not _G.Saber
                                        if v.Humanoid.Health <= 0 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    M:Section("Gậy Lôi")
    
    M:Toggle({"Tự Động Lấy Gậy Lôi Thể v1", false,function(V)
         _G.pole = V
        StopTween( _G.pole)
    end})
    
    M:Toggle({"Tự Động Gậy Lôi Thể v1 Hop", false,function(V)
         _G.polehop = V
    end})
         
    local PolePos = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)
        spawn(function()
            while wait() do
                if  _G.pole and World1 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Thunder God" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not  _G.pole or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PolePos.Position).Magnitude > 3500 then
                        BTP(PolePos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PolePos.Position).Magnitude < 3500 then
                        topos(PolePos)
                        end
                    else
                        topos(TridentPos)
                    end
                        UnEquipWeapon(_G.SelectWeapon)
                        topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if  _G.polehop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
        
    if World2 then
    M:Paragraph({
        Title = "Sea 2",
        Desc = "World 2"
    })
        
    M:Section("Kiếm Huyền Thoại")
    
    M:Toggle({"Mua Kiếm Huyền Thoại",false,function(V)
        _G.BuyLegendarySword = V
    end})
    
    spawn(function()
        while wait() do
            if _G.BuyLegendarySword then
                pcall(function()
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "3"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    if _G.BuyLegendarySword_Hop and _G.BuyLegendarySword and World2 then
                        wait(10)
                        Hop()
                    end
                end)
            end 
        end
    end)
    
    M:Toggle({"Tự Động Kiếm Huyền Thoại Hop",false,function(V)
        _G.BuyLegendarySword_Hop = V
    end})
    
    M:Section("Bartlio")
    
    M:Toggle({"Tự Động Làm Nhiệm Vụ Bartlio",false,function(V)
        _G.Bartilo = V
    end})
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Bartilo then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                            if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                Ms = "Swan Pirate"
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        pcall(function()
                                            repeat task.wait()
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                v.HumanoidRootPart.Transparency = 1
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * Pos)													
                                                PosMonBarto =  v.HumanoidRootPart.CFrame
                                                AutoBartiloBring = true
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.Bartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            AutoBartiloBring = false
                                        end)
                                    end
                                end
                            else
                                repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                            end
                        else
                            repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                        end 
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                            Ms = "Jeremy"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.Bartilo == false
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                            repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                            wait(1)
                            repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                            wait(2)
                        else
                            repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                        repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.Bartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                    end
                end 
            end
        end)
    end)
        
    M:Section("Kính Thiên Nga")
    
    M:Toggle({"Tự Động Lấy Kính Thiên Nga",false,function(V)
        _G.FarmSwanGlasses = V
        StopTween(_G.FarmSwanGlasses)
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.FarmSwanGlasses then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Don Swan" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    end)
                                until _G.FarmSwanGlasses == false or v.Humanoid.Health <= 0
                            end
                        end
                    else 
                        repeat task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) 
                        until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.FarmSwanGlasses == false
                    end
                end
            end
        end)
    end)
    
    M:Toggle({"Tự Động Kính Thiên Nga Hop",false,function(V)
        _G.FarmSwanGlasses_Hop = V
    end})
    
    M:Toggle({"Tự Động Nâng Tộc V2",false,function(V)
        _G.EvoRace = V
        StopTween(_G.EvoRace)
    end})
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.EvoRace then
                    if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                            topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                            if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.3)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                            pcall(function()
                                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                    topos(game:GetService("Workspace").Flower1.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                    topos(game:GetService("Workspace").Flower2.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Zombie" then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    PosMonEvo = v.HumanoidRootPart.CFrame
                                                    StartEvoMagnet = true
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.EvoRace == false
                                                StartEvoMagnet = false
                                            end
                                        end
                                    else
                                        StartEvoMagnet = false
                                        topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                    end
                                end
                            end)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                        end
                    end
                end
            end
        end)
    end)
        
    M:Section("Nguyên Thạch Bóng Tối")
    
    M:Toggle({"Tự Động Triệu Hồi Và Đánh Râu Đen",false,function(V)
        _G.AutoDarkbeard = V
        StopTween(_G.AutoDarkbeard)
    end})
        
    spawn(function()
        while wait() do
            if _G.AutoDarkbeard then
                local g = game.Player.LocalPlayer
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                    EquipWeapon("Fist of Darkness")
                    topos(CFrame.new(3777.58618, 14.8764334, -3498.81909, 0.13158533, 1.16175372e-08, -0.991304874, -9.53944035e-10, 1, 1.15928129e-08, 0.991304874, -5.79794768e-10, 0.13158533))
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Darkbeard" then
                            repeat wait(0.1)
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            until not v.Name == "Darkbeard" and not v.Parent
                            FastAttack = false
                        end
                    end
                end
            end
        end
    end)
        
    M:Section("Rengoku")
    
    M:Toggle({"Tự Động Lấy Rengoku",false,function(V)
        _G.Rengoku = V
        StopTween(_G.Rengoku)
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Rengoku then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    RengokuMon = v.HumanoidRootPart.CFrame
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    StartRengokuMagnet = true
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Rengoku == false or not v.Parent or v.Humanoid.Health <= 0
                                StartRengokuMagnet = false
                            end
                        end
                    else
                        StartRengokuMagnet = false
                        topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)
        
    M:Section("Trident")
    
    M:Toggle({"Tự Động Lấy Dragon Trident", false,function(V)
         _G.Dragon_Trident = V
        StopTween(_G.Dragon_Trident)
    end})
    
    M:Toggle({"Tự Động Lấy Dragon Trident Hop", false,function(V)
         _G.Dragon_Trident_Hop = V
    end})
        
    local TridentPos = CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125)
        spawn(function()
            while wait() do
                if  _G.Dragon_Trident and World2 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Tide Keeper" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not  _G.Dragon_Trident or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude > 3500 then
                        BTP(TridentPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude < 3500 then
                        topos(TridentPos)
                        end
                    else
                        topos(TridentPos)
                    end
                        UnEquipWeapon(_G.SelectWeapon)
                        topos(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if  _G.Dragon_Trident_Hop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
        
    if World3 then
    M:Paragraph({
        Title = "Sea 3",
        Desc = "World 3"
    })
       
    M:Section("Rip Indra")
    
    M:Toggle({"Tự Động Đánh Rip_Indra True",false,function(V)
        _G.DarkDagger = V
        StopTween(_G.DarkDagger)
    end})
        
    local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.DarkDagger then
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    end)
                                until _G.DarkDagger == false or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude > 3500 then
                    BTP(AdminPos)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude < 3500 then
                    topos(AdminPos)
                    end
                else
                    topos(AdminPos)
                end
                        UnEquipWeapon(_G.SelectWeapon)
                        topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                    end
                end
            end
        end)
    end)
    
    M:Toggle({"Tự Động Rip_Indra True Hop",false,function(V)
        _G.DarkDagger_Hop = V
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if (_G.DarkDagger_Hop and _G.DarkDagger) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                    Hop()
                end
            end
        end)
    end)
        
    M:Toggle({"Tự Động Bậc Màu Haki",false,function(V)
        Open_Color_Haki = V
        StopTween(Open_Color_Haki)
    end})
    
    spawn(function()
        while wait(.3) do
            pcall(function()
                if Open_Color_Haki then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
                    wait(0.5)
                    repeat topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() 
                    until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
                    wait(0.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                    wait(0.5)
                    repeat topos(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() 
                    until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
                    wait(0.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
                    wait(0.5)
                    repeat topos(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() 
                    until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
                    wait(0.5)
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                    wait(3)
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                end
            end) 
        end
    end)
        
    function EquipAllWeapon()
        pcall(function()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                    wait(1)
                end
            end
        end)
    end
    
    M:Section("Yama")
    
    M:Toggle({"Tự Động Lấy Yama",false,function(V)
        _G.Yama = V
        StopTween(_G.Yama)
    end})
    
    spawn(function()
        while wait() do
            if _G.Yama then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    repeat wait(.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.Yama
                end
            end
        end
    end)
    
    M:Section("Mũ Ngự Lâm")
    
    M:Toggle({"Tự Động Lấy Mũ Ngự Lâm",false,function(V)
        _G.MusketeerHat = V
        StopTween(_G.MusketeerHat)
    end})
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.MusketeerHat then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Forest Pirate" then
                                        repeat task.wait()
                                            pcall(function()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                MusketeerHatMon = v.HumanoidRootPart.CFrame
                                                StartMagnetMusketeerhat = true
                                            end)
                                        until _G.MusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnetMusketeerhat = false
                                    end
                                end
                            else
                                StartMagnetMusketeerhat = false
                                topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                            end
                        else
                            topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                            if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Captain Elephant" then
                                        OldCFrameElephant = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            pcall(function()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.CFrame = OldCFrameElephant
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            end)
                                        until _G.MusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                            end
                        else
                            topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                            if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                        topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                    end
                end
            end
        end)
    end)
    
    M:Section("Song Móc")
    
    M:Toggle({"Tự Động Lấy Song Móc", false,function(V)
         _G.TwinHook = V
        StopTween( _G.TwinHook)
    end})
    
    M:Toggle({"Tự Động Song Móc Hop", false,function(V)
         _G.TwinHook_Hop = V
    end})
    
    local ElephantPos = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625)
    spawn(function()
        while wait() do
            if  _G.TwinHook and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.TwinHook or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude > 3500 then
                    BTP(ElephantPos)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude < 3500 then
                    topos(ElephantPos)
                    end
                else
                    topos(ElephantPos)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.TwinHook_Hop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    M:Section("Haki")
    
    M:Toggle({"Tự Động Lấy Haki 7 Màu",false,function(V)
        _G.Rainbow_Haki = V
        StopTween(_G.Rainbow_Haki)
    end})
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Rainbow_Haki then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Stone" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Island Empress" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Kilo Admiral" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                        end
                    else
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    end
                end
            end
        end)
    end)
    
    M:Toggle({"Tự Động Lấy Haki Quan Sát v2",false,function(V)
        _G.Observationv2 = V
        StopTween(_G.Observationv2)
    end})
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Observationv2 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 3 then
                        _G.MusketeerHat = false
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and  game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                            repeat 
                                topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                                wait() 
                            until not _G.Observationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                            repeat 
                                topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
                                wait() 
                            until not _G.Observationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                        else
                            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                                if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                    v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
                                    wait()
                                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                                    wait()
                                end
                            end   
                        end
                    else
                        _G.MusketeerHat = true
                    end
                end
            end)
        end
    end)
    
    M:Section("Carvander")
    
    M:Toggle({"Tự Động Lấy Cavander", false,function(V)
         _G.Carvender = V
        StopTween( _G.Carvender)
    end})
    
    M:Toggle({"Tự Động Carvander Hop", false,function(V)
         _G.Carvenderhop = V
    end})
    
    local CavandisPos = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875)
    spawn(function()
        while wait() do
            if  _G.Carvender and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Carvender or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CavandisPos.Position).Magnitude > 3500 then
                    BTP(CavandisPos)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CavandisPos.Position).Magnitude < 3500 then
                    topos(CavandisPos)
                    end
                else
                    topos(CavandisPos)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Cavanderhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
       
    M:Section("Tushita")
    
    M:Toggle({"Tự Động Lấy Tushita", false,function(V)
        _G.tushita = V
        StopTween( _G.tushita)
    end})
        
    M:Toggle({"Tự Động Tushita Hop", false,function(V)
         _G.tushitahop = V
    end})
    
    local TushitaPos = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
    spawn(function()
        while wait() do
            if  _G.tushita and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Longma" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.tushita or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TushitaPos.Position).Magnitude > 3500 then
                    BTP(TushitaPos)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TushitaPos.Position).Magnitude < 3500 then
                    topos(TushitaPos)
                    end
                else
                    topos(TushitaPos)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.tushitahop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    M:Toggle({"Tự Động Cấm Đuốt",false,function(V)
        _G.HolyTorch = V
        StopTween(_G.HolyTorch)
    end})
        
    spawn(function()
        while wait(.5) do
            pcall(function()
                if _G.HolyTorch then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                        repeat wait(.2)
                            EquipWeapon("Holy Torch")
                            topos(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                        until (Vector3.new(-10752.4434, 415.261749, -9367.43848)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                        wait(2)
                        repeat wait(.2)
                            EquipWeapon("Holy Torch")
                            topos(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229))
                        until (Vector3.new(-11671.6289, 333.78125, -9474.31934)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                        wait(2)
                        repeat wait(.2)
                            EquipWeapon("Holy Torch")
                            topos(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642))
                        until (Vector3.new(-12133.1406, 521.507446, -10654.292)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                        wait(2)
                        repeat wait(.2)
                            EquipWeapon("Holy Torch")
                            topos(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228))
                        until (Vector3.new(-13336.127, 484.521179, -6985.31689)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                        wait(2)
                        EquipWeapon("Holy Torch")
                        repeat wait(.2)
                            topos(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108))
                        until (Vector3.new(-13487.623, 336.436188, -7924.53857)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                        wait(2)
                        Com()
                        wait(20)
                    elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") and not game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                       local Distance = (Vector3.new(5153.18799, 172.82933, 909.815918) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if Distance > 5000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
                            end                 
                       topos(CFrame.new(5153.18799, 172.82933, 909.815918))
                        wait(3)
                    end
                end
            end)
        end
    end)
    
    M:Section("Lưỡi Hái Bóng Tối")
    
    M:Toggle({"Tự Động Lấy Lưỡi Hái Bóng Tối",false,function(V)
        _G.FarmBossHallow = V
        StopTween(_G.FarmBossHallow)
    end})
    
    M:Toggle({"Tự Động Lưỡi Hái Bóng Tối Hop",false,function(V)
        _G.FarmBossHallowHop = V
    end})
        
        spawn(function()
            while wait() do
                if _G.FarmBossHallow then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name , "Soul Reaper") then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame*Pos)
                                        v.HumanoidRootPart.Transparency = 1
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until v.Humanoid.Health <= 0 or _G.FarmBossHallow == false
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                            repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                            EquipWeapon("Hallow Essence")
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if _G.FarmBossHallowHop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
        
    if World2 or World3 then
    M:Section("Soul Guitar")
        
    M:Toggle({"Tự Động Lấy Soul Guitar ( Test )",false,function(V)
        _G.Guitar = V    
        StopTween(_G.Guitar)
    end})
    
    spawn(function()
            while wait() do
                pcall(function()
                    if _G.Guitar then
                        if GetWeaponInventory("Soul Guitar") == false then
                            if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
                                if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                                else
                                    if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                        if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
                                            Quest2 = true
                                            repeat wait() topos(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Guitar
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                            wait(1)
                                        elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                                Quest4 = true
                                                repeat wait() topos(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Guitar
                                                wait(1)
                                                topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                                wait(1)
                                                topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                wait(1)
                                                topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                                wait(1)
                                                topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                                wait(1)
                                                topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                            else
                                                Quest3 = true
                                                --Not Work Yet
                                            end
                                        else
                                            if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                                local args = {
                                                    [1] = "GuitarPuzzleProgress",
                                                    [2] = "Ghost"
                                                }
    
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
                                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                        if v.Name == "Living Zombie" then
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                            v.HumanoidRootPart.Transparency = 1
                                                            v.Humanoid.JumpPower = 0
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
                                                            topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                                        end
                                                    end
                                                end
                                            else
                                                topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                            end
                                        end
                                    else    
                                        if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
                                            print("Go to Grave")
                                            topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                        elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                            print("Wait Next Night")
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
        end
        else
    if _G.soulGuitarhop then
    hop()
    end
                            end
                        end
                end)
            end
    end)
    
    M:Toggle({"Tự Động Cày Nguyên Liệu Lấy Soul Guitar", false, function(V)
        Auto_Quest_Soul_Guitar = V
        if V == false then
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            StopTween(Auto_Quest_Soul_Guitar)
        end
    end})
    
    LPH_NO_VIRTUALIZE(function()
        fask.spawn(function()
            while wait() do
                if setscriptable then
                    setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                end
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            end
        end)
    end)()
    
    function InMyNetWork(object)
        if isnetworkowner then
            return isnetworkowner(object)
        else
            if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
                return true
            end
            return false
        end
    end
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if StartMagnet then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                            if InMyNetWork(v.HumanoidRootPart) then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.Humanoid:ChangeState(14)
                                v.Humanoid:ChangeState(11)
                            end
                        end
                    end
                end
            end)
        end)
    end)
    
    LPH_JIT_MAX(function()
        fask.spawn(function()
            while wait() do
                if StartSoulGuitarMagnt then 
                    pcall(function() 
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Living Zombie" then 
                                v.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
                                v.Head.CanCollide = false
                                v.Humanoid.Sit = false
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                if v.Humanoid:FindFirstChild('Animator') then
                                    v.Humanoid:FindFirstChild('Animator'):Destroy() 
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end    
                    end)
                end
            end
        end)
    end)()
    
    fask.spawn(function()
        while wait() do
            pcall(function()
                if GetWeaponInventory("Soul Guitar") == false then
                    if Auto_Quest_Soul_Guitar then
                        if GetMaterial("Bones") >= 500 and GetMaterial("Ectoplasm") >= 250 and GetMaterial("Dark Fragment") >= 1 then
                            if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
                                if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                    local Remotes = game.ReplicatedStorage:WaitForChild("Remotes");
                                    local __CommF = Remotes:WaitForChild("CommF_");
                                    local GuitarProgress = __CommF:InvokeServer("GuitarPuzzleProgress", "Check");
                                    if not GuitarProgress then 
                                        local gravestoneEvent = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
                                        if gravestoneEvent == true then
                                            __CommF:InvokeServer("gravestoneEvent", 2, true);
                                        else 
                                            if Auto_Quest_Soul_Guitar_Hop then
                                                ServerFunc:NormalTeleport()
                                            end
                                        end;
                                    end
                                    if GuitarProgress then 
                                        local Swamp = GuitarProgress.Swamp;
                                        local Gravestones = GuitarProgress.Gravestones;
                                        local Ghost = GuitarProgress.Ghost;
                                        local Trophies = GuitarProgress.Trophies;
                                        local Pipes = GuitarProgress.Pipes;
                                        local CraftedOnce = GuitarProgress.CraftedOnce;
                                        if Swamp and Gravestones and Ghost and Trophies and Pipes then 
                                            Auto_Quest_Soul_Guitar = false
                                        end
                                        if not Swamp then 
                                            repeat wait() 
                                                topos(CFrame.new(-10141.462890625, 138.6524658203125, 5935.06298828125) * CFrame.new(0,30,0))
                                            until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-10141.462890625, 138.6524658203125, 5935.06298828125)) <= 100
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == "Living Zombie" then
                                                    if v:FindFirstChild('Humanoid') then 
                                                        if v:FindFirstChild('HumanoidRootPart') then 
                                                            if game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) <= 2000 then 
                                                                repeat wait() 
                                                                    EquipWeapon(_G.SelectWeapon)
                                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                                    v.HumanoidRootPart.Transparency = 1
                                                                    v.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
                                                                    StartSoulGuitarMagnt = true
                                                                    v.Humanoid.JumpPower = 0
                                                                    v.Humanoid.WalkSpeed = 0
                                                                    v.HumanoidRootPart.CanCollide = false
                                                                    v.Humanoid:ChangeState(11)
                                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,15))
                                                                until not v.Parent or v.Humanoid.Health <= 0 or not  v:FindFirstChild('HumanoidRootPart') or not v:FindFirstChild('Humanoid') or not Auto_Quest_Soul_Guitar
                                                                StartSoulGuitarMagnt = false
                                                            end
                                                        end
                                                    end
                                                end
                                            end   
                                        end
                                        wait(1)
                                        if Swamp and not Gravestones then 
                                            __CommF:InvokeServer("GuitarPuzzleProgress", "Gravestones");
                                        end
                                        wait(1)
                                        if Swamp and  Gravestones and not Ghost then 
                                            __CommF:InvokeServer("GuitarPuzzleProgress", "Ghost");
                                        end 
                                        wait(1)
                                        if  Swamp and  Gravestones and Ghost and not Trophies then 
                                            __CommF:InvokeServer("GuitarPuzzleProgress", "Trophies");
                                        end
                                        wait(1)
                                        if  Swamp and  Gravestones and Ghost and Trophies and not Pipes then 
                                            __CommF:InvokeServer("GuitarPuzzleProgress", "Pipes");
                                        end
                                    end
                                else
                                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
                                        print("Go to Grave")
                                        topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                    elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                        print("Wait Next Night")
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                    end
                                end
                            else
                                topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                            end
                        else
                            if GetMaterial("Ectoplasm") <= 250 then
                                if World2 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" or v.Name == "Arctic Warrior" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat wait()
                                                        StartMagnet = true
                                                        EquipWeapon(_G.SelectWeapon)
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                                    until not Auto_Quest_Soul_Guitar or not v.Parent or v.Humanoid.Health <= 0
                                                    StartMagnet = false
                                                    NeedAttacking = false
                                                end
                                            end
                                        end
                                    else
                                        StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                end
                            elseif GetMaterial("Bones") <= 500 then
                                if World3 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat wait()
                                                        StartMagnet = true
                                                        EquipWeapon(_G.SelectWeapon)
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                                    until not Auto_Quest_Soul_Guitar or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                                                    StartMagnet = false
                                                    NeedAttacking = false
                                                end
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
        
    M:Toggle({"Tự Động Soul Guitar + Hop",false,function(V)
        _G.soulGuitarhop = V    
    end})
    end
        
    if World3 then
    M:Section("Buddy")
        
    M:Toggle({"Tự Động Lấy Buddy",false,function(V)
        _G.BudySword = V
        StopTween(_G.BudySword)
    end})
    
    M:Toggle({"Tự Động Buddy Hop",false,function(V)
        _G.BudySwordHop = V
    end})
    
    local BigMomPos = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875)
    spawn(function()
        while wait() do
            if _G.BudySword and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.BudySword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude > 3500 then
                    BTP(BigMomPos)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude < 3500 then
                    topos(BigMomPos)
                    end
                else
                    topos(BigMomPos)
                end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.BudySwordHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    M:Section("Song Kiếm Nguyền Rủa")
    
    M:Toggle({"Tự Động Hoàn Thành Nhiệm Vụ Tushita", false, function(V)
        Tushita_Quest = V
        if V == false then
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            StopTween(Tushita_Quest)
        end
    end})
    
    spawn(function()
        while fask.wait() do
            pcall(function()
                if Tushita_Quest then
                    if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
                        wait(.7)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                        wait(.3)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                        warn("กำลังเปิดเปิดประตู...")
                    else
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then
                            if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -3 then
                                repeat wait() topos(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875)) until (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                                if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(.7)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                    wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                                end
                                wait(1)
                                repeat wait() topos(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125)) until (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                                if (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(.7)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                    wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                                end
                                wait(1)
                                repeat wait() topos(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625)) until (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                                if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(.7)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                    wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                                end
                                fask.wait(1)
                            elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -4 then
                                if game:GetService("Workspace").Enemies:FindFirstChildOfClass("Model") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-5463.74560546875, 313.7947082519531, -2844.50390625).Position).Magnitude <= 1000 then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat fask.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false 
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    NeedAttacking = true 
                                                    PosTHQuest = v.HumanoidRootPart.CFrame
                                                    MagnetTHQuest = true
                                                    NameTH = v.Name
                                                until not Tushita_Quest or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 2
                                                NeedAttacking = false
                                            end
                                        else
                                            topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                                        end
                                    end
                                else
                                    topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                                end
                            elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -5 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cake Queen" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat fask.wait()
                                                    EquipWeapon(_G.SelectWeapon)                                                
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false 
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    NeedAttacking = true
                                                until not Tushita_Quest or not v.Parent or v.Humanoid.Health <= 0 or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
                                                NeedAttacking = false
                                            end
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") and game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").Humanoid.Health > 0 then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                else
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HeavenlyDimension.Spawn.Position).Magnitude <= 1000 then
                                        for i,v in pairs(game:GetService("Workspace").Map.HeavenlyDimension.Exit:GetChildren()) do
                                            Ex = i
                                        end
                                        if Ex == 2 then
                                            repeat fask.wait()
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame
                                            until not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
                                        end
                                        NeedAttacking = true
                                        repeat fask.wait()
                                            repeat fask.wait() 
                                                topos(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625)) 
                                                for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
    
                                            until (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                            wait(2)
                                            _G.DoneT1 = true
                                        until not Tushita_Quest or _G.DoneT1
                                        repeat fask.wait()
                                            repeat fask.wait()
                                                topos(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875)) 
                                                for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                            wait(2)
                                            _G.DoneT2 = true
                                        until _G.DoneT2 or Tushita_Quest == false
                                        repeat wait()
                                            repeat fask.wait() 
                                                topos(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375)) 
                                                for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                            wait(2)
                                            _G.DoneT3 = true
                                        until _G.DoneT3 or Tushita_Quest == false
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.32185834e-08, 0.99301964, -8.73070718e-08, 1, -2.30819008e-08, -0.99301964, -8.3975138e-08, 0.11794927).Position).Magnitude <= 300 then
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                    repeat fask.wait()
                                                        EquipWeapon(_G.SelectWeapon)        
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Head.CanCollide = false 
                                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                                        NeedAttacking = true
                                                        PosTHQuest = v.HumanoidRootPart.CFrame
                                                        MagnetTHQuest = true
                                                        NameTH = v.Name
                                                    until not Tushita_Quest or v.Humanoid.Health <= 0 or not v.Parent
                                                    NeedAttacking = false
                                                end
                                            else
                                                MagnetTHQuest = false
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    M:Toggle({"Tự Động Hoàn Thành Nhiệm Vụ Yama", false, function(V)
        Yama_Quest = V
        if V == false then
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            StopTween(Yama_Quest)
        end
    end})
    
    PosMsList = {
        ["Pirate Millionaire"] = CFrame.new(-426, 176, 5558),
        ["Pistol Billionaire"] = CFrame.new(-83, 127, 6097),
        ["Dragon Crew Warrior"] = CFrame.new(6320, 52, -1282),
        ["Dragon Crew Archer"] = CFrame.new(6625, 378, 244),
        ["Female Islander"] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
        ["Giant Islander"] = CFrame.new(4902, 670, 39), 
        ["Marine Commodore"] = CFrame.new(2401, 123, -7589),
        ["Marine Rear Admiral"] = CFrame.new(3588, 229, -7085),
        ["Fishman Raider"] = CFrame.new(-10941, 332, -8760),
        ["Fishman Captain"] = CFrame.new(-11035, 332, -9087),
        ["Forest Pirate"] = CFrame.new(-13446, 413, -7760),
        ["Mythological Pirate"] = CFrame.new(-13510, 584, -6987),
        ["Jungle Pirate"] = CFrame.new(-11778, 426, -10592),
        ["Musketeer Pirate"] = CFrame.new(-13282, 496, -9565),
        ["Reborn Skeleton"] = CFrame.new(-8764, 142, 5963),
        ["Living Zombie"] = CFrame.new(-10227, 421, 6161),
        ["Demonic Soul"] = CFrame.new(-9579, 6, 6194),
        ["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),
        ["Peanut Scout"] = CFrame.new(-1993, 187, -10103),
        ["Peanut President"] = CFrame.new(-2215, 159, -10474),
        ["Ice Cream Chef"] = CFrame.new(-877, 118, -11032),
        ["Ice Cream Commander"] = CFrame.new(-877, 118, -11032),
        ["Cookie Crafter"] = CFrame.new(-2021, 38, -12028),
        ["Cake Guard"] = CFrame.new(-2024, 38, -12026),
        ["Baking Staff"] = CFrame.new(-1932, 38, -12848),
        ["Head Baker"] = CFrame.new(-1932, 38, -12848),
        ["Cocoa Warrior"] = CFrame.new(95, 73, -12309),
        ["Chocolate Bar Battler"] = CFrame.new(647, 42, -12401),
        ["Sweet Thief"] = CFrame.new(116, 36, -12478),
        ["Candy Rebel"] = CFrame.new(47, 61, -12889),
        ["Ghost"] = CFrame.new(5251, 5, 1111)
    }
    
    fask.spawn(function()
        while fask.wait() do
            pcall(function()
                if Yama_Quest then
                    if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then                  
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                    else
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then                        
                            if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -3 then
                                repeat fask.wait()
                                    if not game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                                        topos(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375))
                                    else
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Forest Pirate" then
                                                PosMon = v.HumanoidRootPart.CFrame
                                                spawn(function()
                                                    BringMobs(PosMon,v.Name)
                                                end)
                                                topos(game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate").HumanoidRootPart.CFrame)
                                            end
                                        end
                                    end
                                until tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 1 or not Yama_Quest
                            elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -4 then
                                for ix,HitMon in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
                                    for NameMonHaze, CFramePos in pairs(PosMsList) do
                                        if string.find(NameMonHaze,HitMon.Name) and HitMon.Value > 0 then
                                            if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
                                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
                                                        repeat fask.wait()
                                                            StartMagnet = true
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Head.CanCollide = false
                                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                            NeedAttacking = true
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            spawn(function()
                                                                BringMobs(PosMon,v.Name)
                                                            end)
                                                        until not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
                                                    end
                                                end
                                            else
                                                repeat wait()
                                                    if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
                                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
                                                                repeat fask.wait()
                                                                    StartMagnet = true
                                                                    EquipWeapon(_G.SelectWeapon)
                                                                    v.HumanoidRootPart.CanCollide = false
                                                                    v.Head.CanCollide = false
                                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                                    NeedAttacking = true
                                                                    PosMon = v.HumanoidRootPart.CFrame
                                                                    spawn(function()
                                                                        BringMobs(PosMon,v.Name)
                                                                    end)
                                                                until not v:FindFirstChild("HazeESP") or not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
                                                            end
                                                        end
                                                    else
                                                       topos(CFramePos)
                                                    end
                                                until not Yama_Quest
                                            end
                                        end
                                    end
                                end
                            elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
                                if game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000 then
                                        for gg,ez in pairs(game:GetService("Workspace").Map.HellDimension.Exit:GetChildren()) do
                                            if tonumber(gg) == 2 then
                                                repeat fask.wait()
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension.Exit.CFrame
                                                until not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                            end
                                        end
                                        NeedAttacking = true
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                            wait()
                                            EquipWeapon(_G.SelectWeapon)
                                        end      
                                        if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) ~= 3 then
                                            repeat fask.wait()
                                                repeat fask.wait() 
                                                    topos(game:GetService("Workspace").Map.HellDimension.Torch1.Particles.CFrame) 
                                                    for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                        if v:IsA("ProximityPrompt") then
                                                            fireproximityprompt(v)
                                                        end
                                                    end
                                                until (game:GetService("Workspace").Map.HellDimension.Torch1.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                                wait(2)
                                                _G.T1Yama = true
                                            until not Yama_Quest or _G.T1Yama or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                            repeat fask.wait()
                                                repeat fask.wait()
                                                    topos(game:GetService("Workspace").Map.HellDimension.Torch2.Particles.CFrame) 
                                                    for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                        if v:IsA("ProximityPrompt") then
                                                            fireproximityprompt(v)
                                                        end
                                                    end
                                                until (game:GetService("Workspace").Map.HellDimension.Torch2.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                                wait(2)
                                                _G.T2Yama = true
                                            until _G.T2Yama or Yama_Quest == false or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                            repeat wait()
                                                repeat fask.wait() 
                                                    topos(game:GetService("Workspace").Map.HellDimension.Torch3.Particles.CFrame) 
                                                    for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                        if v:IsA("ProximityPrompt") then
                                                            fireproximityprompt(v)
                                                        end
                                                    end
                                                until (game:GetService("Workspace").Map.HellDimension.Torch3.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 
                                                wait(2)
                                                _G.T3Yama = true
                                            until _G.T3Yama or Yama_Quest == false or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                        end
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if (v:FindFirstChild("HumanoidRootPart").Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 300 then
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                    repeat fask.wait()
                                                        EquipWeapon(_G.SelectWeapon)                                                    
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Head.CanCollide = false
                                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                                        NeedAttacking = true
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        spawn(function()
                                                            BringMobs(PosMon,v.Name)
                                                        end)
                                                    until not Yama_Quest or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                                    NeedAttacking = false
                                                end
                                            else
                                                MagnetYamaQuest = false
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while fask.wait() do
            pcall(function()
                if Yama_Quest then
                    if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
                        if not game:GetService("Workspace").Map:FindFirstChild("HellDimension") or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude > 1000 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if string.find(v.Name , "Soul Reaper") then
                                        repeat fask.wait()
                                            topos(v.HumanoidRootPart.CFrame)
                                        until v.Humanoid.Health <= 0 or not Yama_Quest or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3 or (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000)
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                                repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) fask.wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                                EquipWeapon("Hallow Essence")
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") and game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").Humanoid.Health > 0 then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame)
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") < 50 and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") and not game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") and not game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                    repeat fask.wait()
                                                        StartMagnet = true
                                                        EquipWeapon(_G.SelectWeapon)                                                           
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Head.CanCollide = false
                                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                                        NeedAttacking = true
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        spawn(function()
                                                            BringMobs(PosMon,v.Name)
                                                        end)
                                                    until not Yama_Quest or v.Humanoid.Health <= 0 or not v.Parent
                                                    NeedAttacking = false
                                                end
                                            end
                                        end
                                    else
                                        MagnetWaitY = false
                                        topos(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    M:Toggle({"Tự Động Lấy Song Kiếm Nguyền Rủa", false, function(V)
        Get_Cursed = V
        if V == false then
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            StopTween(Get_Cursed)
        end
    end})
    
    fask.spawn(function()
        while fask.wait() do
            pcall(function()
                if Get_Cursed then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Boss")
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cursed Skeleton Boss" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat fask.wait()
                                        if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                            EquipWeapon("Yama")
                                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                            EquipWeapon("Tushita")
                                        else
                                            warn("Yama or Tushita Only!!!")
                                            wait(5)
                                        end
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        NeedAttacking = true 
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not Get_Cursed or not v.Parent or v.Humanoid.Health <= 0
                                    NeedAttacking = false
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
                        fask.wait(.5)
                        topos(game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.CFrame)
                    end
                end
            end)
        end
    end)
    end
        
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringMonster then
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.Level and StartMagnet and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        elseif _G.Level and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                        if _G.Ectoplasm and StartEctoplasmMagnet then
                            if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode then
                                v.HumanoidRootPart.CFrame = EctoplasmMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.Rengoku and StartRengokuMagnet then
                            if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1500,1500,1500)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = RengokuMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.MusketeerHat and StartMagnetMusketeerhat then
                            if v.Name == "Forest Pirate" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = MusketeerHatMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.EvoRace and StartEvoMagnet then
                            if v.Name == "Zombie" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonEvo
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.Bartilo and AutoBartiloBring then
                            if v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBarto
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.FarmFruitMastery and StartMasteryFruitMagnet then
                            if v.Name == "Monkey" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if _G.FarmGunMastery and StartMasteryGunMagnet then
                            if v.Name == "Monkey" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if _G.Farmfast and StardMag then
                            if (v.Name == "Shanda" or v.Name == "Shanda") and (v.HumanoidRootPart.Position - FastMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = FastMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    task.spawn(function()
        while true do wait()
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            end
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
        end
    end)
    
    function InMyNetWork(object)
        if isnetworkowner then
            return isnetworkowner(object)
        else
            if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then 
                return true
            end
            return false
        end
    end
    ------------------------------------------------------------------------------------------------------------------------------------
    if World1 or World2 then
    V4:Section("Hãy Qua Sea 3")
    end
    
    if World3 then
    V4:Section("Đảo Bí Ẩn")
    
    local mr = V4:Paragraph({
        Title = "Trạng Thái Đảo Bí Ẩn",
        Desc = ""
    })
    
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
                    mr:Set("Đảo Bí Ẩn : Có")
                else
                    mr:Set("Đảo Bí Ẩn : Không")
                end
            end)
        end
    end) 
    
    V4:Toggle({"Tự Động Bay Lại Đảo Bí Ẩn", false, function(V)
        _G.MysticIsland = V
        StopTween(_G.MysticIsland)
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.MysticIsland then
                    local mysticIsland = game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                    if mysticIsland then
                        local position = mysticIsland.WorldPivot.Position
                        topos(CFrame.new(position.X, 500, position.Z))
                    end
                end
            end
        end)
    end)
    
    V4:Toggle({"Bay Đến Người Bán Trái", false, function(V)
        _G.Miragenpc = V
        StopTween(_G.Miragenpc)
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Miragenpc then
                    local fruitDealer = game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer")
                    if fruitDealer then
                        topos(CFrame.new(fruitDealer.HumanoidRootPart.Position))
                    end
                end
            end
        end)
    end)
    
    V4:Button({
      Name = "Bay Đến Người Bán Trái",
      Callback = function()
        TweenNpc()
      end
    })
    
    function TweenNpc()
        repeat
            wait()
        until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            local AllNPCS = getnilinstances()
            for _, npc in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                table.insert(AllNPCS, npc)
            end
            for _, npc in pairs(AllNPCS) do
                if npc.Name == "Advanced Fruit Dealer" then
                    TP2(npc.HumanoidRootPart.CFrame)
                    break
                end
            end
        end
    end
                        
    V4:Toggle({"Tự Động Nhìn Trăng", false, function(V)
        _G.LockCamToMoon = V
    end})
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.LockCamToMoon then
                    wait(0.1)
                    local moonDir = game.Lighting:GetMoonDirection()
                    local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                    game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
                end
            end)
        end
    end)
    
    V4:Toggle({"Nhặt Bánh Răng", false, function(V)
        _G.TweenMGear = V
        StopTween(_G.TweenMGear)
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.TweenMGear then
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        for i, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                            if v:IsA("MeshPart") then
                                if v.Material == Enum.Material.Neon then
                                    topos(v.CFrame)
                                end
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    V4:Section("Tộc V4")
    
    V4:Button({
      Name = "Bay Đến Đỉnh Cây Đại Thụ",
      Callback = function()
        local args = {
            [1] = "RaceV4Progress",
            [2] = "Teleport"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        wait(.1)
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
        TP1(CFrame.new(28609.5801, 14896.5098, 105.869637, -0.00754010677, 3.26780936e-09, -0.999971569, 6.88313628e-09, 1, 3.21600124e-09, 0.999971569, -6.85869184e-09, -0.00754010677))
        wait(2)
        local player = game.Players.LocalPlayer
        local npcPosition = CFrame.new(28609.5801, 14896.5098, 105.869637).Position
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - npcPosition).Magnitude
            if distance < 3 then
                local args = {
                    [1] = "RaceV4Progress",
                    [2] = "TeleportBack"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
      end
    })
    
    V4:Button({
      Name = "Vào Ngôi Đền Thời Gian",
      Callback = function()
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
      end
    })
    
    V4:Button({
      Name = "Bay Đến Cần Gạt",
      Callback = function()
        TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
      end
    })
    
    V4:Button({
      Name = "Bay Đến Chỗ Mua Bánh Răng",
      Callback = function()
        TP2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
      end
    })
    
    V4:Toggle({"Tự Động Mua Bánh Răng", false, function(V)
        _G.BuyGear = V
    end})
    
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.BuyGear then
                    local args = {
                        [1] = "UpgradeRace",
                        [2] = "Buy"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                end
            end
        end)
    end)
    
    V4:Button({
      Name = "Bay Đến Tộc Của Bản Thân",
      Callback = function()
        local player = Game:GetService("Players").LocalPlayer
        local humanoidRootPart = player.Character.HumanoidRootPart
        humanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
        wait(0.1)
        humanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
        wait(0.1)
        humanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
        wait(0.1)
        humanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
        if player.Data.Race.Value == "Fishman" then
          humanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
          wait(0.6)
          topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
        elseif player.Data.Race.Value == "Human" then
          humanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
          wait(0.6)
          topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
        elseif player.Data.Race.Value == "Cyborg" then
          humanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
          wait(0.6)
          topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
        elseif player.Data.Race.Value == "Skypiea" then
          humanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
          wait(0.6)
          topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
        elseif player.Data.Race.Value == "Ghoul" then
          humanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
          wait(0.6)
          topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
        elseif player.Data.Race.Value == "Mink" then
          humanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
          wait(0.6)
          topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
        end
      end
    })
    
    V4:Button({
      Name = "Bay Lại Đồng Hồ",
      Callback = function()
        TP2(CFrame.new(29551.9941, 15069.002, -85.5179291))
      end
    })
    
    V4:Toggle({"Tự Động Đổi Gear",false,function(v)
       _G.ChooseGears = v
    end})
      
    local Gears = {
        "Alpha",
        "Omega"
    }
    function DetectGearUp()
        for i,v in next,workspace.Map["Temple of Time"].InnerClock:GetChildren() do 
            if v:IsA("MeshPart") and v:FindFirstChild("Highlight") and v.Highlight.FillTransparency == 1 then 
                return v.Name
            end
        end
    end
    local NumberGear  = 1
    spawn(function()
        while task.wait() do 
            pcall(function()
                if _G.ChooseGears then 
                    local v111 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")
                    if v111 and  v111.HadPoint then
                        if DetectGearUp() then 
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","SpendPoint",DetectGearUp(),"Omega")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","SpendPoint",DetectGearUp(),"Alpha")
                        else
                            getsenv(game:GetService("Players").LocalPlayer.PlayerGui.TempleGui.LocalScript):EaseIn()
                        end
                    else
                        if game:GetService("Players").LocalPlayer.PlayerGui.TempleGui.Enabled then 
                            getsenv(game:GetService("Players").LocalPlayer.PlayerGui.TempleGui.LocalScript):EaseOut()
                        end
                    end
                end
            end)
        end
    end)
    
    V4:Toggle({"Tự Động Hoàn Thành Ải",false,function(v)
         _G.QuestRace = v
         StopTween(_G.QuestRace)
    end})
      
    spawn(function()
        pcall(function()
            while wait() do
                if _G.QuestRace then
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                        for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat wait(.1)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until not _G.QuestRace or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    for _,v in next, workspace:GetDescendants() do
                         if v.Name == "FinishPart" then
                      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                         end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                        for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                            if v.Name ==  "HumanoidRootPart" then
                                topos(v.CFrame* CFrame.new(PosX,PosY,PosZ))
                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        
                                wait(0.5)
                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(0.5)
                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                        topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                        for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat wait(.1)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until not _G.QuestRace or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                            if v.Name == "StartPoint" then
                                topos(v.CFrame* CFrame.new(0,10,0))
                              end
                           end
                    end
                end
            end
        end)
    end)
    
    V4:Toggle({"Tự Động Cày Và Bậc V4",false,function(V)
        _G.Bone = V
        _G.Train = V
        _G.BuyGear = V
        _G.ActiveV4 = V
        StopTween(_G.Bone)
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Train then
                    if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                        _G.Bone = false
                        topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                    end
                end
            end
        end)
    end)
    
    V4:Button({
      Name = "Mua Bánh Răng",
      Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace','Buy')
      end
    })
    
    V4:Section("Đánh Người Chơi Trial")
    
    local WeaponList = {"Võ", "Kiếm", "Trái", "Súng"}
    _G.SelectWeaponTrial = "Võ"
    V4:Dropdown({
        Name = "Chọn Vũ Khí",
        Default = _G.SelectWeaponTrial,
        Options = WeaponList,
        Callback = function(V)
            _G.SelectWeaponTrial = V
        end
    })
    
    task.spawn(function()
        while wait() do
            pcall(function()
                if _G.SelectWeaponTrial == "Võ" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeaponTrial = v.Name
                            end
                        end
                    end
                elseif _G.SelectWeaponTrial == "Kiếm" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeaponTrial = v.Name
                            end
                        end
                    end
                elseif _G.SelectWeaponTrial == "Súng" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Gun" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeaponTrial = v.Name
                            end
                        end
                    end
                elseif _G.SelectWeapon == "Trái" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)
        
    V4:Toggle({"Đánh Người Chơi Up V4",false,function(V)
        _G.KillAfterTrials = V
        _G.AimNearest = V
        _G.NoSt = V
        StopTween(_G.KillAfterTrials)
    end})
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.KillAfterTrials then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        for i, v in pairs(game.Workspace.Characters:GetChildren()) do
                            if v.Name ~= game.Players.LocalPlayer.Name then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Parent and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 230 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeaponTrial)
                                        UsefastattackPlayers = true
                                        TP2(v.HumanoidRootPart.CFrame * CFrame.new(1, 1, 2))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        if _G.SkillTrialZ then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                            wait(.1)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                        end
                                        if _G.SkillTrialX then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                            wait(.1)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                        end
                                        if _G.SkillTrialC then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                            wait(.1)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                        end
                                        if _G.SkillTrialV then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                            wait(.1)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                                        end
                                        if _G.SkillTrialF then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                                            wait(.1)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
                                        end
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until _G.KillAfterTrials == false or v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid")
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    V4:Section("Cài Đặt Sử Dụng Chiêu")
    
    V4:Toggle({"Sài Chiêu Z",false,function(V)
        _G.SkillTrialZ = V
    end})
    
    V4:Toggle({"Sài Chiêu X",false,function(V)
        _G.SkillTrialX = V
    end})
    
    V4:Toggle({"Sài Chiêu C",false,function(V)
        _G.SkillTrialC = V
    end})
    
    V4:Toggle({"Sài Chiêu V",false,function(V)
        _G.SkillTrialV = V
    end})
    
    V4:Toggle({"Sài Chiêu F",false,function(V)
        _G.SkillTrialF = V
    end})
    end
    ------------------------------------------------------------------------------------------------------------------------------------
    Ve:Section("Nhiệm Vụ")
    
    Ve:Button({
      Name = "Bay Đến Dojo Trainer",
      Callback = function()
        TP2(CFrame.new(5866, 1208, 870))
      end
    })
    
    Ve:Button({
      Name = "Bay Đến Dragon Hunter",
      Callback = function()
        TP2(CFrame.new(5863, 1209, 809))
      end
    })
    
    Ve:Button({
      Name = "Bay Đến Dragon Wizard",
      Callback = function()
        TP2(CFrame.new(5773, 1209, 806))
      end
    })
    
    Ve:Section("Đảo Núi Lửa")
    
    local Cp = Ve:Paragraph({
        Title = "Trạng Thái Đảo",
        Desc = ""
    })
    
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
                    Cp:Set("Đảo : Có")
                else
                    Cp:Set("Đảo : Không")
                end
            end)
        end
    end) 
    
    Ve:Button({
        Name = "Xoá Dung Nham",
        Callback = function()
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "Lava" then   
                    v:Destroy()
                end
            end
            for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
                if v.Name == "Lava" then   
                    v:Destroy()
                end
            end
        end
    })
    
    Ve:Button({
        Name = "Lấp Nam Chăm Núi Lửa",
        Callback = function()
            local args = {"CraftItem", "Craft", "Volcanic Magnet"}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    
    Ve:Toggle({"Treo Đảo Núi Lửa",false,function(V)
        _G.AutoFindPrehistoric = V
    end})
    
    local seatHistory = {}
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local Workspace = game:GetService("Workspace")
    local SetSpeedBoat = 350  
    
    game:GetService("RunService").RenderStepped:Connect(function()
        for boatName, seat in pairs(seatHistory) do
            if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
                seatHistory[boatName] = seat
            end
        end
    end)
    
    local function tpToMyBoat()
        for boatName, seat in pairs(seatHistory) do
            if seat and seat.Parent and seat.Name=="VehicleSeat" and not seat.Occupant then
                topos(seat.CFrame)
            end
        end
    end
    
    local isTeleporting = false
    local notified = false
    RunService.RenderStepped:Connect(function()
        if not _G.AutoFindPrehistoric then
            notified = false
            return
        end
        local player = Players.LocalPlayer
        local character = player.Character
        if not character or not character:FindFirstChild("Humanoid") then return end
        local function tpToMyBoat()
            if isTeleporting then return end
            isTeleporting = true
            for boatName, seat in pairs(seatHistory) do
                if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
                    topos(seat.CFrame)
                    break
                end
            end
            isTeleporting = false
        end
        local humanoid = character.Humanoid
        local boatFound = false
        local currentBoat = nil
        for _, b in pairs(Workspace.Boats:GetChildren()) do
            local seat = b:FindFirstChild("VehicleSeat")
            if seat and seat.Occupant == humanoid then
                boatFound = true
                currentBoat = seat
                seatHistory[b.Name] = seat
            elseif seat and seat.Occupant == nil then
                tpToMyBoat()
            end
        end
        if not boatFound then return end
        currentBoat.MaxSpeed = SetSpeedBoat
        currentBoat.CFrame = CFrame.new(Vector3.new(currentBoat.Position.X, currentBoat.Position.Y, currentBoat.Position.Z)) * currentBoat.CFrame.Rotation
        VirtualInputManager:SendKeyEvent(true, "W", false, game)
        for _, v in pairs(Workspace.Boats:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
        for _, v in pairs(character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
        local islandsToDelete = { 
            "ShipwreckIsland", 
            "SandIsland", 
            "TreeIsland",
            "TinyIsland", 
            "MysticIsland", 
            "KitsuneIsland", 
            "FrozenDimension" 
        }
        for _, islandName in ipairs(islandsToDelete) do
            local island = Workspace.Map:FindFirstChild(islandName)
            if island and island:IsA("Model") then
                island:Destroy()
            end
        end
        local prehistoricIsland = Workspace.Map:FindFirstChild("PrehistoricIsland")
        if prehistoricIsland then
            VirtualInputManager:SendKeyEvent(false, "W", false, game)
            _G.AutoFindPrehistoric = false
            if not notified then
                notified = true
            end
            return
        end
    end)
    
    Ve:Toggle({"Bay Đến Đảo Núi Lửa",false,function(V)
        _G.TpPrehistoric = V
        StopTween(_G.TpPrehistoric)
    end})
    
    spawn(function()
        local island
        while not island do
            island = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
            wait()
        end
        while wait() do
            if _G.TpPrehistoric then
                local prehistoricIslandCore = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
                if prehistoricIslandCore then
                    local relic = prehistoricIslandCore:FindFirstChild("Core") and prehistoricIslandCore.Core:FindFirstChild("PrehistoricRelic")
                    local skull = relic and relic:FindFirstChild("Skull")
                    if skull then
                        topos(CFrame.new(skull.Position))
                        _G.TpPrehistoric = false
                    end
                end
            end
        end
    end)
    
    Ve:Toggle({"Tự Động Đánh Golem",false,function(V)
        _G.Kill_Aura = V
        _G.KillGolem = V
        StopTween(_G.KillGolem)
    end})
    
    spawn(function()
        while wait() do
            if _G.KillGolem and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Lava Golem") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Lava Golem" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.KillGolem or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    UnEquipWeapon(_G.SelectWeapon)
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Ve:Toggle({"Tự Động Phòng Thủ",false,function(V)
        _G.DefendVolcano = V
        StopTween(_G.DefendVolcano)
    end})
    
    local function useSkill(skillKey)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, skillKey, false, game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, skillKey, false, game)
    end
    
    local function removeLava()
        local interiorLavaModel = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava")
        if interiorLavaModel and interiorLavaModel:IsA("Model") then
            interiorLavaModel:Destroy()
        end
    
        local prehistoricIsland1 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
        if prehistoricIsland1 then
            for _, descendant in pairs(prehistoricIsland1:GetDescendants()) do
                if descendant:IsA("Part") and descendant.Name:lower():find("lava") then
                    descendant:Destroy()
                end
            end
        end
    
        local prehistoricIsland2 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
        if prehistoricIsland2 then
            for _, model in pairs(prehistoricIsland2:GetDescendants()) do
                if model:IsA("Model") then
                    for _, child in pairs(model:GetDescendants()) do
                        if child:IsA("MeshPart") and child.Name:lower():find("lava") then
                            child:Destroy()
                        end
                    end
                end
            end
        end
    end
    
    local function findValidRock()
        local volcanoRocksFolder = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
        for _, Rock in pairs(volcanoRocksFolder:GetChildren()) do
            if Rock:IsA("Model") then
                local volcanorock = Rock:FindFirstChild("volcanorock")
                if volcanorock and volcanorock:IsA("MeshPart") then
                    local color = volcanorock.Color
                    if color == Color3.fromRGB(185, 53, 56) or color == Color3.fromRGB(185, 53, 57) then
                        return volcanorock
                    end
                end
            end
        end
        return nil
    end
    
    local function equipAndUseSkill(toolType)
        local player = game.Players.LocalPlayer
        local backpack = player.Backpack
        for _, item in pairs(backpack:GetChildren()) do
            if item:IsA("Tool") and item.ToolTip == toolType then
                item.Parent = player.Character
                for _, skill in ipairs({"Z", "X", "C", "V", "F"}) do
                    wait()
                    pcall(function()
                        useSkill(skill)
                    end)
                end
                item.Parent = backpack
                break
            end
        end
    end
    
    spawn(function()
        while wait() do
            if _G.DefendVolcano then
                AutoHaki()
                pcall(removeLava)
                local currentTarget = findValidRock()
                if currentTarget then
                    local targetPosition = CFrame.new(currentTarget.Position)
                    topos(targetPosition)
                    local color = currentTarget.Color
                    if color ~= Color3.fromRGB(185, 53, 56) and color ~= Color3.fromRGB(185, 53, 57) then
                        currentTarget = findValidRock()
                    else
                        local currentPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        local distance = (currentPosition - currentTarget.Position).Magnitude
                        if distance <= 1 then
                            if _G.UseMelee then
                                equipAndUseSkill("Melee")
                            end
                            if _G.UseSword then
                                equipAndUseSkill("Sword")
                            end
                            if _G.UseGun then
                                equipAndUseSkill("Gun")
                            end
                        end
                        _G.TpPrehistoric = false
                    end
                else
                    _G.TpPrehistoric = true
                end
            end
        end
    end)
    
    Ve:Toggle({"Nhặt Xương",false,function(V)
        _G.CollectBone = V
    end})
    
    spawn(function()
        while wait() do
            if _G.CollectBone then
                for _, obj in pairs(workspace:GetDescendants()) do
                    if obj:IsA("BasePart") and obj.Name == "DinoBone" then
                        topos(CFrame.new(obj.Position))
                    end
                end
            end
        end
    end)
    
    Ve:Toggle({"Nhặt Trứng",false,function(V)
        _G.CollectEgg = V
    end})
    
    spawn(function()
        while wait() do
            if _G.CollectEgg then
                local dragonEggs = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()
                if #dragonEggs > 0 then
                    local randomEgg = dragonEggs[math.random(1, #dragonEggs)]
                    if randomEgg:IsA("Model") and randomEgg.PrimaryPart then
                        topos(randomEgg.PrimaryPart.CFrame)
                        local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        local eggPosition = randomEgg.PrimaryPart.Position
                        local distance = (playerPosition - eggPosition).Magnitude
                        if distance <= 1 then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
                        end
                    end
                end
            end
        end
    end)
    
    Ve:Section("Cài Đặt Chọn Vũ Khí")
    
    Ve:Toggle({"Tự Động Sài Võ",true,function(V)
        _G.UseMelee = V
    end})
    
    Ve:Toggle({"Tự Động Sài Kiếm",false,function(V)
        _G.UseSword = V
    end})
    
    Ve:Toggle({"Tự Động Sài Súng",false,function(V)
        _G.UseGun = V
    end})
    ------------------------------------------------------------------------------------------------------------------------------------
    V:Section("Định Vị")
    
    V:Toggle({"Định Vị Người Chơi",false,function(V)
        ESPPlayer = V
        UpdatePlayerChams()
    end})
        
    V:Toggle({"Định Vị Đảo Cáo",false,function(V)
          IslandESP = V
           while IslandESP do wait()
            UpdateIslandESPKitsune() 
         end
    end})
    
    function UpdateIslandESPKitsune()
        for i, v in pairs(game:GetService("Workspace").Map.KitsuneIsland.ShrineActive:GetChildren()) do
            pcall(function()
                if IslandESP then
                    if v.Name ~= "NeonShrinePart" then
                        if not v:FindFirstChild('IslandESP') then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'IslandESP'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                            name.Text = "Kitsune Island"
                        else
                            v['IslandESP'].TextLabel.Text = "Kitsune Island"
                        end
                    end
                else
                    if v:FindFirstChild('IslandESP') then
                        v:FindFirstChild('IslandESP'):Destroy()
                    end
                end
            end)
        end
    end
    
    V:Toggle({"Định Vị Trái Ác Quỷ",false,function(V)
        DevilFruitESP = V
        while DevilFruitESP do wait()
            UpdateDevilChams() 
        end
    end})
    
    V:Toggle({"Định Vị Trái Nâng Haki V2",false,function(V)
        RealFruitESP = V
        UpdateRealFruitChams() 
    end})
    
    V:Toggle({"Định Vị Hoa",false,function(V)
        FlowerESP = V
        UpdateFlowerChams() 
    end})
    spawn(function()
        while wait() do
            if FlowerESP then
                UpdateFlowerChams() 
            end
            if DevilFruitESP then
                UpdateDevilChams() 
            end
            if ESPPlayer then
                UpdatePlayerChams()
            end
            if RealFruitESP then
                UpdateRealFruitChams()
            end
        end
    end)
        
    V:Toggle({"Định Vị Đảo",false,function(V)
        IslandESP = V
        while IslandESP do wait()
            UpdateIslandESP() 
        end
    end})
    
    V:Toggle({"Định Vị Đảo Bí Ẩn", false, function(V)
        MirageIslandESP = V
        while MirageIslandESP do wait()
            UpdateIslandMirageESP()
        end
    end})
        
    V:Section("Troll")
    
    V:Button({
        Name = "Mưa Trái",
        Callback = function()
            for i, v in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
                v.Parent = game.Workspace.Map
                v:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
                if v.Fruit:FindFirstChild("AnimationController") then
                    v.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v.Fruit:FindFirstChild("Idle")):Play()
                end
                v.Handle.Touched:Connect(function(otherPart)
                    if otherPart.Parent == game.Players.LocalPlayer.Character then
                        v.Parent = game.Players.LocalPlayer.Backpack
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    end
                end)
            end
        end
    })
    
    V:Button({
        Name = "Nhận Cấp/Beli",
        Callback = function()
            local plr = game:GetService("Players").LocalPlayer
            local Notification = require(game:GetService("ReplicatedStorage").Notification)
            local Data = plr:WaitForChild("Data")
            local EXPFunction = require(game.ReplicatedStorage:WaitForChild("EXPFunction"))
            local LevelUp = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp)
            local Sound = require(game:GetService("ReplicatedStorage").Util.Sound)
            local LevelUpSound = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp")
    
            function v129(p15)
                local v130 = p15
                while true do
                    local v131, v132 = string.gsub(v130, "^(-?%d+)(%d%d%d)", "%1,%2")
                    v130 = v131
                    if v132 == 0 then
                        break
                    end
                end
                return v130
            end
            
            Notification.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display()
            Notification.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display()
            Notification.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display()
            
            plr.Data.Exp.Value = 999999999999
            plr.Data.Beli.Value = plr.Data.Beli.Value + 999999999999
            
            local delay = 0
            local count = 0
            while plr.Data.Exp.Value - EXPFunction(Data.Level.Value) > 0 do
                plr.Data.Exp.Value = plr.Data.Exp.Value - EXPFunction(Data.Level.Value)
                plr.Data.Level.Value = plr.Data.Level.Value + 1
                plr.Data.Points.Value = plr.Data.Points.Value + 3
                LevelUp({ plr })
                Sound.Play(Sound, LevelUpSound.Value)
                Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. plr.Data.Level.Value .. ")"):Display()
                
                count = count + 1
                if count >= 5 then
                    delay = tick()
                    count = 0
                    wait(2)
                end
            end
        end
    })
    
    V:TextBox({Name = "Giả Cấp",Default = "",PlaceholderText = "",Callback = function(V)
       game:GetService("Players").LocalPlayer.Data.Level.Value = V
    end})
    
    V:TextBox({Name = "Giả Kinh nghiệm",Default = "",PlaceholderText = "",Callback = function(V)
        game:GetService("Players").LocalPlayer.Data.Exp.Value = V
    end})
    
    V:TextBox({Name = "Giả Tiền",Default = "",PlaceholderText = "",Callback = function(V)
        game:GetService("Players").LocalPlayer.Data.Beli.Value = V
    end})
    
    V:TextBox({Name = "Giả Nguyên Thạch",Default = "",PlaceholderText = "",Callback = function(V)
        game:GetService("Players").LocalPlayer.Data.Fragments.Value = V
    end})
    
    V:TextBox({Name = "Giả Điểm Chỉ Số",Default = "",PlaceholderText = "",Callback = function(V)
        game:GetService("Players").LocalPlayer.Data.Points.Value = V
    end})
    
    V:TextBox({Name = "Giả Tiền Thưởng",Default = "",PlaceholderText = "",Callback = function(V)
        game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value = V
    end})
    
    V:Section("Góc Nhìn")
    
    V:Toggle({"Tắt Chat", false, function(V)
        _G.chat = V
        local StarterGui = game:GetService('StarterGui')
        if _G.chat then
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
        else
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
        end
    end})
    
    V:Toggle({"Tắt Bản Tiền Thưởng", false, function(a)
        _G.leaderboard = a
        local StarterGui = game:GetService('StarterGui')
        if _G.leaderboard then
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
        else
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
        end
    end})
        
    V:Section("Mở Khoá")
    
    V:Button({
        Name = "Mở Khoá Buso",
        Callback = function()
            local Ability = "Buso"
            -- local Ability = {Buso, Soru, Geppo}
            if type(Ability) == 'string' then
                game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, Ability)
            elseif type(Ability) == 'table' then
                for i, v in next, Ability do
                    game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v)
                end
            end
        end
    })
    
    V:Button({
        Name = "Mở Khoá Soru",
        Callback = function()
            local Ability = "Soru"
            -- local Ability = {Buso, Soru, Geppo}
            if type(Ability) == 'string' then
                game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, Ability)
            elseif type(Ability) == 'table' then
                for i, v in next, Ability do
                    game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v)
                end
            end
        end
    })
    
    V:Button({
        Name = "Mở Khoá Geppo",
        Callback = function()
            local Ability = "Geppo"
            -- local Ability = {Buso, Soru, Geppo}
            if type(Ability) == 'string' then
                game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, Ability)
            elseif type(Ability) == 'table' then
                for i, v in next, Ability do
                    game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v)
                end
            end
        end
    })
    
    V:Button({
        Name = "Góc Nhìn Vô Hạn",
        Callback = function()
            while wait() do
                game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
            end
        end
    })
    
    V:Button({
        Name = "Show Acc",
        Callback = function()
            local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
            local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
            local Items = {}
            local RaityLevel = {"Mythical", "Legendary", "Rare", "Uncommon", "Common"}
            local RaityColor = {
                ["Common"] = Color3.fromRGB(179, 179, 179),
                ["Uncommon"] = Color3.fromRGB(92, 140, 211),
                ["Rare"] = Color3.fromRGB(140, 82, 255),
                ["Legendary"] = Color3.fromRGB(213, 43, 228),
                ["Mythical"] = Color3.fromRGB(238, 47, 50)
            }
            function GetRaity(color)
                for k, v in pairs(RaityColor) do
                    if v == color then
                        return k
                    end
                end
            end
            for k, v in pairs(Inventory) do
                Items[v.Name] = v
            end
            local total = #getupvalue(cac.UpdateRender, 4)
            local rac = {}
            local allitem = {}
            local total2 = 0
            while total2 < total do
                local i = 0
                while i < 25000 and total2 < total do
                    game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0, i)
                    for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
                        if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible == true then
                            local vaihuhu = GetRaity(v.Background.BackgroundColor3)
                            if vaihuhu then
                                print("Rac")
                                if not allitem[vaihuhu] then
                                    allitem[vaihuhu] = {}
                                end
                                table.insert(allitem[vaihuhu], v:Clone())
                            end
                            total2 = total2 + 1
                            rac[v.ItemName.Text] = true
                        end
                    end
                    i = i + 20
                end
                wait()
            end
            function GetXY(vec)
                return vec * 100
            end
            local tvk = Instance.new("UIListLayout")
            tvk.FillDirection = Enum.FillDirection.Vertical
            tvk.SortOrder = 2
            tvk.Padding = UDim.new(0, 10)
            local Left = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
            Left.BackgroundTransparency = 1
            Left.Size = UDim2.new(.5, 0, 1, 0)
            tvk.Parent = Left
            local Right = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
            Right.BackgroundTransparency = 1
            Right.Size = UDim2.new(.5, 0, 1, 0)
            Right.Position = UDim2.new(.6, 0, 0, 0)
            tvk:Clone().Parent = Right
            for k, v in pairs(allitem) do
                local cac = Instance.new("Frame", Left)
                cac.BackgroundTransparency = 1
                cac.Size = UDim2.new(1, 0, 0, 0)
                cac.LayoutOrder = table.find(RaityLevel, k)
                local cac2 = Instance.new("Frame", Right)
                cac2.BackgroundTransparency = 1
                cac2.Size = UDim2.new(1, 0, 0, 0)
                cac2.LayoutOrder = table.find(RaityLevel, k)
                local tvk = Instance.new("UIGridLayout", cac)
                tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
                tvk.CellSize = UDim2.new(0, 70, 0, 70)
                tvk.FillDirectionMaxCells = 100
                tvk.FillDirection = Enum.FillDirection.Horizontal
                local ccc = tvk:Clone()
                ccc.Parent = cac2
                for k, v in pairs(v) do
                    if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then
                        if v.ItemLine2.Text ~= "Accessory" then
                            local bucac = v.ItemName:Clone()
                            bucac.BackgroundTransparency = 1
                            bucac.TextSize = 10
                            bucac.TextXAlignment = 2
                            bucac.TextYAlignment = 2
                            bucac.ZIndex = 5
                            bucac.Text = Items[v.ItemName.Text].Mastery
                            bucac.Size = UDim2.new(.5, 0, .5, 0)
                            bucac.Position = UDim2.new(.5, 0, .5, 0)
                            bucac.Parent = v
                        end
                        v.Parent = cac
                    elseif v.ItemLine2.Text == "Blox Fruit" then
                        v.Parent = cac2
                    end
                end
                cac.AutomaticSize = 2
                cac2.AutomaticSize = 2
            end
            local ListHuhu = {
                ["Superhuman"] = Vector2.new(3, 2),
                ["GodHuman"] = Vector2.new(3, 2),
                ["DeathStep"] = Vector2.new(4, 3),
                ["ElectricClaw"] = Vector2.new(2, 0),
                ["SharkmanKarate"] = Vector2.new(0, 0),
                ["DragonTalon"] = Vector2.new(1, 5)
            }
            local MeleeG = Instance.new("Frame", Left)
            MeleeG.BackgroundTransparency = 1
            MeleeG.Size = UDim2.new(1, 0, 0, 0)
            MeleeG.AutomaticSize = 2
            MeleeG.LayoutOrder = 100
            local tvk = Instance.new("UIGridLayout", MeleeG)
            tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
            tvk.CellSize = UDim2.new(0, 70, 0, 70)
            tvk.FillDirectionMaxCells = 100
            tvk.FillDirection = Enum.FillDirection.Horizontal
            local cac = {"Superhuman", "ElectricClaw", "DragonTalon", "SharkmanKarate", "DeathStep", "GodHuman"}
            for k, v in pairs(cac) do
                if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. v, true) == 1 then
                    local huhu = Instance.new("ImageLabel", MeleeG)
                    huhu.Image = "rbxassetid://9945562382"
                    huhu.ImageRectSize = Vector2.new(100, 100)
                    huhu.ImageRectOffset = ListHuhu[v] * 100
                end
            end
            function formatNumber(v)
                return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
            end
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 800, 0, 500)
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 800, 0, 550)
            local thieunang = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
            thieunang.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
            thieunang.Position = UDim2.new(0, 800, 0.63, 0)
            local n = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value)
            thieunang.Text = "Ã†â€™" .. n
            print("Done")
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
            end)
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy()
            end)
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy()
            end)
            for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
                if v:IsA("ImageButton") then
                    v:Destroy()
                end
            end
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy()
            end)
        end
    })
    
    V:Section("Đồ Hoạ")
        
    V:Button({
        Name = "Xoá Xương Mù (Sea 3)",
        Callback = function()
            game:GetService("Lighting").LightingLayers:Destroy()
            game:GetService("Lighting").Sky:Destroy()
        end
    })
    
    V:Toggle({"Xoá Xương Mù",false,function(V)
        RemoveFog = V
            if not RemoveFog then return end
            while RemoveFog do wait()
                game.Lighting.FogEnd = 9e9
                if not RemoveFog then
                    game.Lighting.FogEnd = 2500
                end
            end
        end})
        
    V:Toggle({"Tắt Sát Thương",true,function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "DamageCounter" then   
                v:Destroy()
            end
        end
        for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
            if v.Name == "DamageCounter" then   
                v:Destroy()
            end
        end
    end})
    
    V:Button({
        Name = "Mở Khoá Fps",
        Callback = function()
            setfpscap(9999999)
        end
    })
    
    V:Section("Khác")
    
    V:Toggle({"Né Vô Hạn",false,function(V)
        nododgecool = V
        NoDodgeCool()
    end})
    
    V:Toggle({"Vô Hạn Năng Lượng",false,function(V)
        InfiniteEnergy = V
        originalstam = LocalPlayer.Character.Energy.Value
    end})
    
    V:Toggle({"Nhảy Vô Hạn",false,function(V)
        InfAbility = V
        if value == false then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end})
    
    spawn(function()
        while wait() do
            if InfAbility then
                InfAb()
            end
        end
    end)
    
    V:Toggle({"Tầm Nhìn Vô Hạn",false,function(V)
        getgenv().InfiniteObRange = V
        local VS = game:GetService("Players").LocalPlayer.VisionRadius.Value
        while getgenv().InfiniteObRange do
            wait()
            local player = game:GetService("Players").LocalPlayer
            local char = player.Character
            local VisionRadius = player.VisionRadius
            if player then
                if char.Humanoid.Health <= 0 then 
                    wait(5) 
                end
                VisionRadius.Value = math.huge
            elseif getgenv().InfiniteObRange == false and player then
                VisionRadius.Value = VS
            end
        end
    end})
    
    V:Toggle({"Geppo vô hạn",false,function(V)
        getgenv().InfGeppo = V
    end})
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().InfGeppo then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Geppo then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
                                for i2,v2 in next, getupvalues(v) do
                                    if tostring(i2) == "9" then
                                        repeat wait(.1)
                                            setupvalue(v,i2,0)
                                        until not getgenv().InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    V:Button({
        Name = "Xoá Dung Nham",
        Callback = function()
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "Lava" then   
                    v:Destroy()
                end
            end
            for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
                if v.Name == "Lava" then   
                    v:Destroy()
                end
            end
        end
    })
    ------------------------------------------------------------------------------------------------------------------------------------
    local plyserv = P:Paragraph({
        Title = "Người Chơi",
        Desc = ""
    })
    
    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if i == 12 then
                        plyserv:Set("Người Chơi:".." "..i.." ".."/".." ".."12".." ".."(Max)")
                    elseif i == 1 then
                        plyserv:Set("Người Chơi:".." "..i.." ".."/".." ".."12")
                    else
                        plyserv:Set("Người Chơi:".." "..i.." ".."/".." ".."12")
                    end
                end
            end)
        end
    end)
        
    local Playerslist = {}
    
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        table.insert(Playerslist, player.Name)
    end
    
    P:Dropdown({
        Name = "Chọn Người Chơi",
        Default = _G.SelectPly,
        Options = Playerslist,
        Callback = function(V)
            _G.SelectPly = V
        end
    })
    
    P:Button({
        Name = "Đặt Lại",
        Callback = function()
            Playerslist = {}
            SelectedPly:Clear()
            for i,v in pairs(game:GetService("Players"):GetChildren()) do  
                SelectedPly:Add(v.Name)
            end
        end
    })
    
    P:Toggle({"Quan Sát Người Chơi Đã Chọn", false, function(V)
        SpectatePlys = V
        local localPlayerHumanoid = game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
        local selectedPlayer = _G.SelectPly and game:GetService("Players"):FindFirstChild(_G.SelectPly)
        local selectedPlayerHumanoid = selectedPlayer and selectedPlayer.Character and selectedPlayer.Character:FindFirstChild("Humanoid")
        if not selectedPlayerHumanoid then
            return
        end
        repeat
            wait(0.1)
            game:GetService("Workspace").Camera.CameraSubject = selectedPlayerHumanoid
        until SpectatePlys == false
        if localPlayerHumanoid then
            game:GetService("Workspace").Camera.CameraSubject = localPlayerHumanoid
        end
    end})
        
    P:Toggle({"Bay Đến Người Chơi Đã Chọn",false,function(V)
        _G.TeleportPly = V
        pcall(function()
            if _G.TeleportPly then
                repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
            end
            StopTween(_G.TeleportPly)
        end)
    end})
        
    P:Section("PvP")
        
    P:Toggle({"Aimbot gần nhất",false,function(V)
       _G.AimNearest = V
    end})
    
    local Players = game:GetService('Players')
    local LocalPlayer = Players.LocalPlayer
    local RunService = game:GetService('RunService')
    
    local function GetClosestPlayer()
        local closestPlayer = nil
        local shortestDistance = math.huge
    
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                if player.Team ~= LocalPlayer.Team and player.Team.Name ~= "Marines" then
                    local targetPos = player.Character.HumanoidRootPart.Position
                    local dist = (LocalPlayer.Character.HumanoidRootPart.Position - targetPos).Magnitude
                    if dist < shortestDistance then
                        closestPlayer = player
                        shortestDistance = dist
                    end
                end
            end
        end
    
        return closestPlayer
    end
    
    RunService.RenderStepped:Connect(function()
        if _G.AimNearest then
            local closestPlayer = GetClosestPlayer()
            if closestPlayer then
                _G.Aim_Players = closestPlayer
            end
        end
    end)
    
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.AimNearest and _G.Aim_Players then
                        args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
    setreadonly(gg, true)
    
    P:Toggle({"Không Bị Khựng Khi Sài Chiêu",false,function(V)
        _G.NoSt = V
    end})
        
    spawn(function()
        while wait() do
            if _G.NoSt then
                for r, v in next, plr.Character:GetDescendants() do
                    if table.find({"BodyGyro", "BodyPosition"}, v.ClassName) then
                        v:Destroy()
                    end
                end
            end
        end
    end)
    
    P:Toggle({"Bậc PvP",false,function(V)
        _G.EnabledPvP = V
    end})
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.EnabledPvP then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)
        
    P:Button({
        Name = "Đặt Vị Trí Xuất Hiện",
        Callback = function()
            _G.Pos_Spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            Com()
        end
    })
    
    P:Button({
        Name = "Đặt Lại Người Chơi",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
            wait()
        end
    })
    
    P:Section("Khác")
    
    P:Toggle({"Tự Động Bậc V3",false,function(V)
        _G.ActiveV3 = V
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.ActiveV3 then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
            end
        end)
    end)
    
    P:Toggle({"Tự Động Bậc V4",false,function(V)
        _G.ActiveV4 = V
    end})
    
    spawn(function()
        while task.wait() do
            if _G.ActiveV4 then
                pcall(function() 
                    if game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") 
                    and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 
                    and game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and not game.Players.LocalPlayer.Character.RaceTransformed.Value   then
                        local args = {
                            [1] = true
                        }
                        game:GetService("Players").LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(unpack(args))
                    end
                end)
            end
        end
    end)
        
    P:Toggle({"Bay", false, function(V)
        if V then
            _G.NoClip = true
            mobilefly(speaker, true)
        else
            _G.NoClip = false
            unmobilefly(speaker)
        end
    end})
    
    P:Toggle({"Đi Trên Nước",true,function(V)
        _G.WalkWater = V
    end})
    
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.WalkWater then
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
                else
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
                end
            end)
        end
    end)
        
    local WSList = {"50", "100", "200", "250", "300", "350"}
    _G.SelectSp = "200"
    P:Dropdown({
        Name = "Chọn Tốc Độ Chạy",
        Default = _G.SelectSp,
        Options = WSList,
        Callback = function(V)
            _G.SelectSp = V
        end
    })
    
    P:Toggle({"Bậc Chạy Nhanh",false,function(V)
        _G.WalkSp = V
    end})
    
    game:GetService("RunService").RenderStepped:Connect(function()
        if plr.Character and plr.Character:FindFirstChild("Humanoid") and _G.WalkSp then
            plr.Character.Humanoid.WalkSpeed = tonumber(_G.SelectSp)
        end
    end)
    
    local JPList = {"50", "100", "200", "250", "300", "350", "400"}
    _G.SelectJp = "200"
    P:Dropdown({
        Name = "Chọn Độ Cao Khi Nhảy",
        Default = _G.SelectJp,
        Options = JPList,
        Callback = function(V)
            _G.SelectJp = V
        end
    })
    
    P:Toggle({"bậc Nhảy Cao",false,function(V)
        _G.JumpSp = V
    end})
    
    game:GetService("RunService").RenderStepped:Connect(function()
        if plr.Character and plr.Character:FindFirstChild("Humanoid") and _G.JumpSp then
            plr.Character.Humanoid.JumpPower = tonumber(_G.SelectJp)
        end
    end)
    
    P:Toggle({"Xuyên Tường",false,function(V)
        _G.NoClip = V
    end})
    
    spawn(function()
        while wait() do
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",100)
            end
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge, math.huge * math.huge * 0 / 0 * 0 / 0 * 0 / 0 * 0 / 0 * 0 / 0
            end
        end
    end)
        
    P:Section("Chỉ Số")
    
    local Pointstat = P:Paragraph({
        Title = "Trạng Thái Chỉ Số",
        Desc = ""
    })
    
    spawn(function()
        while wait() do
            pcall(function()
                Pointstat:Set("Chỉ Số: "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value))
            end)
        end
    end)
        
    local Melee = P:Paragraph({
        Title = "Võ",
        Desc = ""
    })
    
    local Defense = P:Paragraph({
        Title = "Phòng Thủ",
        Desc = ""
    })
    
    local Sword = P:Paragraph({
        Title = "Kiếm",
        Desc = ""
    })
    
    local Gun = P:Paragraph({
        Title = "Súng",
        Desc = ""
    })
    
    local Fruit = P:Paragraph({
        Title = "Trái",
        Desc = ""
    })
    
    spawn(function()
        while wait() do
            pcall(function()
                Melee:Set("Võ: "..game.Players.localPlayer.Data.Stats.Melee.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Defense:Set("Phòng Thủ: "..game.Players.localPlayer.Data.Stats.Defense.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Sword:Set("Kiếm: "..game.Players.localPlayer.Data.Stats.Sword.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Gun:Set("Súng: "..game.Players.localPlayer.Data.Stats.Gun.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Fruit:Set("Trái: "..game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value)
            end)
        end
    end)
        
    P:Slider({"Chọn Giá Trị Chỉ Số", 1, 100, 1, 1, function(V)
        _G.Point = V
    end})
    
    P:Toggle({"Tự Động Nâng Chỉ Số Đã nhập",false,function(V)
    _G.Stats_Kaitun = V
    end})
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Stats_Kaitun then
                    if World1 then
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Melee",
                            [3] = _G.Point
                            }
                            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    elseif World2 then
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Melee",
                            [3] = _G.Point
                            }
                            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Defense",
                            [3] = _G.Point
                            }
                            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end)
        end
    end)
    
    P:Toggle({"Võ", false, function(V)
        melee = V    
    end})
    
    spawn(function()
        while wait() do
            if melee then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",
                    [3] = _G.Point
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end)
    
    P:Toggle({"Phòng Thủ", false, function(V)
        defense = V
    end})
    
    spawn(function()
        while wait() do
            if defense then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Defense",
                    [3] = _G.Point
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end)
    
    P:Toggle({"Kiếm", false, function(V)
        sword = V
    end})
    
    spawn(function()
        while wait() do
            if sword then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",
                    [3] = _G.Point
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end)
    
    P:Toggle({"Súng", false, function(V)
        gun = V
    end})
    
    spawn(function()
        while wait() do
            if gun then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",
                    [3] = _G.Point
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end)
    
    P:Toggle({"Trái", false, function(V)
        demonfruit = V
    end})
    
    spawn(function()
        while wait() do
            if demonfruit then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Demon Fruit",
                    [3] = _G.Point
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end)
    ------------------------------------------------------------------------------------------------------------------------------------
    R:Section("Tập Kích")
    
    _G.SelectChip = selectraids or ""
    Raidslist = {}
    RaidsModule = require(game.ReplicatedStorage.Raids)
    for i,v in pairs(RaidsModule.raids) do
        table.insert(Raidslist,v)
    end
    for i,v in pairs(RaidsModule.advancedRaids) do
        table.insert(Raidslist,v)
    end
        
    R:Dropdown({
        Name = "Chọn Chip",
        Default = false,
        Options = Raidslist,
        Callback = function(V)
            _G.SelectChip = V
        end
    })
        
    R:Toggle({"Tự Động Chọn Chip",false,function(V)
        _G.SelectDungeon = V
    end})
    
    spawn(function()
        while wait() do
            if _G.SelectDungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                        _G.SelectChip = "Flame"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                        _G.SelectChip = "Ice"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                        _G.SelectChip = "Quake"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                        _G.SelectChip = "Light"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                        _G.SelectChip = "Dark"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String") then
                        _G.SelectChip = "String"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                        _G.SelectChip = "Rumble"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                        _G.SelectChip = "Magma"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        _G.SelectChip = "Human: Buddha"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                        _G.SelectChip = "Sand"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        _G.SelectChip = "Bird: Phoenix"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough") then
                        _G.SelectChip = "Dough"
                    else
                        _G.SelectChip = "Flame"
                    end
                end)
            end
        end
    end)
        
    R:Toggle({"Tự Động Mua Chip",false,function(V)
        _G.BuyChip = V
    end})
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.BuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                end
            end
        end)
    end)
        
    R:Button({
      Name = "Mua Chip Đã Chọn",
      Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
      end
    })
    
    R:Toggle({"Tự Động Bắt Đầu Tập Kích",false,function(V)
        _G.StartRaid = V
    end})
    
    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.StartRaid then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if World2 then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif World3 then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                    end
                end
            end)
        end
    end)
        
    R:Button({
        Name = "Bắt Đầu Tập Kích",
        Callback = function()
            if World2 then
                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
            elseif World3 then
                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
            end
        end
    })
    
    R:Toggle({"Tự Động Đánh Quái Và Qua Đảo Mới",false,function(V)
        _G.Dungeon = V
         StopTween(_G.Dungeon)
    end})
        
    function IsIslandRaid(cu)
        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. cu) then
            min = 4500
            for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                if
                    v.Name == "Island " .. cu and
                        (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min
                then
                    min = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
            for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                if
                    v.Name == "Island " .. cu and
                        (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min
                then
                    return v
                end
            end
        end
    end
    
    function getNextIsland()
        TableIslandsRaid = {5, 4, 3, 2, 1}
        for r, v in pairs(TableIslandsRaid) do
            if IsIslandRaid(v) and (IsIslandRaid(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
                return IsIslandRaid(v)
            end
        end
    end
    
    function attackNearbyEnemies()
        local enemies = {}
        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                local distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if distance <= 1000 then
                    table.insert(enemies, v)
                end
            end
        end
    
        for _, enemy in pairs(enemies) do
            repeat
                if enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                    EquipWeapon(_G.SelectWeapon)
                    topos(enemy.HumanoidRootPart.CFrame * Pos)
                    wait(0.1)
                end
            until not enemy:FindFirstChild("Humanoid") or enemy.Humanoid.Health <= 0
        end
    end
    
    spawn(function()
        while wait() do
            if _G.Dungeon then
                attackNearbyEnemies()
                if getNextIsland() then
                    spawn(topos(getNextIsland().CFrame * CFrame.new(0, 60, 0)), 1)
                end
            end
        end
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Kill_Aura then
                    local player = game:GetService("Players").LocalPlayer
                    local enemies = game:GetService("Workspace").Enemies:GetChildren()
                    local playerPos = player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.HumanoidRootPart.Position
                    if playerPos then
                        for _, enemy in pairs(enemies) do
                            if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                                local distance = (enemy.HumanoidRootPart.Position - playerPos).Magnitude
                                if distance <= 1000 then
                                    pcall(function()
                                        repeat wait()
                                            sethiddenproperty(player, "SimulationRadius", math.huge)
                                            enemy.Humanoid.Health = 0
                                            enemy.HumanoidRootPart.CanCollide = false
                                        until not _G.Kill_Aura or not enemy.Parent or enemy.Humanoid.Health <= 0
                                    end)
                                end
                            end
                        end
                    end
                end
            end
        end)
    end)
        
    R:Toggle({"Tự Động Thức Tỉnh",false,function(V)
        _G.Awakener = V
    end})
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)
        
    if World2 then
    R:Button({
        Name = "Bay Đến Chỗ Thức Tỉnh",
        Callback = function()
           topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        end
    })
    
    elseif World3 then
    R:Button({
        Name = "Bay Đến Chỗ Thức Tỉnh",
        Callback = function()
           topos(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
        end
    })
    end
    
    if World2 then
    R:Section("Sword")
        
    R:Toggle({"Tự Động Đánh Law", false,function(V)
         _G.OderSword = V
        StopTween( _G.OderSword)
    end})
        
    R:Toggle({"Tự Động Law Hop", false,function(V)
         _G.OderSwordHop = V
    end})
    
    spawn(function()
        while wait() do
            if  _G.OderSword then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.OderSword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.OderSwordHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
    R:Button({
        Name = "Mua Chip Law",
        Callback = function()
            local args = {
                [1] = "BlackbeardReward",
                [2] = "Microchip",
                [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    
    R:Button({
        Name = "Bắt Đầu Vào Đánh",
        Callback = function()
            if World2 then
                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
            end
        end
    })
    end
    ------------------------------------------------------------------------------------------------------------------------------------
    T:Section("thế giới")
    
    T:Button({
        Name = "Dịch Chuyển Qua Sea 1",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    })
    
    T:Button({
        Name = "Dịch Chuyển Qua Sea 2",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    })
    
    T:Button({
        Name = "Dịch Chuyển Qua Sea 3",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
    })
    
    T:Section("Đảo")
    
    if World1 then
        T:Dropdown({
            Name = "Chọn Đảo",
            Default = false,
            Options = {
                "WindMill", "Marine", "Middle Town", "Jungle", "Pirate Village", 
                "Desert", "Snow Island", "MarineFord", "Colosseum", "Sky Island 1", 
                "Sky Island 2", "Sky Island 3", "Prison", "Magma Village", 
                "Under Water Island", "Fountain City"
            },
            Callback = function(V)
                _G.SelectIsland = V
            end
        })
    end
    
    if World2 then
        T:Dropdown({
            Name = "Chọn Đảo",
            Default = false,
            Options = {
                "The Cafe", "Frist Spot", "Dark Area", "Flamingo Mansion", 
                "Flamingo Room", "Green Zone", "Zombie Island", "Two Snow Mountain", 
                "Punk Hazard", "Cursed Ship", "Ice Castle", "Forgotten Island", "Ussop Island"
            },
            Callback = function(V)
                _G.SelectIsland = V
            end
        })
    end
    
    if World3 then
        T:Dropdown({
            Name = "Chọn Đảo",
            Default = false,
            Options = {
                "Mansion", "Port Town", "Great Tree", "Castle On The Sea", "Hydra Island", 
                "Floating Turtle", "Haunted Castle", "Ice Cream Island", "Peanut Island", 
                "Cake Island", "Candy Cane Island", "Tiki Outpost"
            },
            Callback = function(V)
                _G.SelectIsland = V
            end
        })
    end
    
    T:Toggle({"Bay Lại Đảo Đã Chọn",false,function(V)
        _G.TeleportIsland = V
        if _G.TeleportIsland == true then
            repeat wait()
                if _G.SelectIsland == "Middle Town" then
                    topos(CFrame.new(-688, 15, 1585))
                elseif _G.SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4810, 21, 4359))
                elseif _G.SelectIsland == "Marine" then
                    topos(CFrame.new(-2728, 25, 2056))
                elseif _G.SelectIsland == "WindMill" then
                    topos(CFrame.new(889, 17, 1434))
                elseif _G.SelectIsland == "Desert" then
                    topos(CFrame.new(945, 21, 4375))
                elseif _G.SelectIsland == "Snow Island" then
                    topos(CFrame.new(1298, 87, -1344))
                elseif _G.SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1173, 45, 3837))
                elseif _G.SelectIsland == "Jungle" then
                    topos(CFrame.new(-1614, 37, 146))
                elseif _G.SelectIsland == "Prison" then
                    topos(CFrame.new(4870, 6, 736))
                elseif _G.SelectIsland == "Under Water Island" then
                    topos(CFrame.new(61164, 5, 1820))
                elseif _G.SelectIsland == "Colosseum" then
                    topos(CFrame.new(-1535, 7, -3014))
                elseif _G.SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5290, 9, 8349))
                elseif _G.SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4814, 718, -2551))
                elseif _G.SelectIsland == "Sky Island 2" then
                    topos(CFrame.new(-4652, 873, -1754))
                elseif _G.SelectIsland == "Sky Island 3" then
                    topos(CFrame.new(-7895, 5547, -380))
                elseif _G.SelectIsland == "Fountain City" then
                    topos(CFrame.new(5128, 60, 4106))
                elseif _G.SelectIsland == "The Cafe" then
                    topos(CFrame.new(-382, 73, 290))
                elseif _G.SelectIsland == "Frist Spot" then
                    topos(CFrame.new(-11, 29, 2771))
                elseif _G.SelectIsland == "Dark Area" then
                    topos(CFrame.new(3494, 13, -3259))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-317, 331, 597))
                elseif _G.SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2285, 15, 905))
                elseif _G.SelectIsland == "Green Zone" then
                    topos(CFrame.new(-2258, 73, -2696))
                elseif _G.SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5552, 194, -776))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(752, 408, -5277))
                elseif _G.SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-5897, 18, -5096))
                elseif _G.SelectIsland == "Cursed Ship" then
                    topos(CFrame.new(919, 125, 32869))
                elseif _G.SelectIsland == "Ice Castle" then
                    topos(CFrame.new(5505, 40, -6178))
                elseif _G.SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3050, 240, -10178))
                elseif _G.SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816, 8, 2863))
                elseif _G.SelectIsland == "Mansion" then
                    topos(CFrame.new(-12471, 374, -7551))
                elseif _G.SelectIsland == "Port Town" then
                    topos(CFrame.new(-339, 21, 5555))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    topos(CFrame.new(-5073, 315, -3153))
                elseif _G.SelectIsland == "Hydra Island" then
                    topos(CFrame.new(5290, 1005, 392))
                elseif _G.SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681, 1682, -7190))
                elseif _G.SelectIsland == "Floating Turtle" then
                    topos(CFrame.new(-12528, 332, -8658))
                elseif _G.SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9517, 142, 5528))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    topos(CFrame.new(-902, 79, -10988))
                elseif _G.SelectIsland == "Peanut Island" then
                    topos(CFrame.new(-2062, 50, -10232))
                elseif _G.SelectIsland == "Cake Island" then
                    topos(CFrame.new(-1897, 14, -11576))
                elseif _G.SelectIsland == "Candy Cane Island" then
                    topos(CFrame.new(-1038, 10, -14076))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    topos(CFrame.new(-16224, 9, 439))
                end
            until not _G.TeleportIsland
        end
        StopTween(_G.TeleportIsland)
    end})
        
    T:Section("Dịch Chuyển")
    
    if World1 then
        T:Dropdown({
            Name = "Chọn Đảo",
            Default = false,
            Options = {
                "Sky Island 1", "Sky Island 2", "Under Water Island", "Under Water Island Entrace"
            },
            Callback = function(V)
                _G.SelectFast = V
            end
        })
    end
    
    if World2 then
        T:Dropdown({
            Name = "Chọn Đảo",
            Default = false,
            Options = {
                "Flamingo Mansion", "Flamingo Room", "Cursed Ship", "Zombie Island"
            },
            Callback = function(V)
                _G.SelectFast = V
            end
        })
    end
    
    if World3 then
        T:Dropdown({
            Name = "Chọn Đảo",
            Default = false,
            Options = {
                "Mansion", "Hydra Island", "Castle on the Sea", "Floating Turtle", "Beautiful Pirate"
            },
            Callback = function(V)
                _G.SelectFast = V
            end
        })
    end
    
    T:Toggle({"Dịch Chuyển Lại Đảo Đã Chọn",false,function(V)
        _G.TeleFast = V
        if _G.TeleFast == true then
            repeat wait()
                if _G.SelectFast == "Sky Island 1" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4652, 873, -1754))
                elseif _G.SelectFast == "Sky Island 2" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7895, 5547, -380))
                elseif _G.SelectFast == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61164, 5, 1820))
                elseif _G.SelectFast == "Under Water Island Entrace" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3865, 5, -1926))
                elseif _G.SelectFast == "Flamingo Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-317, 331, 597))
                elseif _G.SelectFast == "Flamingo Room" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2283, 15, 867))
                elseif _G.SelectFast == "Cursed Ship" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923, 125, 32853))
                elseif _G.SelectFast == "Zombie Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6509, 83, -133))
                elseif _G.SelectFast == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471, 374, -7551))
                elseif _G.SelectFast == "Hydra Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5662, 1013, -335))
                elseif _G.SelectFast == "Castle on the Sea" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5092, 315, -3130))
                elseif _G.SelectFast == "Floating Turtle" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12001, 332, -8861))
                elseif _G.SelectFast == "Beautiful Pirate" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5319, 23, -93))
                end
            until not _G.TeleFast
        end
    end})
    ------------------------------------------------------------------------------------------------------------------------------------
    S:Section("Khả Năng")
    
    S:Button({
        Name = "Buy Geppo [ 10,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
        end
    })
    
    S:Button({
        Name = "Buy Buso Haki [ 25,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
        end
    })
    
    S:Button({
        Name = "Buy Soru [ 25,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
        end
    })
    
    S:Button({
        Name = "Buy Observation Haki [ 750,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
        end
    })
    
    S:Toggle({"Tự Động Buy Abilities", false, function(t)
        Abilities = t
        while Abilities do wait(.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
        end
    end})
    
    S:Section("Cận Chiến")
    
    S:Button({
        Name = "Buy Black Leg [ 150,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
        end
    })
    
    S:Button({
        Name = "Buy Electro [ 550,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
        end
    })
    
    S:Button({
        Name = "Buy Fishman Karate [ 750,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
        end
    })
    
    S:Button({
        Name = "Buy Dragon Claw [ 1,500 Fragments ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
        end
    })
    
    S:Button({
        Name = "Buy Superhuman [ 3,000,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
        end
    })
    
    S:Button({
        Name = "Buy Death Step [ 5,000 Fragments 5,000,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
        end
    })
    
    S:Button({
        Name = "Buy Sharkman Karate [ 5,000 Fragments 2,500,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        end
    })
    
    S:Button({
        Name = "Buy Electric Claw [ 5,000 Fragments 3,000,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        end
    })
    
    S:Button({
        Name = "Buy Dragon Talon [ 5,000 Fragments 3,000,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
        end
    })
    
    S:Button({
        Name = "Buy God Human [ 5,000 Fragments 5,000,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        end
    })
    
    S:Button({
        Name = "Buy Sanguine Art [ 5,000 Fragments $5,000,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
        end
    })
    
    S:Section("Kiếm")
    
    S:Button({
        Name = "Cutlass [ 1,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
        end
    })
    
    S:Button({
        Name = "Katana [ 1,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
        end
    })
    
    S:Button({
        Name = "Iron Mace [ 25,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
        end
    })
    
    S:Button({
        Name = "Dual Katana [ 12,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
        end
    })
    
    S:Button({
        Name = "Triple Katana [ 60,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
        end
    })
    
    S:Button({
        Name = "Pipe [ 100,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
        end
    })
    
    S:Button({
        Name = "Dual-Headed Blade [ 400,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
        end
    })
    
    S:Button({
        Name = "Bisento [ 1,200,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
        end
    })
    
    S:Button({
        Name = "Soul Cane [ 750,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
        end
    })
    
    S:Button({
        Name = "Pole v.2 [ 5,000 Fragments ]",
        Callback = function()
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
        end
    })
    
    S:Toggle({"Rút Thanh Yama",false,function(V)
        _G.Yama = V
    end})
    
    spawn(function()
        while wait() do
            if _G.Yama then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    repeat wait(.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.Yama
                end
            end
        end
    end)
        
    S:Section("Súng")
    
    S:Button({
        Name = "Slingshot [ 5,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
        end
    })
    
    S:Button({
        Name = "Musket [ 8,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
        end
    })
    
    S:Button({
        Name = "Flintlock [ 10,500 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
        end
    })
    
    S:Button({
        Name = "Refined Slingshot [ 30,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
        end
    })
    
    S:Button({
        Name = "Refined Flintlock [ 65,000 Beli ]",
        Callback = function()
            local args = {
                [1] = "BuyItem",
                [2] = "Refined Flintlock"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    
    S:Button({
        Name = "Cannon [ 100,000 Beli ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
        end
    })
    
    S:Button({
        Name = "Kabucha [ 1,500 Fragments ]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
        end
    })
    
    S:Button({
        Name = "Bizarre Rifle [ 250 Ectoplasm ]",
        Callback = function()
            local A_1 = "Ectoplasm"
            local A_2 = "Buy"
            local A_3 = 1
            local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = "Ectoplasm"
            local A_2 = "Buy"
            local A_3 = 1
            local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
            Event:InvokeServer(A_1, A_2, A_3)
        end
    })
    
    S:Section("Khác")
    
    S:Button({
        Name = "Reset Stats (Use 2.5K Fragments)",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
        end
    })
    
    S:Button({
        Name = "Random Race (Use 3K Fragments)",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
        end
    })
    
    S:Button({
        Name = "Buy Cyborg (Use 2.5K Fragments)",
        Callback = function()
            local args = {
                [1] = "CyborgTrainer",
                [2] = "Buy"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    
    S:Section("Phụ Kiện")
    
    S:Button({
        Name = "Black Cape [ 50,000 Beli ]",
        Callback = function()
            local args = {
                [1] = "BuyItem",
                [2] = "Black Cape"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    
    S:Button({
        Name = "Swordsman Hat [ 150k Beli ]",
        Callback = function()
            local args = {
                [1] = "BuyItem",
                [2] = "Swordsman Hat"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    
    S:Button({
        Name = "Tomoe Ring [ 500k Beli ]",
        Callback = function()
            local args = {
                [1] = "BuyItem",
                [2] = "Tomoe Ring"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    ------------------------------------------------------------------------------------------------------------------------------------
    D:Section("Sniper")
        
    FruitList = {
        "Bomb-Bomb",
        "Spike-Spike",
        "Chop-Chop",
        "Spring-Spring",
        "Kilo-Kilo",
        "Spin-Spin",
        "Bird: Falcon",
        "Smoke-Smoke",
        "Flame-Flame",
        "Ice-Ice",
        "Sand-Sand",
        "Dark-Dark",
        "Revive-Revive",
        "Diamond-Diamond",
        "Light-Light",
        "Love-Love",
        "Rubber-Rubber",
        "Barrier-Barrier",
        "Magma-Magma",
        "Door-Door",
        "Quake-Quake",
        "Human-Human: Buddha",
        "String-String",
        "Bird-Bird: Phoenix",
        "Rumble-Rumble",
        "Paw-Paw",
        "Gravity-Gravity",
        "Dough-Dough",
        "Venom-Venom",
        "Shadow-Shadow",
        "Control-Control",
        "Soul-Soul",
        "Dragon-Dragon",
        "Leopard-Leopard"
    }
    
    local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
    Table_DevilFruitSniper = {}
    ShopDevilSell = {}
    for i,v in next,Remote_GetFruits do
        table.insert(Table_DevilFruitSniper,v.Name)
        if v.OnSale then 
            table.insert(ShopDevilSell,v.Name)
        end
    end
    
    D:Dropdown({
        Name = "Chọn Trái Cây",
        Default = false,
        Options = Table_DevilFruitSniper,
        Callback = function(V)
            _G.SelectFruit = V
        end
    })
    
    D:Toggle({"Tự Động Mua Trái Đã Chọn",false,function(V)
        _G.BuyFruitSniper = V
    end})
    
    D:Section("Khác")
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.BuyFruitSniper then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit","_G.SelectFruit",false)
                end 
            end
        end)
    end)
        
    D:Button({
        Name = "Quay Trái",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
        end
    })
    
    local MirageStock = D:Paragraph({
        Title = "Đảo Bí Ẩn Sell",
        Desc = ""
    })
    
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Remotes = ReplicatedStorage.Remotes
    local Event = Remotes["CommF_"]
    local result = Event:InvokeServer("GetFruits", true)
    local fruitsOnSale = {}
    function addCommas(number)
        local formatted = tostring(number)
        while true do
            formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", '%1,%2')
            if k == 0 then break end
        end
        return formatted
    end
    
    local content = ""
    for _, fruitData in pairs(result) do
        if fruitData["OnSale"] == true then
            local priceWithCommas = addCommas(fruitData["Price"])
            local fruitInfo = fruitData["Name"] .. " - $" .. priceWithCommas
            table.insert(fruitsOnSale, fruitInfo)
        end
    end
    content = table.concat(fruitsOnSale, "\n")
    MirageStock:Set(content)
    
    D:Toggle({"Tự Động Cất Trái",false,function(V)
        _G.StoreFruit = V
    end})
    
    spawn(function()
        while wait() do
            if _G.StoreFruit then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                    end
                end)
             end
         end
    end)   
        
    D:Toggle({"Dịch Chuyển Lại Nhặt Trái",false,function(V)
        _G.Grabfruit = V
    end})
    
    spawn(function()
        while wait(.1) do
            if _G.Grabfruit then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v:IsA("Tool") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                    end
                end
            end
        end
    end)
        
    D:Toggle({"Bay Lại Nhặt Trái",false,function(V)
        _G.Tweenfruit = V
        StopTween(_G.Tweenfruit)
    end})
        
    spawn(function()
        while wait() do
            if _G.Tweenfruit then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v:IsA("Tool") then
                        topos(v.Handle.CFrame)
                    end
                end
            end
        end
    end)
    ------------------------------------------------------------------------------------------------------------------------------------
    Mc:Section("Máy Chủ")
    
    Mc:Button({
        Name = "Tham Gia Lại",
        Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
    })
    
    Mc:Button({
        Name = "Đổi Máy Chủ",
        Callback = function()
            Hop()
        end
    })
    
    Mc:Button({
        Name = "Đổi Máy Chủ Ít Người",
        Callback = function()
            Hop()
        end
    })
    
    Mc:Button({
        Name = "Sao Chép Id",
        Callback = function()
            setclipboard(tostring(game.JobId))
        end
    })
    
    Mc:TextBox({Name = "Nhập Id Máy Chủ",Default = "",PlaceholderText = "Job ID",Callback = function(V)
       _G.Job = V
    end})
       
    Mc:Button({
        Name = "Vào Máy Chủ Đã Nhập",
        Callback = function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
        end
    })
    
    Mc:Section("Khác")
    
    Mc:Button({
        Name = "Mở Danh Hiệu",
        Callback = function()
        local args = { "getTitles" }
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
           game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
        end
    })
    
    Mc:Button({
        Name = "Mở Bản Haki",
        Callback = function()
            game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
        end
    })
    
    Mc:Section("Phe")
    
    Mc:Button({
        Name = "Vaod Hải Tặc",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
        end
    })
    
    Mc:Button({
        Name = "Vào Hải Quân",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
        end
    })
    
    Mc:Section("Khác")
    
    Mc:Toggle({"Chống Kick", true, function()
    local vu = game:GetService("VirtualUser")
    repeat wait() until game:IsLoaded() 
        game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       end)
    end})
        
    Mc:Section("Code")
    
    local x2Code = {
        "NOMOREHACK", "BANEXPLOIT", "WildDares", "BossBuild", "GetPranked", 
        "EARN_FRUITS", "FIGHT4FRUIT", "NOEXPLOITER", "NOOB2ADMIN", "CODESLIDE", 
        "ADMINHACKED", "ADMINDARES", "fruitconcepts", "krazydares", "TRIPLEABUSE", 
        "SEATROLLING", "24NOADMIN", "REWARDFUN", "Chandler", "NEWTROLL", 
        "KITT_RESET", "Sub2CaptainMaui", "kittgaming", "Sub2Fer999", "Enyu_is_Pro", 
        "Magicbus", "JCWK", "Starcodeheo", "Bluxxy", "fudd10_v2", 
        "SUB2GAMERROBOT_EXP1", "Sub2NoobMaster123", "Sub2UncleKizaru", "Sub2Daigrock", 
        "Axiore", "TantaiGaming", "StrawHatMaine", "Sub2OfficialNoobie", "Fudd10", 
        "Bignews", "TheGreatAce", "SECRET_ADMIN", "SUB2GAMERROBOT_RESET1", 
        "SUB2OFFICIALNOOBIE", "AXIORE", "BIGNEWS", "BLUXXY", "CHANDLER", 
        "ENYU_IS_PRO", "FUDD10", "FUDD10_V2", "KITTGAMING", "MAGICBUS", 
        "STARCODEHEO", "STRAWHATMAINE", "SUB2CAPTAINMAUI", "SUB2DAIGROCK", 
        "SUB2FER999", "SUB2NOOBMASTER123", "SUB2UNCLEKIZARU", "TANTAIGAMING", 
        "THEGREATACE"
    }
        
    Mc:Button({
        Name = "Nhập Tất Cả Code",
        Callback = function()
            function RedeemCode(V)
                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(V)
            end
            for i, v in pairs(x2Code) do
                RedeemCode(v)
            end
        end
    })
    
    Mc:Section("Haki")
    
    Mc:Dropdown({
        Name = "Chọn Cấp Độ Haki",
        Default = false,
        Options = {"Cấp 0", "Cấp 1", "Cấp 2", "Cấp 3", "Cấp 4", "Cấp 5"},
        Callback = function(V)
            _G.SelectStateHaki = V
        end
    })
    
    Mc:Button({
        Name = "Bậc Cấp Độ Đã Chọn",
        Callback = function()
            if _G.SelectStateHaki == "Cấp 0" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
            elseif _G.SelectStateHaki == "Cấp 1" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
            elseif _G.SelectStateHaki == "Cấp 2" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
            elseif _G.SelectStateHaki == "Cấp 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
            elseif _G.SelectStateHaki == "Cấp 4" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
            elseif _G.SelectStateHaki == "Cấp 5" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
            end
        end
    })
    
    
    Sea Event Đây Nha
    
    if World1 or World2 then
    E:Section("Go To The Third Sea")
    end
    
    if World3 then
    E:Button({
      Name = "Remove Fog",
      Callback = function()
        game:GetService("Lighting").LightingLayers:Destroy()
        game:GetService("Lighting").Sky:Destroy()
      end
    })
    
    local ListSeaBoat = {
        "Guardian",
        "PirateGrandBrigade",
        "MarineGrandBrigade",
        "PirateBrigade",
        "MarineBrigade",
        "PirateSloop",
        "MarineSloop",
        "BeastHunter"
    }
    
    E:Dropdown({
        Name = "Select Boat",
        Default = "PirateGrandBrigade",
        Options = ListSeaBoat,
        Callback = function(V)
            _G.SelectedBoat = V
        end
    })
    
    local ListSeaZone = {
        "Zone 1",
        "Zone 2",
        "Zone 3",
        "Zone 4",
        "Zone 5",
        "Zone 6",
        "Tiki Outpost",
        "Hydra Island"
    }
    _G.SelectedZone = "Zone 5"
    E:Dropdown({
        Name = "Select Zone",
        Default = _G.SelectedZone,
        Options = ListSeaZone,
        Callback = function(V)
            _G.SelectedZone = V
        end
    })
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.SelectedZone == "Zone 1" then
                    CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -2.36509201e-10, -0.991110802, -0.0569955558, 0.120211802)
                elseif _G.SelectedZone == "Zone 2" then
                    CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -4.15334017e-10, -0.949422479, -0.0606706589, 0.308084518)
                elseif _G.SelectedZone == "Zone 3" then
                    CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 2.70896673e-11, -0.925605655, -0.0370079502, 0.376675636)
                elseif _G.SelectedZone == "Zone 4" then
                    CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972)
                elseif _G.SelectedZone == "Zone 5" then
                    CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -1.39882339e-09, -0.981290519, -0.0365765914, -0.189026669)
                elseif _G.SelectedZone == "Zone 6" then
                    CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 2.02319411e-10, -0.99428153, -0.0651681125, -0.0846010372)
                elseif _G.SelectedZone == "Tiki Outpost" then
                    CFrameSelectedZone = CFrame.new(-16195, 0, 441)
                elseif _G.SelectedZone == "Hydra Island" then
                    CFrameSelectedZone = CFrame.new(5185, 0, 1670)
                end
            end
        end)
    end)
    
    getgenv().SpeedBoat = "300"
    E:Dropdown({
        Name = "Speed Tween Boat",
        Default = getgenv().SpeedBoat,
        Options = {"180", "200", "250", "300", "325", "350"},
        Callback = function(V)
            getgenv().SpeedBoat = V
        end
    })
    
    getgenv().PosYBoat = 40
    E:Slider({"PosY Boat", 40, 250, 5, 40, function(V)
        getgenv().PosYBoat = V
    end})
    
    E:Toggle({"Start Sea Event",false,function(V)
        _G.SailBoat = V
    end})
        
    function CheckBoat()
        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            if v.Name == _G.SelectedBoat then
                for _, child in pairs(v:GetChildren()) do
                    if child.Name == "MyBoatEsp" then
                        return v
                    end
                end
            end
        end
        return false
    end
    
    function CheckEnemiesBoat()
        if (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade")) then
            return true
        end
        return false
    end
    
    function CheckShark()
        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == "Shark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
                        return true
                    end
                end
            end
        end
        return false
    end
    
    function CheckPiranha()
        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == "Piranha" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
                        return true
                    end
                end
            end
        end
        return false
    end
    
    function AddEsp(Name, Parent)
        local BillboardGui = Instance.new("BillboardGui")
        local TextLabel = Instance.new("TextLabel")
    
        BillboardGui.Parent = Parent
        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        BillboardGui.Active = true
        BillboardGui.Name = Name
        BillboardGui.AlwaysOnTop = true
        BillboardGui.LightInfluence = 1.000
        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
    
        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 15
        TextLabel.Text = "Your Ship"
    end
        
    spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                    if not CheckBoat() then
                        local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)
                        if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                            TP1(CFrame.new(-16224, 9, 439))
                        else
                            stoppos = TP2(BuyBoatCFrame)
                        end
                        if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            if stoppos then stoppos:Stop() end
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                            for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                if v.Name == _G.SelectedBoat then
                                    if (v.VehicleSeat.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                        AddEsp('MyBoatEsp', v)
                                    end
                                end
                            end
                        end
                    else
                        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                            if v.Name == _G.SelectedBoat then
                                if v:FindFirstChild("MyBoatEsp") then
                                    if not game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit then
                                        if ((CheckShark() and FarmShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.Terrorshark) or (CheckPiranha() and _G.farmpiranya) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.Fish_Crew_Member) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.bjirFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.KillGhostShip) or (CheckSeaBeast() and _G.SeaBest)) then
                                            if stoppos then stoppos:Stop() end
                                        else
                                            stoppos = TP2(v.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                        end
                                    else
                                        repeat wait()
                                            stopboat = TPB(CFrameSelectedZone, v.VehicleSeat)
                                        until ((CheckShark() and FarmShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.Terrorshark) or (CheckPiranha() and _G.farmpiranya) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.Fish_Crew_Member) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.bjirFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.KillGhostShip) or (CheckSeaBeast() and _G.SeaBest)) or not game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit or not _G.SailBoat
                                        if stopboat then stopboat:Stop() end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                                        wait(0.1)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.SailBoat then
                    if ((CheckShark() and FarmShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.Terrorshark) or (CheckPiranha() and _G.farmpiranya) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.Fish_Crew_Member) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.bjirFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.KillGhostShip) or (CheckSeaBeast() and _G.SeaBest)) then
                        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                            wait(0.1)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                        end
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.Fish_Crew_Member then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                                if v.Name == "Fish Crew Member" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP2(v.HumanoidRootPart.CFrame * Pos)
                                        NeedAttacking = true
                                        _G.SeaSkill = false
                                    until not _G.Fish_Crew_Member or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.bjirFishBoat then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
                                repeat task.wait()
                                    local BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    TP2(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or not v:FindFirstChild("Engine") or not _G.bjirFishBoat
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.KillGhostShip then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") then
                                repeat task.wait()
                                    local BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    TP2(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") or not v:FindFirstChild("Engine") or not _G.KillGhostShip
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") then
                                repeat task.wait()
                                    local BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    TP2(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or not v:FindFirstChild("Engine") or not _G.RelzPirateBrigade
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif CheckSeaBeast() and _G.SeaBest then
                        if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
                            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                if CheckSeaBeast() then
                                repeat wait()
                                    CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0,200,0)
                                    if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 200 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    Skillaimbot = true
                                    AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
                                    TP2(CFrameSeaBeast * Pos)
                                until not _G.SeaBest or CheckSeaBeast() == false or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 or not v.Parent
                                Skillaimbot = false
                                _G.SeaSkill = false
                                else
                                Skillaimbot = false
                                _G.SeaSkill = false
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.Terrorshark then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                                if v.Name == "Terrorshark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait(0.15)
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            NeedAttacking = true
                                            _G.SeaSkill = false
                                            TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0))
                                        until not  _G.Terrorshark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    elseif CheckPiranha() and _G.farmpiranya then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                                if v.Name == "Piranha" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP2(v.HumanoidRootPart.CFrame * Pos)
                                        NeedAttacking = true
                                        _G.SeaSkill = false
                                    until not _G.farmpiranya or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    elseif CheckShark() and FarmShark then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                                if v.Name == "Shark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP2(v.HumanoidRootPart.CFrame * Pos)
                                        NeedAttacking = true
                                        _G.SeaSkill = false
                                    until not FarmShark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    else
                        Skillaimbot = false
                        _G.SeaSkill = false
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        end
    end)
    
    E:Toggle({"Auto Kill Shark",false,function(V)
        FarmShark = V
        StopTween(FarmShark)
    end})
    
    E:Toggle({"Auto Kill Piranha",false,function(V)
        _G.farmpiranya = V
        StopTween(_G.farmpiranya)
    end})
    
    E:Toggle({"Auto Fish Crew",false,function(V)
        _G.Fish_Crew_Member = V
        StopTween(_G.Fish_Crew_Member)
    end})
    
    -- spawn(function()
    --     while wait() do
    --         pcall(function()
    --             if FarmShark and  World3 then
    --                 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    --                     if v.Name == "Shark" then
    --                         if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
    --                         if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
    --                         if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    --                             repeat task.wait()
    --                                 AutoHaki()
    --                                 EquipWeapon(_G.SelectWeapon)
    --                                 
    --                                 v.HumanoidRootPart.CanCollide = false
    --                                 TP2(v.HumanoidRootPart.CFrame * Pos)
    --                                 NeedAttacking = true
                                    -- sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    --                             until not FarmShark or not v.Parent or v.Humanoid.Health <= 0
    --                         end
    --                         end
    --                         end
    --                     end
    --                 end
    --             end
    --         end)
    --     end
    -- end)
    -- spawn(function()
    --     while wait() do
    --         pcall(function()
    --             if _G.farmpiranya and World3 then
    --                 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    --                     if v.Name == "Piranha" then
    --                         if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
    --                         if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
    --                         if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    --                             repeat task.wait()
    --                                 AutoHaki()
    --                                 EquipWeapon(_G.SelectWeapon)
    --                                 
    --                                 v.HumanoidRootPart.CanCollide = false
    --                                 TP2(v.HumanoidRootPart.CFrame * Pos)
    --                                 NeedAttacking = true
    --                             until not _G.farmpiranya or not v.Parent or v.Humanoid.Health <= 0
    --                         end
    --                         end
    --                         end
    --                     end
    --                 end
    --             end
    --         end)
    --     end
    -- end)
    -- spawn(function()
    --     while wait() do
    --         pcall(function()
    --             if _G.Fish_Crew_Member and  World3 then
    --                 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    --                     if v.Name == "Fish Crew Member" then
    --                         if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
    --                         if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
    --                         if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    --                             repeat task.wait()
    --                                 AutoHaki()
    --                                 EquipWeapon(_G.SelectWeapon)
    --                                 v.HumanoidRootPart.CanCollide = false
    --                                 
    --                                 TP2(v.HumanoidRootPart.CFrame * Pos)
    --                                 NeedAttacking = true
    --                                 StartMagnet = true
    --                                 MonFarm = v.Name
    --                                 PosMon = v.HumanoidRootPart.CFrame
    --                             until not _G.Fish_Crew_Member or not v.Parent or v.Humanoid.Health <= 0
    --                         end
    --                         end
    --                         end
    --                     end
    --                 end
    --             end
    --         end)
    --     end
    -- end)
    -- spawn(function()
    --     while wait() do
    --         if  _G.Terrorshark and World3 then
    --             pcall(function()
    --                 if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
    --                     for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    --                         if v.Name == "Terrorshark" then
    --                             if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    --                                 repeat task.wait()
    --                                     AutoHaki()
    --                                     EquipWeapon(_G.SelectWeapon)
    --                                     v.HumanoidRootPart.CanCollide = false
    --                                     v.Humanoid.WalkSpeed = 0
    --                                     
    --                                     NeedAttacking = true
    --                                     if game.Players.LocalPlayer.Character.Humanoid.Health < 2000 then
    --                                         fastpos(v.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0))
    --                                         wait(10)
    --                                     else
    --                                         TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 55, 0))
    --                                     end
    --                                     TerrorSharkpos = v.HumanoidRootPart.CFrame
    --                                 until not  _G.Terrorshark or not v.Parent or v.Humanoid.Health <= 0
    --                             end
    --                         end
    --                     end
    --                 end
    --             end)
    --         end
    --     end
    -- end)
    -- spawn(function()
    --     while wait() do
    --         pcall(function()
    --             if _G.Terrorshark then
    --                 if (game:GetService("Workspace").Enemies["Terrorshark"].HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 150 then
    --                     repeat wait()
    --                     NeedAttacking = true
    --                     until not _G.Terrorshark
    --                 end
    --             end
    --         end)
    --     end
    -- end)
        
    function UpDownPos(pos)
        fastpos(pos * CFrame.new(0, 40, 0))
        wait(2)
        fastpos(pos * CFrame.new(0, 300, 0))
        wait(3)
    end
       
    E:Toggle({"Auto Kill Ghost Ship",false,function(V)
        _G.bjirFishBoat = V
        StopTween(_G.bjirFishBoat)
        if not _G.bjirFishBoat then
        _G.SeaSkill = false
        Skillaimbot = false
            StopTween(_G.bjirFishBoat)
        end
    end})
        
    E:Toggle({"Auto Kill Pirate Grand Brigade",false,function(V)
        _G.KillGhostShip = V
        StopTween(_G.KillGhostShip)
    end})
        
    --     spawn(function()
    --         while wait() do
    --             pcall(function()
    --                 if _G.bjirFishBoat then
    --                     for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    --                         if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
    --                             repeat task.wait()
    --                                 CFrameFishBoat = v.Engine.CFrame * CFrame.new(0, 10, 0)
    --                                 if (v.Engine.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
    --                                     _G.SeaSkill = true
    --                                 else
    --                                     _G.SeaSkill = false
    --                                 end
    --                                 TP2(CFrameFishBoat)
    --                                 Skillaimbot = true
    --                                 AimBotSkillPosition = v.Engine.Position
    --                             until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or not v:FindFirstChild("Engine") or not _G.bjirFishBoat
    --                             Skillaimbot = false
    --                             _G.SeaSkill = false
    --                         end
    --                     end
    --                 end
    --             end)
    --         end
    --     end)
        
    E:Toggle({"Auto Kill Terror Shark",false,function(V)
        _G.Terrorshark = V
        StopTween(_G.Terrorshark)
    end})
        
    E:Toggle({"Auto Kill Sea Beast",false,function(V)
        _G.SeaBest = V
        StopTween(_G.SeaBest)
        if not _G.SeaBest then
            _G.SeaSkill = false
            Skillaimbot = false
        end
    end})
    
    function CheckSeaBeast()
        if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 then
                    return true
                end
            end
        end
        return false
    end
    
    -- spawn(function()
    --     while wait() do
    --         if _G.SeaBest then
    --                 pcall(function()
    --                 if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
    --                     for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
    --                         if CheckSeaBeast() then
    --                         repeat wait()
    --                             CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0,400,0)
    --                             if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 50 then
    --                                 _G.SeaSkill = true
    --                             else
    --                                 _G.SeaSkill = false
    --                             end
    --                             Skillaimbot = true
    --                             AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
    --                             TP2(CFrameSeaBeast)
    --                         until not _G.SeaBest or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 or not v.Parent
    --                         Skillaimbot = false
    --                         _G.SeaSkill = false
    --                         end
    --                     end
    --                 end
    --                 end)
    --             end
    --         end
    --     end)
            
    E:Section("Setting Sea Event")
    
    local ListBright = {
        "100",
        "150",
        "200",
        "250",
        "300",
        "325",
        "350"
    }
    BrightValue = "100"
    E:Dropdown({
        Name = "Select Brightness",
        Default = BrightValue,
        Options = ListBright,
        Callback = function(V)
            BrightValue = V
        end
    })
    
    E:Button({
      Name = "Set Brightness",
      Callback = function()
        game:GetService("Lighting").Brightness = BrightValue
      end
    })
    
    E:Toggle({"Enable Speed Boat",false,function(V)
        _G.IncreaseBoatSpeed = V
    end})
    
    spawn(function()
        while wait() do 
            pcall(function()
                local vehicleSeats = {}
                for i, v in pairs(game.Workspace.Boats:GetDescendants()) do
                    if v:IsA("VehicleSeat") then
                        table.insert(vehicleSeats, v)
                    end
                end
                if _G.IncreaseBoatSpeed then
                    for _, v in pairs(vehicleSeats) do
                        v.MaxSpeed = 350
                    end
                else
                    for _, v in pairs(vehicleSeats) do
                        v.MaxSpeed = 150
                    end
                end
            end)
        end
    end)
                
    E:Toggle({"Enable Fly Boat", false, function(V)
        if V then
            _G.NoClipRock = true
            mobilefly(speaker, true)
        else
            _G.NoClipRock = false
            unmobilefly(speaker)
        end
    end})
                
    E:Toggle({"NoClip Rock",false,function(V)
        _G.NoClipRock = V
    end})
    
    spawn(function()
       while wait() do
           pcall(function()
                for i, boat in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                    for _, v in pairs(game:GetService("Workspace").Boats[boat.Name]:GetDescendants()) do
                        if v:IsA("BasePart") then
                            if _G.NoClipRock or _G.SailBoat then
                                v.CanCollide = false
                            else
                                v.CanCollide = true
                            end
                        end
                    end
                end
            end)
        end
    end)
                
    E:Toggle({"Press W Auto",false,function(V)
        _G.r71PressW = V
    end})
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.r71PressW then
                    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
                end
                end
            end)
        end
    end)
    DoneSkillGun = false
    DoneSkillSword = false
    DoneSkillFruit = false
    DoneSkillMelee = false
    spawn(function()
        while wait() do
            pcall(function()
                if _G.SeaSkill then
                    if _G.UseSeaFruitSkill and DoneSkillFruit == false then
                        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Blox Fruit" then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                        end
                    if _G.SkillFruitZ then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(_G.SeaHoldSKillZ)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
    
                    if _G.SkillFruitX then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                    wait(_G.SeaHoldSKillX)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                    
                    if _G.SkillFruitC then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                    wait(_G.SeaHoldSKillC)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                    end
    
                    if _G.SkillFruitV then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                    wait(_G.SeaHoldSKillV)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                    end
    
                    if _G.SkillFruitF then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
                    wait(_G.SeaHoldSKillF)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
                    end
    
                    DoneSkillFruit = true
                    end
    
                    if _G.UseSeaMeleeSkill and DoneSkillMelee == false then 
                        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Melee" then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                        end
                        if _G.SkillMeleeZ then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(0)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                        end
        
                        if _G.SkillMeleeX then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(0)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                        end
                        
                        if _G.SkillMeleeC then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                        wait(0)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                        end
        
                        if _G.SkillMeleeV then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                        wait(0)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                        end
    
                        DoneSkillMelee = true
                    end
    
                    if _G.UseSeaSwordSkill and DoneSkillSword == false then 
                        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Sword" then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                        end
                        if _G.SkillSwordZ then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(0)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                        end
        
                        if _G.SkillSwordX then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(0)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                        end
    
                        DoneSkillSword = true
                    end
    
                    if _G.UseSeaGunSkill and DoneSkillGun == false then 
                        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Gun" then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                        end
                        if _G.SkillGunZ then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                        end
        
                        if _G.SkillGunX then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                        end
    
                        DoneSkillGun = true
                    end
    
                    DoneSkillGun = false
                    DoneSkillSword = false
                    DoneSkillFruit = false
                    DoneSkillMelee = false
                end
            end)
        end
    end)
                
    E:Section("Kitsune Event")
    
    E:Toggle({"Teleporter Kitsune", false, function(V)
        _G.FKitsune = V
        StopTween(_G.FKitsune)
    end})
    
    spawn(function()
        while wait() do
            if _G.FKitsune then
                local kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
                if kitsuneIsland then
                    topos(kitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0, 0, 10))
                end
            end
        end
    end)
    
    E:Toggle({"Auto Collect Azure Ember", false, function(V)
        _G.CltAze = V
    end})
    
    spawn(function()
        while wait() do
            if _G.CltAze then
                pcall(function()
                    if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                        fastpos(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                    end
                end)
             end
         end
    end)
    
    E:Slider({"Set Azure Ember", 5, 25, 5, 20, function(V)
        _G.SetToTradeAureEmber = V
    end})
    
    E:Toggle({"Auto Trade Azure Ember", false, function(V)
        _G.TradeAureEmber = V
    end})
    
    function GetCountMaterials(MaterialName)
        local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
        for i, v in pairs(Inventory) do
            if v.Name == MaterialName then
                return v["Count"]
            end
        end
    end
    
    spawn(function()
        while wait() do
            if _G.TradeAureEmber then
                pcall(function()
                    local AzureAvilable = GetCountMaterials("Azure Ember")
                    if AzureAvilable >= _G.SetToTradeAureEmber then
                        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KitsuneStatuePray")
                    end
                end)
            end
        end
    end)    