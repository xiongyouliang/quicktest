local Rocker = import(".Rocker")
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
    cc.ui.UILabel.new({
            UILabelType = 2, text = "Hello, World", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)

    local rocker = Rocker.new()
    self:addChild(rocker)
    local size = rocker:getContentSize()
    rocker:setPosition(cc.p(size.width/2 + 20, size.height/2 + 20))
end

function MainScene:onEnter()
end

function MainScene:onExit()
end

return MainScene
