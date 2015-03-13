local Rocker = class("Rocker", function() return display.newNode() end)

function Rocker:ctor()
	-- create the button panel
	local panel = display.newSprite("image/panel.png")
	self:addChild(panel)

	self:setContentSize(panel:getContentSize())

	-- create the button
	local button = display.newSprite("image/button.png")
	button:setAnchorPoint(cc.p(0.5, 0.5))
	self.button = button
	self:addChild(button)

	self:setTouchEnabled(true)
	self:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event) self:touchHandled(event) end)
end

function Rocker:touchHandled(event)
	local point = self:convertToNodeSpace(cc.p(event.x, event.y))
	print("===>>> point.x" .. point.x)
	local name = event.name
	if "began" == name then
		return true
	end

	if "mover" == name then
		self.button:setPosition(point)
	end
end


return Rocker