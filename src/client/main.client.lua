local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Model = ReplicatedStorage.Common.model
local Camera = workspace.CurrentCamera

repeat RunService.Heartbeat:Wait()
until game:IsLoaded()

repeat RunService.Heartbeat:Wait()
until Players.LocalPlayer.Character

local Character = Players.LocalPlayer.Character
local Humanoid = Character:WaitForChild("Humanoid",math.huge)
local RootPart = Humanoid.RootPart

RootPart.Anchored = true
RootPart.CFrame = CFrame.new(0,-100,0)
Camera.CameraType = Enum.CameraType.Scriptable

Model.Parent = workspace

while true do
	Model:SetPrimaryPartCFrame(CFrame.Angles(0,math.rad(os.clock() * 40),0))
	Camera.CFrame = CFrame.new(0,0,10)
	
	RunService.Heartbeat:Wait()
end
