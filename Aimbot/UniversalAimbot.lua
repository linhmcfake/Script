--[[ OPEN SOURCE ]]--
local a,

b,
c,
d,
e=loadstring(game:HttpGet"https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua")(),game:GetService"Players",game:GetService"RunService",game:GetService"UserInputService",workspace.CurrentCamera
local f,

g,
h,
i,
j,
k,
l,
m=b.LocalPlayer,math.sin,math.huge,tick,Vector2.new,Vector3.new,Color3.fromRGB,CFrame.new

local n,
o,
p,
q,

r,
s,
t,
u,
v,

w,

x=j(e.ViewportSize.X/2,e.ViewportSize.Y/2),nil,0,k(0,0,0),Color3.fromHex"#83889E",Color3.fromHex"#10C550",Color3.fromHex"#257AF7",Color3.fromHex"#ECA201",Color3.fromHex"#EF4F1D","1.1",{
Aimbot={
Enabled=false,
AimPart="Nearest",
FOV=100,
Sensitivity=1,
SmoothAiming=true,
BulletPrediction=false,
WallCheck=true,
TeamCheck=true,
OutfitCheck=false,
SkipDeadPlayers=true,
ESP_Enabled=false,
ESP_Skeleton=false,
ESP_Box=false,
ESP_AimPart=false,
ESP_SkipTeam=false,
ESP_RGB_NoTeam=false,
ESP_Name_Enabled=false,
FOV_RGB_Enabled=false,
FOV_RGB_Speed=2,
FOV_Color={255,0,0},
LockDuration=0.5,
AimStrength=0.85,
PredictionMultiplier=0.15
},
Hitbox={
Enabled=false,
TeamCheck=false,
Size=10
},
Overlay={
Enabled=false,
FontSize=18,
Transparency=1,
ShowAimAssistState=false,
ShowTeam=false,
ShowClosestEnemy=false,
ShowAimingTarget=false,
ShowAimingPart=false,
ShowKeysHeld=false
},
Settings={
ignoreThroughParts=false
}
}

local y,
z,
A,
B,
C,
D,
E,
F,
G,

H=x.Aimbot,x.Aimbot.ESP_Name_Enabled,x.Settings.ignoreThroughParts,x.Aimbot.FOV_RGB_Enabled,x.Aimbot.FOV_RGB_Speed,x.Hitbox.Enabled,x.Hitbox.TeamCheck,x.Hitbox.Size,x.Overlay,Drawing.new"Circle"
H.Color=l(255,0,0)
H.Thickness=1
H.Filled=false
H.Radius=x.Aimbot.FOV
H.Position=j(e.ViewportSize.X/2,e.ViewportSize.Y/2)
H.Visible=false

local I=Drawing.new"Text"
I.Visible=false
I.Color=l(255,255,255)
I.Size=18
I.Outline=true
I.Center=false
I.Font=2
I.Position=j(10,10)

local J,K,L=unpack(x.Aimbot.FOV_Color)

local M=function()
H.Color=l(J,K,L)
end
M()

local N={}
d.InputBegan:Connect(function(O,P)
if not P and O.UserInputType==Enum.UserInputType.Keyboard then
N[O.KeyCode.Name]=true
end
end)
d.InputEnded:Connect(function(O,P)
if not P and O.UserInputType==Enum.UserInputType.Keyboard then
N[O.KeyCode.Name]=nil
end
end)

local O,








P,
Q,
R=function(O)local P=i()local Q=P*(O or 2)local R,S,T=g(Q)*127+128,g(Q+2)*127+128,g(Q+4)*127+128 return l(R,S,T)end,{},{},5

local S,

















T,





U,
V,
W=function(S)if not S or not S.Character then return nil end local T,U=i(),S.UserId if P[U]and Q[U]and(T-Q[U])<R then return P[U]end local V,W,X={},S.Character:FindFirstChildOfClass"Shirt",S.Character:FindFirstChildOfClass"Pants"V.shirt=W and W.ShirtTemplate or""V.pants=X and X.PantsTemplate or""P[U]=V Q[U]=T return V end,function(S,T)if not S or not T then return false end return S.shirt~=""and S.pants~=""and S.shirt==T.shirt and S.pants==T.pants end,nil,0,2

local aa,














ab,






ac,





