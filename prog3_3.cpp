#include <iostream>
#include <stdio.h>

extern "C"{
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}
using namespace std;


int main( int argc, char *argv[]){
    cout << "Assignment #3-3, Brenda Tran, bktran8@gmail.com" << endl;
    if(argc >= 3 || argc <=1){
        cerr << "ERROR! Program accepts 1 command line argument." << endl;
    }
    
    char str[256];
    lua_State *One = luaL_newstate();
    luaL_openlibs(One);
    getline(cin, str);
    luaL_dofile(One, argv[1]);
    luaL_dostring(One,"InfixToPostfix(str)");
    printf("%s",lua_tostring(One,-1));
    lua_close(One);
    return 0;
}
