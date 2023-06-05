# d3lua

This repository contains a Lua script that uses the `socket.http` and `dkjson` modules to talk to the d3 APIs and print the response in a command prompt.

## Dependencies

This script requires the following Lua modules:

- `socket.http`: A Lua module that provides HTTP client functionalities.
- `dkjson`: A Lua module for encoding and decoding JSON data.

## Installation

To install the dependencies, you can use LuaRocks, the Lua package manager. If you haven't installed LuaRocks yet, you can download it from the [official LuaRocks page](https://luarocks.org/).

Once you have LuaRocks installed, you can install the `luasocket` and `dkjson` modules using the following commands:

```shell
luarocks install luasocket
luarocks install dkjson
```

##Usage
To run the script, you can use the Lua interpreter:
```lua d3.lua```

The script will poll the d3service API and list the currently discovered machines and their status:
![image](https://github.com/pkirkup-disguise/d3lua/assets/71440017/e94ed821-edc0-49e1-9a16-cc5d0ca80e98)

The scripts can be modified to suit your own purposes based on the full d3 API, found at http://developer.disguise.one 

Note: The path in the script to the Lua modules might need to be adjusted depending on your system setup