ad=function()local X=i()if U==nil or(X-V)>=W then V=X U=false for Y,Z in ipairs(b:GetPlayers())do if Z.Team~=nil then U=true break end end end return U end,function(X)if not y.OutfitCheck then return false end local Y,Z=S(f),S(X)return T(Y,Z)end,function(X)if not X or not X.Character then return false end local Y=X.Character:FindFirstChildOfClass"Humanoid"return Y and Y.Health>0 end,function(X,Y)
local Z=(X.Position-Y)
local _=Z.Magnitude
if _<1 then return true end
local aa=RaycastParams.new()
aa.FilterType=Enum.RaycastFilterType.Blacklist
local ab={f.Character,e}
aa.FilterDescendantsInstances=ab
aa.IgnoreWater=true
local ac=Z.Unit*(_-0.1)
local ad=workspace:Raycast(Y,ac,aa)
if not ad then return true end
local ae=ad.Instance
if ae and ae.Parent then
for af,ag in ipairs(b:GetPlayers())do
if ag.Team and f.Team and ag.Team==f.Team and ag.Character and ae:IsDescendantOf(ag.Character)then
return false
end
end
if A and(
ae.CanCollide==false or
ae.Transparency>0.9 or
(ae.Name=="Glass"or ae.Name=="Water"or ae.Name=="Air"or ae.Name=="PartCanShootThrough")
)then
local af=ad.Position+Z.Unit*0.01
local ag=(X.Position-af)
if ag.Magnitude>1 then
return IsVisibleCustom(X,af)
end
end
return ae:IsDescendantOf(X.Parent)or ae.Parent==X.Parent
end
return false
end

local ae,



af,


















ag=function(ae)return ad(ae,e.CFrame.Position)end,function(ae)local af,ag,X={"Head","Torso","HumanoidRootPart","UpperTorso","LowerTorso"},h for Y,Z in ipairs(af)do local _=ae:FindFirstChild(Z)if _ then local ah,ai=e:WorldToViewportPoint(_.Position)if ai and ah.Z>0 then local aj=(j(ah.X,ah.Y)-n).Magnitude if aj<ag then ag=aj X=_ end end end end return X end,function()
local ae,af=h
local ag=aa()
for ah,ai in ipairs(b:GetPlayers())do local aj=false repeat
if ai~=f and ai.Character and ai.Character:FindFirstChild"HumanoidRootPart"then
if y.SkipDeadPlayers and not ac(ai)then aj=true break end
if y.TeamCheck and ag and ai.Team==f.Team then aj=true break end
if ab(ai)then aj=true break end
local X=(ai.Character.HumanoidRootPart.Position-e.CFrame.Position).Magnitude
if X<ae then
ae=X
af=ai
end
end aj=true until true if not aj then break end
end
return af
end

local ah,


















































ai,



























aj,
ak=function()local ah,ai=h local aj=aa()for X,Y in ipairs(b:GetPlayers())do local Z=false repeat if Y~=f and Y.Character then if y.SkipDeadPlayers and not ac(Y)then Z=true break end if y.TeamCheck and aj and Y.Team==f.Team then Z=true break end if ab(Y)then Z=true break end local _ if y.AimPart=="Nearest"then _=af(Y.Character)else _=Y.Character:FindFirstChild(y.AimPart)if not _ then local ak={Torso={"Torso","UpperTorso","LowerTorso"},UpperTorso={"UpperTorso","Torso"},LowerTorso={"LowerTorso","Torso"},HumanoidRootPart={"HumanoidRootPart"},Head={"Head"}}local al=ak[y.AimPart]or{y.AimPart}for am,an in ipairs(al)do _=Y.Character:FindFirstChild(an)if _ then break end end if not _ then local am={"HumanoidRootPart","Torso","UpperTorso","Head"}for an,ao in ipairs(am)do _=Y.Character:FindFirstChild(ao)if _ then break end end end end end if _ then if y.WallCheck and not ae(_)then Z=true break end local ak,al=e:WorldToViewportPoint(_.Position)if al and ak.Z>0 then local am=(j(ak.X,ak.Y)-n).Magnitude if am<y.FOV and am<ah then ah=am ai=Y end end end end Z=true until true if not Z then break end end return ai end,function(ah)if not ah or not ah.Character then return nil end if y.AimPart=="Nearest"then return af(ah.Character)else local ai=ah.Character:FindFirstChild(y.AimPart)if ai then return ai end local aj={Torso={"Torso","UpperTorso","LowerTorso"},UpperTorso={"UpperTorso","Torso"},LowerTorso={"LowerTorso","Torso"},HumanoidRootPart={"HumanoidRootPart"},Head={"Head"}}local ak=aj[y.AimPart]or{y.AimPart}for al,am in ipairs(ak)do ai=ah.Character:FindFirstChild(am)if ai then return ai end end local al={"HumanoidRootPart","Torso","UpperTorso","Head"}for am,an in ipairs(al)do ai=ah.Character:FindFirstChild(an)if ai then return ai end end end return nil end,{},{}

