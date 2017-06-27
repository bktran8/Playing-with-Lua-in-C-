#include <iostream>
#include <stdio.h>

extern "C"{
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}
using namespace std;

lua_State* One;

char* luaInfixToPostfix(string c){
    char* str;
    lua_getglobal(One, "InfixToPostfix");
    lua_pushstring(c);
    lua_call(One, 1, 1);
    str = (char)lua_tointeger(One, -1);
    lua_pop(One, 1);
    return str;
}
    
`

int main( int argc, char *argv[]){
    cout << "Assignment #3-1, Brenda Tran, bktran8@gmail.com" << endl;
    if(argc >= 3 || argc <=1){
        cerr << "ERROR! Program accepts 1 command line argument." << endl;
    }
    
    char str[256];
    lua_State *One = luaL_newstate();
    luaL_openlibs(One);
    cin >> input;
    luaL_dofile(One, argv[1]);
    str = luaInfixToPostfix(input);
    printf("%s",str);
    lua_close(One);
    return 0;
}
