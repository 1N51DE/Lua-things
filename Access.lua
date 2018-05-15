local event = require("event")
local component = require("component")
local sides = require("sides")
local term = require("term")
local GUI = require("GUI")
local doubleBuffering = require("doubleBuffering")
local rs = component.redstone
component.gpu.setResolution(25, 20)
local allowedusers ={
    RedMaster12341 = true,
    NEbeytePLZ = true,
    Printul = true,
    GalactiMeX = true,
    Ibateru = true,
    Makarrov = true,
    marko_ru = true
}
print "Нажмите на экран ПКМ"
while true do
    local _,_,_,_,_,currentuser = event.pull("touch")
    if allowedusers[currentuser] then
            if currentuser == "RedMaster12341" then
                local adminPanel = GUI.contextMenu(2, 2)
                adminPanel:addItem("Добавить игрока в бд").onTouch = function()
                    local addUserToDB:addChild(GUI.input(2, 2, 30, 3, 0xEEEEEE, 0x555555, 0x999999, 0xFFFFFF, 0x2D2D2D, "Hello world", "Placeholder text")).onInputFinished = function()
                        
                    end
                end
            end
        print("Проходи," ..currentuser)
        for o = 0, 5 do 
            rs.setOutput(o, 15)
        end
        os.sleep(3)
        for o = 0, 5 do 
            rs.setOutput(o, 0)
        end
        term.clear()
        print "Нажмите на экран ПКМ"
    else
        print ("Тебе нельзя туда," ..currentuser)
        os.sleep(2)
        term.clear()
        print "Нажмите на экран ПКМ"
    end
end
--https://pastebin.com/9Ca2Sh2A on pasebin