local al,

































am,
















an,
ao,
X,
Y,
Z,
_,
ap,
aq,
ar,
as,
at,
au,
av,
aw,
ax,

ay=function(al)if al==f or not D then return end if E and al.Team~=nil and f.Team~=nil and al.Team==f.Team then return end local function updateHitbox()local am=al.Character local an,ao=am and am:FindFirstChildOfClass"Humanoid",am and am:FindFirstChild"HumanoidRootPart"if an and an.Health>0 and ao then if not aj[al]then aj[al]=ao.Size end ao.Size=k(F,F,F)ao.Transparency=0.9 ao.BrickColor=BrickColor.new"Really black"ao.Material=Enum.Material.Neon ao.CanCollide=false end end updateHitbox()if ak[al]then ak[al]:Disconnect()end ak[al]=c.Heartbeat:Connect(function()local am=al.Character local an,ao=am and am:FindFirstChildOfClass"Humanoid",am and am:FindFirstChild"HumanoidRootPart"if an and an.Health>0 and ao then ao.Size=k(F,F,F)ao.Transparency=0.9 ao.BrickColor=BrickColor.new"Really black"ao.Material=Enum.Material.Neon ao.CanCollide=false end end)end,function(al)if ak[al]then ak[al]:Disconnect()ak[al]=nil end local am=al.Character local an=am and am:FindFirstChild"HumanoidRootPart"if an and aj[al]then an.Size=aj[al]an.Transparency=1 an.BrickColor=BrickColor.new"Really black"an.Material=Enum.Material.Neon an.CanCollide=true end aj[al]=nil end,{},{},{lines={},skeletons={},names={}},{},{},{},{},{},{},0,6.666666666666666E-2,0,1.6666666666666665E-2,0,5E-2,function(al)
if y.ESP_RGB_NoTeam and(not al.Team or al.Team==nil)then
return O()
end
if al.Team and al.TeamColor then
return al.TeamColor.Color
else
return l(255,255,255)
end
end

local az,











aA=function()local az=table.remove(X.lines)if az then az.Visible=true return az else local aA=Drawing.new"Line"aA.Visible=true return aA end end,function(az)
if az then
az.Visible=false
table.insert(X.lines,az)
end
end

local aB,







aC,













aD,






aE,














aF,






aG,
















aH=function(aB)if aB then for aC,aD in ipairs(aB)do aA(aD)end end end,function()local aB=table.remove(_)if aB then aB.Visible=true return aB else local aC=Drawing.new"Quad"aC.Visible=true aC.Thickness=1.5 aC.Transparency=1 return aC end end,function(aB)if aB then aB.Visible=false table.insert(_,aB)end end,function()local aB=table.remove(ap)if aB then aB.Visible=true return aB else local aC=Drawing.new"Circle"aC.Visible=true aC.Radius=8 aC.Thickness=2 aC.Filled=false return aC end end,function(aB)if aB then aB.Visible=false table.insert(ap,aB)end end,function()local aB=table.remove(ar)if aB then aB.Visible=true return aB else local aC=Drawing.new"Text"aC.Visible=true aC.Size=16 aC.Outline=true aC.Center=true aC.Font=2 aC.Color=l(255,255,255)return aC end end,function(aB)
if aB then
aB.Visible=false
table.insert(ar,aB)
end
end

local aI,







































































































































































aJ,

aK,































aL,

































