## Exemple tiré du code de Redis

``` C
scripting.c:
/* Initial Stack: array */
lua_getglobal(lua,"table");
lua_pushstring(lua,"sort");
lua_gettable(lua,-2);       /* Stack: array, table, table.sort */
lua_pushvalue(lua,-3);      /* Stack: array, table, table.sort, array */
if (lua_pcall(lua,1,0,0)) {
    /* Stack: array, table, error */

    /* We are not interested in the error, we assume that the problem is
     * that there are 'false' elements inside the array, so we try
     * again with a slower function but able to handle this case, that
     * is: table.sort(table, __redis__compare_helper) */
    lua_pop(lua,1);             /* Stack: array, table */
    lua_pushstring(lua,"sort"); /* Stack: array, table, sort */
    lua_gettable(lua,-2);       /* Stack: array, table, table.sort */
    lua_pushvalue(lua,-3);      /* Stack: array, table, table.sort, array */
    lua_getglobal(lua,"__redis__compare_helper");
    /* Stack: array, table, table.sort, array, __redis__compare_helper */
    lua_call(lua,2,0);
}
```