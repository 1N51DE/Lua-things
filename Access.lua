local event = require("event")
local com = require("component")
local sides = require("sides")
local term = require("term")
local rs = com.redstone
com.gpu.setResolution(25, 20)
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