aM=function()local aI=i()if aI-aw<ax then return end aw=aI for aJ,aK in ipairs(an)do aA(aK)end an={}for aJ,aK in ipairs(ao)do aB(aK)end ao={}for aJ,aK in ipairs(Y)do aD(aK)end Y={}for aJ,aK in ipairs(Z)do aF(aK)end Z={}for aJ,aK in ipairs(aq)do aH(aK)end aq={}local aJ=aa()for aK,aL in ipairs(b:GetPlayers())do local aM=false repeat if aL~=f and aL.Character and aL.Character:FindFirstChild"HumanoidRootPart"then if y.SkipDeadPlayers and not ac(aL)then aM=true break end if y.ESP_SkipTeam and aJ and aL.Team==f.Team then aM=true break end local aN=aL.Character.HumanoidRootPart local aO,aP=e:WorldToViewportPoint(aN.Position)if aP and aO.Z>0 then local aQ=ay(aL)if y.ESP_Enabled then local aR=az()aR.From=j(e.ViewportSize.X/2,0)aR.To=j(aO.X,aO.Y)aR.Thickness=1 aR.Transparency=1 aR.Color=aQ table.insert(an,aR)end if y.ESP_Skeleton then local aR,aS,aT={},aL.Character,aQ local aU=function(aU,aV)local aW,aX=aS:FindFirstChild(aU),aS:FindFirstChild(aV)if aW and aX then local aY,aZ=e:WorldToViewportPoint(aW.Position)local a_,a0=e:WorldToViewportPoint(aX.Position)if aZ and a0 and aY.Z>0 and a_.Z>0 then local a1=az()a1.From=j(aY.X,aY.Y)a1.To=j(a_.X,a_.Y)a1.Color=aT a1.Thickness=1.5 a1.Transparency=0.8 table.insert(aR,a1)end end end if aS:FindFirstChild"UpperTorso"then aU("Head","UpperTorso")aU("UpperTorso","LowerTorso")aU("UpperTorso","LeftUpperArm")aU("LeftUpperArm","LeftLowerArm")aU("LeftLowerArm","LeftHand")aU("UpperTorso","RightUpperArm")aU("RightUpperArm","RightLowerArm")aU("RightLowerArm","RightHand")aU("LowerTorso","LeftUpperLeg")aU("LeftUpperLeg","LeftLowerLeg")aU("LeftLowerLeg","LeftFoot")aU("LowerTorso","RightUpperLeg")aU("RightUpperLeg","RightLowerLeg")aU("RightLowerLeg","RightFoot")else aU("Head","Torso")aU("Torso","Left Arm")aU("Torso","Right Arm")aU("Torso","Left Leg")aU("Torso","Right Leg")end table.insert(ao,aR)end if y.ESP_Box then local aR,aS=k(math.huge,math.huge,math.huge),k(-math.huge,-math.huge,-math.huge)for aT,aU in ipairs(aL.Character:GetChildren())do if aU:IsA"BasePart"then aR=k(math.min(aR.X,aU.Position.X-aU.Size.X/2),math.min(aR.Y,aU.Position.Y-aU.Size.Y/2),math.min(aR.Z,aU.Position.Z-aU.Size.Z/2))aS=k(math.max(aS.X,aU.Position.X+aU.Size.X/2),math.max(aS.Y,aU.Position.Y+aU.Size.Y/2),math.max(aS.Z,aU.Position.Z+aU.Size.Z/2))end end local aT,aU,aV={k(aR.X,aR.Y,aR.Z),k(aS.X,aR.Y,aR.Z),k(aS.X,aS.Y,aR.Z),k(aR.X,aS.Y,aR.Z),k(aR.X,aR.Y,aS.Z),k(aS.X,aR.Y,aS.Z),k(aS.X,aS.Y,aS.Z),k(aR.X,aS.Y,aS.Z),},{},false for aW,aX in ipairs(aT)do local aY,aZ=e:WorldToViewportPoint(aX)if aZ and aY.Z>0 then aV=true end table.insert(aU,j(aY.X,aY.Y))end if aV then local aW,aX,aY,aZ=math.huge,math.huge,-math.huge,-math.huge for a_,a0 in ipairs(aU)do aW=math.min(aW,a0.X)aX=math.min(aX,a0.Y)aY=math.max(aY,a0.X)aZ=math.max(aZ,a0.Y)end local a_=aC()a_.Color=aQ a_.PointA=j(aW,aX)a_.PointB=j(aY,aX)a_.PointC=j(aY,aZ)a_.PointD=j(aW,aZ)table.insert(Y,a_)end end if z then local aR=aG()aR.Text=aL.DisplayName or aL.Name aR.Color=aQ aR.Size=17 local aS=aL.Character:FindFirstChild"Head"if aS then local aT,aU=e:WorldToViewportPoint(aS.Position+k(0,0.8,0))if aU and aT.Z>0 then aR.Position=j(aT.X,aT.Y-16)else aR.Visible=false end else aR.Position=j(aO.X,aO.Y-16)end aR.Visible=true table.insert(aq,aR)end end end aM=true until true if not aM then break end end if y.ESP_AimPart and y.Enabled then local aK=ah()if aK then local aL=ai(aK)if aL then local aM,aN=e:WorldToViewportPoint(aL.Position)if aN and aM.Z>0 then local aO=aE()aO.Position=j(aM.X,aM.Y)aO.Color=l(255,0,0)aO.Visible=true table.insert(Z,aO)end end end end end,x.Aimbot.LockDuration or 0.5,function(aI,aJ)if not aI or not aJ then return false end if y.SkipDeadPlayers and not ac(aI)then return false end if y.TeamCheck and aa()and aI.Team==f.Team then return false end if ab(aI)then return false end if y.WallCheck and not ae(aJ)then return false end local aK,aL=e:WorldToViewportPoint(aJ.Position)if not aL or aK.Z<=0 then return false end local aM=(j(aK.X,aK.Y)-n).Magnitude if aM>y.FOV then return false end return true end,function()local aI,aJ,aK=nil,h,aa()for aL,aM in ipairs(b:GetPlayers())do local aN=false repeat if aM==f then aN=true break end if not aM.Character then aN=true break end local aO=ai(aM)if not aO then aN=true break end if y.SkipDeadPlayers and not ac(aM)then aN=true break end if y.TeamCheck and aK and aM.Team==f.Team then aN=true break end if ab(aM)then aN=true break end if y.WallCheck and not ae(aO)then aN=true break end local aP,aQ=e:WorldToViewportPoint(aO.Position)if not aQ or aP.Z<=0 then aN=true break end local aR=(j(aP.X,aP.Y)-n).Magnitude if aR>y.FOV then aN=true break end local aS=aR+(aO.Position-e.CFrame.Position).Magnitude*0.01 if aS<aJ then aJ=aS aI=aM end aN=true until true if not aN then break end end return aI end,function(aI,aJ)
if not aI or not aJ then return nil end

