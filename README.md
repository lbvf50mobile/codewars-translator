# Translate kata from [codewars](https://www.codewars.com/users/lbvf50mobile)

- Github where tested frameworks stored: https://github.com/Codewars/codewars-runner-cli  
- https://github.com/Codewars/codewars-runner-cli/blob/master/frameworks/lua/codewars.lua 
- https://github.com/Codewars/codewars-runner-cli/blob/master/lib/runners/lua.js
- https://github.com/Codewars/codewars-runner-cli/blob/master/examples/lua.yml
- https://github.com/Codewars/codewars-runner-cli/blob/d1c1d8bfb9919ee61d520370484894be27f48739/docker/lua.docker

## Instalation
Reading documentations above secially [here](https://github.com/Codewars/codewars-runner-cli/blob/d1c1d8bfb9919ee61d520370484894be27f48739/docker/lua.docker#L13) I fuond that I need two things: `luarocks` and `busted` from this package. `RUN luarocks install busted`

- http://luarocks.github.io/luarocks/releases/ download `v2.4.2.tar.gz ` but for windows
- and read here [lua instalation for Windows](https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Windows)
- here is a `busted` [it's a tesing framework](https://luarocks.org/modules/olivine-labs/busted)
- `INSTALL /LV 5.3 /LUA c:\lua`
- I add lua 5.3.4 because lua 5.3.5 dose not works. and add *h files from  the tar file.

### Summary:

At the `lua.docker` full inforation about lua version. At the codewars Lua works with `LuaRocks` and `Busted` framework. Need to install `LuaRock` on my machine. And then the `codewars.lua` will be clear. 


# Lua translations

- https://www.codewars.com/kata/tick-toward