#include <iostream>

extern "C"{
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}
using namespace std;

int main( int argc, char *argv[]){
    cout << "Assignment #3-1, Brenda Tran, bktran8@gmail.com" << endl;
    if(argc >= 3 || argc <=1){
        cerr << "ERROR! Program accepts 1 command line argument." << endl;
    }
    lua_State *One = luaL_newstate();
    luaL_openlibs(One);
    lua_close(One);
    return 0;
}