local aK=aJ.Position

if y.BulletPrediction then
local aL=aI.Character and aI.Character:FindFirstChild"HumanoidRootPart"
if aL then
local aM,
aN,
aO=aL.Velocity,(aK-e.CFrame.Position).Magnitude,1000
local aP,
aQ=aN/aO,x.Aimbot.PredictionMultiplier or 0.15
aK=aK+(aM*aP*aQ)
end
end

return aK
end

local aN=function(aN)
if not aN then return end

local aO=ai(aN)
if not aO then return end

if not aK(aN,aO)then
o=nil
return
end

local aP=aM(aN,aO)
if not aP then return end

local aQ=aN.Character and aN.Character:FindFirstChild"HumanoidRootPart"
if aQ then
q=aQ.Velocity
end

local aR=e.CFrame.Position
local aS=(aP-aR).Unit
local aT=m(aR,aR+aS)

if y.SmoothAiming then
local aU=y.Sensitivity

if f.Character then
local aV=f.Character:FindFirstChildOfClass"Humanoid"
if aV then
local aW=aV.MoveDirection
if aW.Magnitude>0.1 then
aU=math.min(aU*1.2,0.95)
end
end
end

local aV=(e.CFrame.LookVector-aS).Magnitude
if aV>0.5 then
aU=math.min(aU*1.3,0.95)
end

local aW=x.Aimbot.AimStrength or 0.85
aU=aU*aW
aU=math.clamp(aU,0.01,0.99)

e.CFrame=e.CFrame:Lerp(aT,aU)
else
e.CFrame=aT
end
end

