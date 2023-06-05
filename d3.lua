local http = require('socket.http')

-- Update the package path
package.path = package.path .. ';C:/ProgramData/chocolatey/lib/luarocks/luarocks-2.4.4-win32/systree/share/lua/5.1/?.lua'

-- Now try to require the dkjson module
local dkjson = require('dkjson')

-- Define the API endpoint
local url = 'http://localhost/api/service/system/detectsystems'

-- Send a GET request to the API endpoint
local response, status, headers = http.request(url)

-- Check the status of the request
if status == 200 then
    -- If the request was successful, parse the JSON response
    local obj, pos, err = dkjson.decode(response, 1, nil)

    -- Check if there was an error while parsing
    if err then
        print('JSON parsing error: ' .. err)
    else
        -- Access the parsed data
        for i, result in ipairs(obj.result) do
            print('Hostname: ' .. result.hostname)
            print('Type: ' .. result.type)
            print('IP Address: ' .. result.ipAddress)
            print('Is Service Running: ' .. tostring(result.isServiceRunning))
            print('Is Manager Running: ' .. tostring(result.isManagerRunning))
            print('------')
        end
    end
else
    -- If the request failed, print an error message
    print('HTTP request error: ' .. status)
end