InfixToPostfix = function (str)
    infix = {}; i = 1
    for s in str:gmatch("%S+") do
        infix[i] = s
        i = i + 1
    end
    
    Operator_Stack = {}; o = 1
    Postfix = {}; p = 1
    for a, b in pairs(Infix) do
        if tonumber(b) ~= nil then
            Postfix[p] = b
            p = p + 1
    
    elseif b == "*" or b == "/" or b == "+" or b == "-" then
        if Operator_Stack[o] == nil then
            Operator_Stack[o] = b
    
    elseif ((Operator_Stack[o] == "*" and b == "/") or (Operator_Stack[o] == "+" and b == "-")) then
            Postfix[p] = Operator_Stack[o]
            p = p + 1
            Operator_Stack[o] = b 
        
    elseif ((Operator_Stack[o] == "/" and b == "*") or (Operator_Stack[o] == "-" and b == "+") or ((Operator_Stack[o] == "+" or Operator_Stack[o] == "-") and (b == "*" or b == "/"))) then
        o = o + 1
        Operator_Stack[o] = b
        
    elseif ((Operator_Stack[o] == "*" and Operator_Stack[o] == "/") or (b == "+" and b == "-"))
        while o > 0 do
            Postfix[p] = Operator_Stack[o]
            p = p + 1
            o = o - 1
        end
        o = o + 1 
        Operator_Stack[o] = b 
    end
    end
    end
    while o > 0 do
            Postfix[p] = Operator_Stack[o]
            p = p + 1
            o = o - 1
        end
    return(table.concat(Postfix, " "))
end
    
    
    
    
    
    
    
    
    