c.RenderStepped:Connect(function()
local aO=i()
if aO-au<av then return end
au=aO

if aO-as>=at then
n=j(e.ViewportSize.X/2,e.ViewportSize.Y/2)
as=aO
end

if B then
H.Color=O(C)
end
H.Radius=y.FOV
H.Position=n
H.Visible=y.Enabled

if y.Enabled then
local aP=aL()

if aP then
if o and o~=aP then
local aQ=ai(o)
if aQ and aK(o,aQ)then
if aO-p<aJ then
aP=o
else
o=aP
p=aO
end
else
o=aP
p=aO
end
else
o=aP
p=aO
end
else
o=nil
p=0
end

if o then
aN(o)
end
else
o=nil
p=0
end

if G.Enabled then
I.Visible=true
I.Size=G.FontSize
I.Transparency=G.Transparency
I.Color=l(255,255,255)

local aP=""
if G.ShowAimAssistState then
local aQ=y.Enabled and"ENABLED"or"DISABLED"
aP=aP..("[Aimbot: %s]\n"):format(aQ)
end
if G.ShowTeam then
local aQ=(f.Team and f.Team.Name)or"none"
aP=aP..("Team: %s\n"):format(aQ)
end
if G.ShowClosestEnemy then
local aQ,
aR=ag(),"none"
if aQ then
local aS,
aT=aQ.DisplayName or aQ.Name,aQ.Name
aR=aS.." (@"..aT..")"
end
local aS=false
if aQ and aQ.Character then
local aT=aQ.Character:FindFirstChild"Stunned"
if aT and aT:IsA"BoolValue"then
aS=aT.Value
elseif aQ.Character:FindFirstChildOfClass"Humanoid"and aQ.Character.Humanoid:FindFirstChild"Stunned"then
local aU=aQ.Character.Humanoid.Stunned
if type(aU)=="boolean"then
aS=aU
elseif type(aU)=="number"then
aS=aU>0
elseif typeof(aU)=="Instance"and aU:IsA"BoolValue"then
aS=aU.Value
end
end
end
local aT=aS and"     [STUNNED]"or""
aP=aP..("Closest Enemy: %s%s\n"):format(aR,aT)
end
if G.ShowAimingTarget then
local aQ=o and(o.DisplayName or o.Name)or"none"
aP=aP..("Aiming Target: %s\n"):format(aQ)
end
if G.ShowAimingPart then
local aQ=o and ai(o)and ai(o).Name or"none"
aP=aP..("Aiming Part: %s\n"):format(aQ)
end
if G.ShowKeysHeld then
local aQ=""
for aR in pairs(N)do
aQ=aQ..aR.." "
end
if aQ==""then aQ="none"end
aP=aP..("Keys Held: %s"):format(aQ)
end
I.Text=aP
I.Position=j(10,10)
else
I.Visible=false
end
end)

c.RenderStepped:Connect(aI)

local aO=a:CreateWindow{
Title="Universal Aimbot",
Author="linhmc_new",
Folder="linhmc_new-aimbot",
Theme="Dark",
Size=UDim2.fromOffset(480,360),
OpenButton={
Title="OPEN",
Enabled=true,
Draggable=true,
Scale=1,
OnlyMobile=false
}
}

local aP,





aQ,





aR,





aS,





aT=aO:Tab{Title="Main",Icon="",IconColor=t},aO:Tab{Title="Overlay",Icon="",IconColor=u},aO:Tab{Title="Visual",Icon="",IconColor=s},aO:Tab{Title="Settings",Icon="",IconColor=r},aO:Tab{
Title="About",
Icon="",
IconColor=t
}

aT:Section{Title="About",TextSize=20}

aT:Paragraph{
Title="Universal Aimbot",
Desc="Author: linhmc_new\nVersion: "..w.."\nGitHub: https://github.com/linhmcfake",
Buttons={
{
Title="Copy GitHub Link",
Icon="github",
Callback=function()
if setclipboard then
setclipboard"https://github.com/linhmcfake"
a:Notify{Title="Copied!",Content="GitHub link copied!"}
else
a:Notify{Title="Error",Content="setclipboard not available"}
end
end
}
}
}

aP:Section{Title="Main",TextSize=14}
aP:Toggle{
Flag="Aimbot_Enable",
Title="Aimbot",
Value=y.Enabled,
Callback=function(aU)
y.Enabled=aU
if not aU then o=nil end
end
}

aP:Toggle{
Flag="Aimbot_Smooth",
Title="Smooth Aim",
Desc="Gradual movement",
Value=y.SmoothAiming,
Callback=function(aU)
y.SmoothAiming=aU
end
}

aP:Toggle{
Flag="Aimbot_Prediction",
Title="Bullet Prediction",
Desc="Lead target (idk test only)",
Value=y.BulletPrediction,
Callback=function(aU)
y.BulletPrediction=aU
end
}

aP:Space()

aP:Section{Title="Custom",TextSize=14}

aP:Dropdown{
Flag="Aimbot_AimPart",
Title="Aim Part",
Values={
{Title="Head"},
{Title="Torso"},
{Title="UpperTorso"},
{Title="LowerTorso"},
{Title="RootPart"},
{Title="Nearest"}
},
Value=y.AimPart or"Nearest",
Callback=function(aU)
local aV=(typeof(aU)=="table"and aU.Title)or aU
if aV=="RootPart"then aV="HumanoidRootPart"end
y.AimPart=aV
end
}

aP:Slider{
Flag="Aimbot_FOV",
Title="FOV",
IsTooltip=true,
Step=5,
Value={Min=30,Max=300,Default=y.FOV},
Callback=function(aU)
y.FOV=aU
end
}

aP:Slider{
Flag="Aimbot_Smoothness",
Title="Smoothness",
Desc="Lerp factor (higher = faster)",
IsTooltip=true,
Step=0.01,
Value={Min=0.01,Max=1.0,Default=y.Sensitivity},
Callback=function(aU)
y.Sensitivity=aU
end
}

