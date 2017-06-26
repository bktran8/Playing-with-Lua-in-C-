#include <iostream>

extern "C"{
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}
using namespace std;

int main( int argc, char *argv[]){
    char str[256];
    cout << "Assignment #3-3, Brenda Tran, bktran8@gmail.com" << endl;
    if(argc >= 3 || argc <=1){
        cerr << "ERROR! Program accepts 1 command line argument." << endl;
    }
    cin.getline(str, sizeof(str));
    
    lua_State *One = luaL_newstate();
    luaL_openlibs(One);
    luaL_dofile(One, argv[1]);
    answer = InfixToPostfix(str);
    printf(answer);
    lua_close(One);
    return 0;
}
