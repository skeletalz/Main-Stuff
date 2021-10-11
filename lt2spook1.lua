local tree = false;
local stopSpam = false;
rconsoleprint('@@YELLOW@@');

rconsoleprint('Searching For Spook Tree   |   ');

repeat wait() until game:IsLoaded() and game.Players.LocalPlayer.Character;
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == 'TreeRegion' then
        for a,b in pairs(v:GetChildren()) do
            if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == 'Spooky' then
                stopSpam = true;
                game.Players.LocalPlayer.Character:MoveTo(b.WoodSection.Position);
                
                rconsoleprint('@@GREEN@@');
                rconsoleprint('Found A Spook Tree!\n');
                tree = true;
            end;
        end;
    end;
end;
if tree == false then
    rconsoleprint('@@RED@@');
    rconsoleprint('No Spook Tree Found\n');
    game:GetService('TeleportService'):Teleport(13822889);
    game:GetService('TeleportService'):Teleport(13822889);
end
loadstring(game:Httpget("https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/teleport.lua"))()
syn.queue_on_teleport('loadstring(game:Httpget("https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/lt2spook1.lua"))()')
