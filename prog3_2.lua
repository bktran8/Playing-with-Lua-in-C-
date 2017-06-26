
local function InfixToPostfix(string)
    infix = {}; i = 1
    for s in str:gmatch("%S+") do
        infix[i] = s
        i = i + 1
    end
    
    postfix = {}; p = 1
    stack = {}; s = 1
    for k, v in pairs(infix) do
        if tonumber(v) ~= nil then
            postfix[p] = v
            p = p + 1
        elseif v == "*" or v == "/" or v == "+" or v == "-" then
            if stack[s] == nil then
                stack[s] = v
            elseif ((stack[s] == "+" and v == "-") or (stack[s] == "*" and v == "/")) then
                postfix[p] = stack[s]
                p = p + 1
                stack[s] = v
            elseif ((stack[s] == "/" and v == "*") or (stack[s] == "-" and v == "+") or ((stack[s] == "+" or stack[s] == "-") and (v == "*" or v == "/"))) then
                s = s + 1
                stack[s] = v
            elseif ((stack[s] == "*" or stack[s] == "/") and (v == "+" or v == "-")) then
                while s > 0 do
                    postfix[p] = stack[s]
                    p = p + 1
                    s = s - 1
                end
                s = s + 1
                stack[s] = v
            end
        end
    end
    while s > 0
        postfix[p] = stack[s]
        p = p + 1
        s = s - 1
    end
    return(table.concat(postfix, " "))
    
end
    
    
    
    
    
