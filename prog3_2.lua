function InfixToPostFix(str)
    local Infix = {}; i = 1
    for x in string.gmatch(str,"%s") do
        Infix[i] = x
        i = i + 1
    end
    
    local Operator_Stack = {}; o = 1
    local Postfix = {}; p = 1
    for q in ipairs(Infix) do
        if tonumber(q) ~= nil then
            Postfix[p] = q
            p = p + 1
    
    elseif (q == "*" or q == "/" or q == "+" or q == "-" then
        if Operator_Stack[o] == nil then
            Operator_Stack = q
    
    elseif ((Operator_Stack[o] == "*" and q == "/") or (Operator_Stack[o] == "+" and q == "-")) then
        while o > 0 do
            Postfix[p] = Operator_Stack[o]
            p = p + 1
            o = o - 1
        end
        o = o + 1 
        Operator_Stack[o] = q 
        
    elseif ((Operator_Stack[o] == "/" and q == "*") or (Operator_Stack[o] == "-" and q == "+")) then
        o = o + 1
        Operator_Stack[o] = q
        
    elseif ((Operator_Stack[o] == "*" and Operator_Stack[o] == "/") or (q == "+" and q == "-"))
        while o > 0 do
            Postfix[p] = Operator_Stack[o]
            p = p + 1
            o = o - 1
        end
        o = o + 1 
        Operator_Stack[o] = q 
        
    elseif ((Operator_Stack[o] == "+" and Operator_Stack[o] == "-") or (q == "*" and q == "/"))
        o = o + 1
        Operator_Stack[o] = q
    end
    end
    return Postfix
end
    
    
    
    
    
    
    
    
    