aP:Slider{
Flag="Aimbot_Strength",
Title="Aim Strength",
Desc="Overall aim intensity",
IsTooltip=true,
Step=0.01,
Value={Min=0.1,Max=1.0,Default=x.Aimbot.AimStrength or 0.85},
Callback=function(aU)
x.Aimbot.AimStrength=aU
end
}

aP:Space()

aP:Section{Title="FOV RGB",TextSize=14}

aP:Toggle{
Flag="FOV_RGB_Enable",
Title="Enable RGB",
Value=B,
Callback=function(aU)
B=aU
if not aU then M()end
end
}

aP:Slider{
Flag="FOV_RGB_Speed",
Title="RGB Speed",
Step=2,
Value={Min=0.5,Max=10,Default=C},
Callback=function(aU)
C=aU
end
}

aP:Slider{
Flag="FOV_RGB_Red",
Title="Red",
Step=1,
Value={Min=0,Max=255,Default=J},
Callback=function(aU)
J=aU
if not B then M()end
end
}

aP:Slider{
Flag="FOV_RGB_Green",
Title="Green",
Step=1,
Value={Min=0,Max=255,Default=K},
Callback=function(aU)
K=aU
if not B then M()end
end
}

aP:Slider{
Flag="FOV_RGB_Blue",
Title="Blue",
Step=1,
Value={Min=0,Max=255,Default=L},
Callback=function(aU)
L=aU
if not B then M()end
end
}

aQ:Section{Title="Overlay",TextSize=14}

aQ:Toggle{
Flag="Overlay_Enable",
Title="Show Overlay",
Desc="Display info overlay",
Value=G.Enabled,
Callback=function(aU)
G.Enabled=aU
end
}

aQ:Dropdown{
Flag="Overlay_FontSize",
Title="Font Size",
Values={
{Title="14"},
{Title="16"},
{Title="18"},
{Title="20"},
{Title="22"},
{Title="24"}
},
Value=tostring(G.FontSize),
Callback=function(aU)
local aV=(typeof(aU)=="table"and aU.Title)or aU
G.FontSize=tonumber(aV)or 18
end
}

aQ:Slider{
Flag="Overlay_Transparency",
Title="Transparency",
Step=0.1,
Value={Min=0,Max=1,Default=G.Transparency},
Callback=function(aU)
G.Transparency=aU
end
}

aQ:Space()

aQ:Section{Title="Fields",TextSize=14}

aQ:Dropdown{
Flag="Overlay_Fields",
Title="Show Fields",
Multi=true,
Values={
{Title="Aimbot State"},
{Title="Team"},
{Title="Closest Enemy"},
{Title="Aiming Target"},
{Title="Aiming Part"},
{Title="Keys Held"}
},
Value={},
Callback=function(aU)
G.ShowAimAssistState=false
G.ShowTeam=false
G.ShowClosestEnemy=false
G.ShowAimingTarget=false
G.ShowAimingPart=false
G.ShowKeysHeld=false

if typeof(aU)=="table"then
for aV,aW in ipairs(aU)do
local aX=aW.Title or aW
if aX=="Aimbot State"then G.ShowAimAssistState=true
elseif aX=="Team"then G.ShowTeam=true
elseif aX=="Closest Enemy"then G.ShowClosestEnemy=true
elseif aX=="Aiming Target"then G.ShowAimingTarget=true
elseif aX=="Aiming Part"then G.ShowAimingPart=true
elseif aX=="Keys Held"then G.ShowKeysHeld=true
end
end
end
end
}

aR:Section{Title="ESP",TextSize=14}

aR:Dropdown{
Flag="ESP_Features",
Title="ESP",
Multi=true,
Values={
{Title="Lines"},
{Title="Skeleton"},
{Title="Box"},
{Title="Name"},
{Title="Aim Part Highlight"},
{Title="RGB Teamless"},
{Title="Skip Team"}
},
Value={},
Callback=function(aU)
y.ESP_Enabled=false
y.ESP_Skeleton=false
y.ESP_Box=false
z=false
y.ESP_AimPart=false
y.ESP_RGB_NoTeam=false
y.ESP_SkipTeam=false

if typeof(aU)=="table"then
for aV,aW in ipairs(aU)do
local aX=aW.Title or aW
if aX=="Lines"then y.ESP_Enabled=true
elseif aX=="Skeleton"then y.ESP_Skeleton=true
elseif aX=="Box"then y.ESP_Box=true
elseif aX=="Name"then z=true
elseif aX=="Aim Part Highlight"then y.ESP_AimPart=true
elseif aX=="RGB Teamless"then y.ESP_RGB_NoTeam=true
elseif aX=="Skip Team"then y.ESP_SkipTeam=true
end
end
end
end
}

