---@class Account
local Account = {}

function Account:new(balance)
	local t = setmetatable({}, { __index = Account })

	-- Your constructor stuff
	t.balance = (balance or 0)
	return t
end

function Account:withdraw(amount)
	print("Withdrawing " .. amount .. "...")
	self.balance = self.balance - amount
	self:report()
end

function Account:report()
	print("Your current balance is: " .. self.balance)
end

local a = Account:new(9000)
a:withdraw(200) -- method call

while condition do
	print("Nothing")
end

for i = 1, 5 do
	print("Nothing" .. i)
end

for i = start, finish, delta do
	print("Nothing" .. i)
end

for k, v in pairs(tab) do
	print("Nothing" .. k + v)
end

repeat
	print("Nothing")
until condition

-- Breaking out:
while x do
	if condition then
		break
	end
end

function myFunction()
	return 1
end

function myFunctionWithArgs(a, b)
	-- ...
end

myFunction()

anonymousFunctions(function()
	-- ...
	return 1
end)

-- Not exported in the module
local function myPrivateFunction() end
myPrivateFunction()

-- Splats
function doAction(action, ...)
	print("Doing '" .. action .. "' to", ...)
	--> print("Doing 'write' to", "Shirley", "Abed")
end

doAction("write", "Shirley", "Abed")

local M = {}
local theme = require("night-owl.theme")

M.setup = function()
	vim.cmd("hi clear")

	vim.o.background = "dark"
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "night-owl"

	theme.set_highlights()
end

return M
