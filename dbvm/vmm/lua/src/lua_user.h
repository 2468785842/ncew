<<<<<<< HEAD
  #define lua_lock(L) LuaLock(L)
  #define lua_unlock(L) LuaUnlock(L)
  #define lua_userstateopen(L) LuaLockInitial(L)
  #define lua_userstatethread(L,L1) LuaLockInitial(L1)  // Lua 5.1

  void LuaLockInitial(lua_State * L);
  void LuaLockFinal(lua_State * L);
  void LuaLock(lua_State * L);
=======
  #define lua_lock(L) LuaLock(L)
  #define lua_unlock(L) LuaUnlock(L)
  #define lua_userstateopen(L) LuaLockInitial(L)
  #define lua_userstatethread(L,L1) LuaLockInitial(L1)  // Lua 5.1

  void LuaLockInitial(lua_State * L);
  void LuaLockFinal(lua_State * L);
  void LuaLock(lua_State * L);
>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
  void LuaUnlock(lua_State * L);