aS:Section{Title="Filters",TextSize=14}

aS:Toggle{
Flag="Filter_WallCheck",
Title="Wall Check",
Desc="Line of sight required",
Value=y.WallCheck,
Callback=function(aU)
y.WallCheck=aU
end
}

aS:Toggle{
Flag="Filter_TeamCheck",
Title="Team Check",
Desc="Avoid teammates",
Value=y.TeamCheck,
Callback=function(aU)
y.TeamCheck=aU
end
}

aS:Toggle{
Flag="Filter_OutfitCheck",
Title="Outfit Check",
Desc="Skip same outfit(advanced for some game)",
Value=y.OutfitCheck,
Callback=function(aU)
y.OutfitCheck=aU
end
}

aS:Toggle{
Flag="Filter_SkipDead",
Title="Skip Dead",
Desc="Ignore dead players",
Value=y.SkipDeadPlayers,
Callback=function(aU)
y.SkipDeadPlayers=aU
end
}

aS:Toggle{
Flag="Filter_IgnoreNonSolid",
Title="Ignore Non-solid",
Desc="Ignore smoke or some thing like that",
Value=A,
Callback=function(aU)
A=aU
end
}

aS:Space()

aS:Section{Title="Hitbox",TextSize=14}

aS:Toggle{
Flag="Hitbox_Enable",
Title="Enable Hitbox",
Value=D,
Callback=function(aU)
D=aU
for aV,aW in pairs(b:GetPlayers())do
if aU then al(aW)else am(aW)end
end
end
}

aS:Toggle{
Flag="Hitbox_TeamCheck",
Title="Team Check",
Value=E,
Callback=function(aU)
E=aU
if D then
for aV,aW in pairs(b:GetPlayers())do
am(aW)
al(aW)
end
end
end
}

aS:Slider{
Flag="Hitbox_Size",
Title="Hitbox Size",
Step=1,
Value={Min=1,Max=50,Default=F},
Callback=function(aU)
F=aU
end
}

local aU,
aV,

aW=aO.ConfigManager,"default",aS:Section{Title="Config",TextSize=14}

local aX=aW:Input{
Title="Config Name",
Icon="file-cog",
Value=aV,
Callback=function(aX)
aV=aX
end
}

aW:Space()

local aY=aU:AllConfigs()
local aZ=table.find(aY,aV)and aV or nil

local a_=aW:Dropdown{
Title="All Configs",
Desc="Select configs",
Values=aY,
Value=aZ,
Callback=function(a_)
aV=a_
aX:Set(a_)
end
}

aW:Space()

aW:Button{
Title="Save Config",
Icon="save",
Justify="Center",
Callback=function()
aO.CurrentConfig=aU:Config(aV)
if aO.CurrentConfig:Save()then
a:Notify{
Title="Config Saved",
Content="Config '"..aV.."' saved",
Icon="check"
}
end
a_:Refresh(aU:AllConfigs())
end
}

aW:Space()

aW:Button{
Title="Load Config",
Icon="refresh-cw",
Justify="Center",
Callback=function()
aO.CurrentConfig=aU:CreateConfig(aV)
if aO.CurrentConfig:Load()then
a:Notify{
Title="Config Loaded",
Content="Config '"..aV.."' loaded",
Icon="refresh-cw"
}
end
end
}

aW:Space()

aW:Button{
Title="Delete Config",
Icon="trash",
Justify="Center",
Color=v,
Callback=function()
if aU:DeleteConfig(aV)then
a:Notify{
Title="Config Deleted",
Content="Config '"..aV.."' deleted",
Icon="trash"
}
a_:Refresh(aU:AllConfigs())
aV="default"
aX:Set"default"
else
a:Notify{
Title="Error",
Content="Failed to delete config '"..aV.."'",
Icon="alert-circle"
}
end
end
}

b.PlayerAdded:Connect(function(a0)
a0.CharacterAdded:Connect(function()
task.wait(1)
if D then al(a0)end
end)
end)
for a0,a1 in pairs(b:GetPlayers())do
if a1~=f then
a1.CharacterAdded:Connect(function()
task.wait(1)
if D then al(a1)end
end)
end
end
