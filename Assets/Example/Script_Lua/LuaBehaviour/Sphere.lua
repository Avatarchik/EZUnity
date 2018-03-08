--[==[
- Author:       熊哲
- CreateTime:   2018-03-08 10:49:04
- Orgnization:  #ORGNIZATION#
- Description:  
--]==]
local M = {}
----- CODE -----
function M.LCBinder(injector)
    injector:Inject(M)
    -- 与其他LuaBehaviour进行交互
    M.go_Cube:GetComponent("LuaBehaviour").luaTable.ChangePosition(M.v1)
    -- Behaviour可以用injector注入，节省GetComponent的调用开销
    M.lb_Cube.luaTable.ChangePosition(M.v2)
    return M
end
----- CODE -----
return M
