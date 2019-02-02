# Translate kata from [codewars](https://www.codewars.com/users/lbvf50mobile)

- Github where tested frameworks stored: https://github.com/Codewars/codewars-runner-cli  
- https://github.com/Codewars/codewars-runner-cli/blob/master/frameworks/lua/codewars.lua 
- https://github.com/Codewars/codewars-runner-cli/blob/master/lib/runners/lua.js [es6 methods for runners](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Method_definitions)
- https://github.com/Codewars/codewars-runner-cli/blob/master/examples/lua.yml
- https://github.com/Codewars/codewars-runner-cli/blob/d1c1d8bfb9919ee61d520370484894be27f48739/docker/lua.docker

## Instalation
Reading documentations above secially [here](https://github.com/Codewars/codewars-runner-cli/blob/d1c1d8bfb9919ee61d520370484894be27f48739/docker/lua.docker#L13) I fuond that I need two things: `luarocks` and `busted` from this package. `RUN luarocks install busted`

- http://luarocks.github.io/luarocks/releases/ download `v2.4.2.tar.gz ` but for windows
- and read here [lua instalation for Windows](https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Windows)
- here is a `busted` [it's a tesing framework](https://luarocks.org/modules/olivine-labs/busted)
- `INSTALL /LV 5.3 /LUA c:\lua`
- I add lua 5.3.4 because lua 5.3.5 dose not works. and add *h files from  the tar file.
- Luarocks 2.4.2 installed, all data wrote to the `LUA_PATH`, `LUA_CPATH`, `Path` windows variables.
- from the `gitbash` I start  luarocks with a `luarocks.bat`
- reading this article https://github.com/luarocks/luarocks/wiki/Using-LuaRocks
- `luarocks.lua install busted` and `Failed installing dependency`
- https://stackoverflow.com/questions/8800361/cl-is-not-recognized-as-an-internal-or-external-command
- https://stackoverflow.com/questions/28913395/luarocks-failed-to-compile-object
- https://stackoverflow.com/questions/31953769/visual-studio-doesnt-have-cl-exe
- `INSTALL /LV 5.3 /LUA c:\lua /MW`

### Summary:

`2019.01.30 Wednesday Jan`  
At the `lua.docker` full inforation about lua version. At the codewars Lua works with `LuaRocks` and `Busted` framework. Need to install `LuaRock` on my machine. And then the `codewars.lua` will be clear.   

`2019.01.31 Thursday Jan`  
`LuaRocks 2.4.2` strats by `luarocks.bat` in `gitbash`. I'm using `Lua 5.3.4` becuase `Lua 5.3.5` dose not works at all.


# Lua translations

- https://www.codewars.com/kata/tick-toward
- https://www.codewars.com/kata/which-are-in (`marked 20190201 Friday`) `(["12","34"].join())['23']` <= pass the tests. Need to fix.
- https://www.codewars.com/kata/meeting (`marked 20190202 Satruday 16:09`)

#  In Codewars
- https://www.codewars.com/kata/51f2b4448cadf20ed0000386 https://www.codewars.com/kumite/5c52f69bbb637958bba592a2/edit 