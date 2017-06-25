function InfixToPostFix(str)
    Infix = {}; i = 1
    for x in string.gmatch("%s") do
        infix[i] = x
        i = i + 1
    end
    
    Operator_Stack = {}; o = 1
    Postfix = {}; p = 1
    for q in ipairs(Infix) do
        if tonumber(q) ~= nil then
            Postfix[p] = q
            p = p + 1
    
    else if (q == "*" or q == "/" or q == "+" or q == "-" then
        if Operator_Stack[o] == nil then
            Operator_Stack = q
    
    else if ((Operator_Stack[o] == "*" and q == "/") or (Operator_Stack[o] == "+" and q == "-")) then
        while o > 0 do
            Postfix[p] = Operator_Stack[o]
            p = p + 1
            o = o - 1
        end
        o = o + 1 
        Operator_Stack[o] = q 
        
    else if ((Operator_Stack[o] == "/" and q == "*") or (Operator_Stack[o] == "-" and q == "+")) then
        o = o + 1
        Operator_Stack[o] = q
        
    else if ((Operator_Stack[o] == "*" and Operator_Stack[o] == "/") or (q == "+" and q == "-"))
        while o > 0 do
            Postfix[p] = Operator_Stack[o]
            p = p + 1
            o = o - 1
        end
        o = o + 1 
        Operator_Stack[o] = q 
        
    else if ((Operator_Stack[o] == "+" and Operator_Stack[o] == "-") or (q == "*" and q == "/"))
        o = o + 1
        Operator_Stack[o] = q
   
    end
    end
    end
    end
    end
    end
    end
    end
    return postfix
    end
    
    
    
    
    
    
    
    
    
