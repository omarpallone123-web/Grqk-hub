local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function AXxoVtDVcwP(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


--[[
    grpk hub - Blade Ball
    Anti-Lag Ultra + Smart Auto Parry + Smart Parry V6 (Ultra-Enhanced V4 + Anti-Double Click) + Immortality (417 Random Chaos Move) + Lobby Training + Manual/Super Spam V2 (1-5000 CPS)
    Delta Mobile Fixed
]]

--=========================================
-- 0. ANTI-LAG ULTRA (VFX & LIGHTING REMOVER)
--=========================================
local Workspace = game:GetService(AXxoVtDVcwP('DMfnEpwxOkNnqjtsPjbLGCMVilbQaSTCZATlBBwVwpbUXymcnYAjfONV29ya3NwYWNl'))
local Lighting = game:GetService(AXxoVtDVcwP('BojmUcheSAMWFngRpsvQLrGRAOhpbtwSsLEIkbfzPabwOYVhFwTUXrkTGlnaHRpbmc='))
local Players = game:GetService(AXxoVtDVcwP('VMFuZctYBlYancuWhLsWdBylxKwiPjSpkZaYIeuMbkesakEEFMFfRZnUGxheWVycw=='))
local StarterGui = game:GetService(AXxoVtDVcwP('jzjxtSUJzjPCoDLOJtXquIjQfILDxzdTbOkCcGtDBAYJQdZzTfgfohEU3RhcnRlckd1aQ=='))
local RunService = game:GetService(AXxoVtDVcwP('hlOGywWjFRjCiRQbjDREXrTVIIXdMiiXuAqrRcdPcYRQzXLYKkdevSaUnVuU2VydmljZQ=='))
local Stats = game:GetService(AXxoVtDVcwP('tckZeVNRVMhiAApZVTTUGXAFKrbWqTHzMojJCsfkVIEYCBcYeGXhMLOU3RhdHM='))
local LocalPlayer = Players.LocalPlayer

local targetKeywords = {
    AXxoVtDVcwP('LqXFReEJlwagPIdOJUxyrIEgDszLiQgGzZtgjofMwQTWpAiVJiaHuEvcGFycnk='), AXxoVtDVcwP('MyfMPghFNFSIMwIlMBgRmKOjwCDFvWvSqMhSiUvQIANPUkiESmzciAbY3J5cHRv'), AXxoVtDVcwP('iaPsXqFfbkQtLaaxAMUWeuxrwFnLMPoPguFyatzrnheSUaBYDgOvbPKdHJhaWw='), AXxoVtDVcwP('PdvJtlHQHgCymyzcRPBeFROeJgzsrrrdgpememgftSYDCqSrSNHGwvMY2xhc2g='), AXxoVtDVcwP('eISFiGSdejrYgvtYlyrwEWTrjkjStiKngbOEwQfCnLEjqputAPhAvWzc2xhc2g='), AXxoVtDVcwP('lseokmveuOmSOlQvRFvMcSkMExdYKEVyKMRIHXwiRPFyJvKUqMvHkycdmZ4'),
    AXxoVtDVcwP('JCfjUPEzsauKCgeEfSczmVnmcuDjmwCUuFGQlQoGiSyLWliZOxXgOnqYWJpbGl0eQ=='), AXxoVtDVcwP('GVLEMLaJqsNdAIpEXjBHEBzwNHiQNEKEFEGuGiXMNywdIKaEVkrBDgtZWZmZWN0'), AXxoVtDVcwP('RZltxcytnFBYOmHezqpPreFlWWcUnwqMFXAuTLvugqZDJCGgQlEqnhkcGFydGljbGU='), AXxoVtDVcwP('uSfYgJVOFVTmAzpgEPLpPlYJnKYIcWkWkBLygjIGcbvuGrwVzgwICEtYXVyYQ=='), AXxoVtDVcwP('lDzUXaBXLOvKVqYTuJYDIVcxEPyeCqVtFRIDMEGepdCHpVvMkhSaajac3dpbmc='), AXxoVtDVcwP('WOTeBBOhhlcfDyJTIYxboiHgLBKcCPtaqOmNQscFCJFSVlpgjLPGwLzYmxhZGU='), AXxoVtDVcwP('OrPAxAweQbXzVwByeANpDuQBNrKgVXWVlHKjDPydERDOviebzFTvISXc2luZ3VsYXJpdHk=')
}

local function isTargetVFX(instance)
    local name = string.lower(instance.Name)
    for _, keyword in ipairs(targetKeywords) do
        if string.find(name, keyword) then
            return true
        end
    end
    return false
end

local function cleanVFX(instance)
    if instance:IsA(AXxoVtDVcwP('QfMFibRYEkzpGqmXszGkRUJUIdnzKpnFjqxHsVSbqLwUxbeOrSUzlIUVHJhaWw=')) then
        instance.Enabled = false
        instance:Destroy()
    elseif instance:IsA(AXxoVtDVcwP('dZsTUarsLRYfPrJkFEozimCwVnxKKvoSerszwgDhUpgMVfdDQkfIbhsUGFydGljbGVFbWl0dGVy')) or instance:IsA(AXxoVtDVcwP('GFWOprnNBGyUhqhsdurJpEYrVcNuJDciTZltmTGdgrxAmnJBnlijEcOQmVhbQ==')) or instance:IsA(AXxoVtDVcwP('OOaNEblRIYzHfhnRaRVLzzUVExSevxVEFewDbFgilrHbGFLUNEODMzJU3BhcmtsZXM=')) or instance:IsA(AXxoVtDVcwP('fsvJLHOznJUSIoRxllSvNsrVPlfrNWQVZPxAbchMpSQeJAJeCppFyekU21va2U=')) or instance:IsA(AXxoVtDVcwP('nfisRMOFchXJNkvkoLCBzVswoQJjohmvqFzzRBXBvDdgWAtkfOeBQqZRmlyZQ==')) then
        instance.Enabled = false
        instance:Destroy()
    elseif instance:IsA(AXxoVtDVcwP('AlKYrilhvCzWxkzbyoagmBVyvIJmchWrWtpflrhLsJxHLovArKWzmgDSGlnaGxpZ2h0')) then
        instance.Enabled = false
        instance:Destroy()
    end

    if isTargetVFX(instance) then
        if instance:IsA(AXxoVtDVcwP('XFGYnhfTXgyBtNjQgYpFGOrGkGSSFFoUcMYpnJJBTeNFyrjFUtedSSqQmFzZVBhcnQ=')) or instance:IsA(AXxoVtDVcwP('FEMpoUqqGuRqjvvVMyazzUYHKcmDFhjVMZEmelQDnVfMAvQsIygzmQdTWVzaFBhcnQ=')) then
            instance.Transparency = 1
            instance.CastShadow = false
        elseif instance:IsA(AXxoVtDVcwP('nqzSoivlYgLsvHUQfOYvbMlwEInFyGxCwszfJGHfDRAXkyxrCDejcyrTW9kZWw=')) or instance:IsA(AXxoVtDVcwP('blkXLREAsPfFLAnRVIXDeqjyIwYhyDUpyktTJMnwpjxkGmNCOcGAMpWRm9sZGVy')) then
            task.spawn(function()
                for _, child in ipairs(instance:GetDescendants()) do
                    if child:IsA(AXxoVtDVcwP('fQUtUCnCZdwGjpVyenWdbcNUhkdjXXmQgIjJjnweBfLXlxpeZTcgUWqVHJhaWw=')) or child:IsA(AXxoVtDVcwP('AJEZUkJPhNgznOZWoOMvytRlXMOIcbtgeBpqYvbKsmQFAxALpsTSedjUGFydGljbGVFbWl0dGVy')) or child:IsA(AXxoVtDVcwP('fdZjxGdaewexwxnkWTGKXZInnPlIhvfxLMzVFrVbLrtiXBQQiCotcCDQmVhbQ==')) or child:IsA(AXxoVtDVcwP('YJhasSrGgZCoVEVSgBZnuQeyTxuxmHhZLzwyfHfqJkxwxyPgacRlUlHSGlnaGxpZ2h0')) then
                        child:Destroy()
                    end
                end
            end)
        end
    end
end

for _, obj in ipairs(Workspace:GetDescendants()) do
    cleanVFX(obj)
end

Workspace.DescendantAdded:Connect(function(obj)
    cleanVFX(obj)
end)

Lighting.GlobalShadows = false
Lighting.FogEnd = 9e9

for _, effect in ipairs(Lighting:GetChildren()) do
    if effect:IsA(AXxoVtDVcwP('wFjZRwXdNZRwiCEGXAInGWFlSUKcOZXBGLeUEiooVqqQkCWlLgcWNfzUG9zdEVmZmVjdA==')) or effect:IsA(AXxoVtDVcwP('gbkhZRtCVzIBLRBwxpsgfswYvMQSLWBhFCAkvsYkbLFuaGVNQRLzKaEQmxvb21FZmZlY3Q=')) or effect:IsA(AXxoVtDVcwP('trfWroWIQwycfNCDgrObZbQQbUkRHRIViOZcYLQLUccAipetosqibvPQmx1ckVmZmVjdA==')) or effect:IsA(AXxoVtDVcwP('RUaiEfFvkpIfNPyZCqbPwGIRUDdGlPfqxSEvljApXXcTBXafRQfHbBfU3VuUmF5c0VmZmVjdA==')) then
        effect.Enabled = false
    end
end

pcall(function()
    StarterGui:SetCore(AXxoVtDVcwP('FaAWZAlOWHsbyVROiIUxZcGsyLzKNvSGOXhseripyUEDLvWxclRHzbgU2VuZE5vdGlmaWNhdGlvbg=='), {
        Title = AXxoVtDVcwP('KtesdwSpGQBSpOjIrIjeJKBHUSGslwGPTHvREaPerOrOUsRZOklavGVQW50aS1MYWcgVWx0cmE='),
        Text = AXxoVtDVcwP('UeDwvHcUuubShJeJttAJhWtjkctGPysTnAckiegZFKNnYVuGeUJFmpRU2NpZSwgVkZYIFBhcnJ5IGVkIGFiaWxpdMOgIHNwZWNpYWxpIHJpbW9zc2Uh'),
        Duration = 3
    })
end)

--=========================================
-- 1. INTERFACCIA GRAFICA (WINDUI)
--=========================================
local WindUI = loadstring(game:HttpGet(AXxoVtDVcwP('SjbYBePsFgsOWcybjLcrBGOsZVjYoQKLVwDPRiPIAcxpeIHTGDMjlMoaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0Zvb3RhZ2VzdXMvV2luZFVJL21haW4vZGlzdC9tYWluLmx1YQ==')))()

local Window = WindUI:CreateWindow({
    Title = AXxoVtDVcwP('MdEchHefSCUSeIDTWyWAOCJUlSGqrsJuTqnqLugBapiIFwbpHEClfcTZ3JwayBodWI='),
    Author = AXxoVtDVcwP('WDqFHnsyPmFohxuvrEwJhuEKIVpfPAMAZlBcpCQCAEuaaZYWtBaFTcvRGVsdGEgTW9iaWxl'),
    Folder = AXxoVtDVcwP('aNbDFEXeyuOPQaLGZqgLNHYvzWZWrSKmyCLaIcKgRxrsoZWtIJmVgYXZ3Jwa2h1Yg=='),
    Size = UDim2.fromOffset(520, 460),
    Transparent = true,
    Theme = AXxoVtDVcwP('UbCGxVjHOdtdRejffNeLfhLYjnLzZTFqSZDPPgCutHQcnBmiKXsTEctRGFyaw==')
})

--=========================================
-- 2. SISTEMA TOKEN & HOOK REMOTE
--=========================================
local replicated_storage = cloneref(game:GetService(AXxoVtDVcwP('QLNETeYUOLJPqYaJOKRvpHYKuTQsfrKFghlliLQblhyIoeisBtkItdeUmVwbGljYXRlZFN0b3JhZ2U=')))
local workspace = cloneref(game:GetService(AXxoVtDVcwP('ODjZFPaSqPlMGOCUqNGImflRRYQZYitSbBgQiwugynvMfHqacKYDQNXV29ya3NwYWNl')))

local _token = nil
local _reverted = {}
local _original = {}
local _captured = nil
local superSpamCPS = 100
local immoHeightOffset = -15 -- Offset base di altezza

task.spawn(function()
    pcall(function()
        for _, Function in getgc(true) do
            if type(Function) ~= AXxoVtDVcwP('CVYKpfacJVwwkZycuDbiMbbvELSSMYtIdyKjouOZHUBFRWIUTEyjFNuZnVuY3Rpb24=') then continue end
            local src = debug.info(Function, AXxoVtDVcwP('RICXeRKyBPijheHkNPlYBwOaVRcBciuJgdfTfOTImtcXoJrszoCZpEFcw=='))
            if type(src) ~= AXxoVtDVcwP('dfhrwhzChhhyJePgpvMBTgvXukRYEcIJCTOaBlOoaMwBIBvFvJrPTaqc3RyaW5n') or not src:find(AXxoVtDVcwP('lvllynqdEKhFNCKIiyiCFXxejfSPVJDRaUcnVqFmKIFwazYKzHAngaQUFJZ'), 1, true) then continue end

            for _, value in debug.getupvalues(Function) do
                if type(value) == AXxoVtDVcwP('kVtsiYOPZkQMRvsKQLyiAtlZgTcaJmrbFxZhTiZWJgbjGgtsLoNAluvZnVuY3Rpb24=') then
                    _token = value
                    break
                end
            end
            if _token then break end
        end
    end)
end)

local function _tokenize(_remote_uid)
    if not _token then return AXxoVtDVcwP('hiJqnwNsNaVoRFoWCOtmkOComEHKoWkMpCOLXrdCLgFbMsXeLGJJlWM') end
    local ok, result = pcall(function()
        local time = tostring(math.floor(workspace:GetServerTimeNow() * 100))
        local key = _token(_remote_uid, AXxoVtDVcwP('PgSmjowAGUQHkvSCrvwDOyLeWHjuKfbUANNjxHBvIUKFPyUteLasUrCVElNRQ=='))
        if type(key) ~= AXxoVtDVcwP('aDQbYFmPgdbyQyXKocCoZcXyEvFhsSbhOcDizjoewDIORHvlLWJWjZvc3RyaW5n') then return AXxoVtDVcwP('HqcbIuXbtTCTzgFHwCNQJSiToJgXARaZVYdfjIxHMEzTuoYTgJCDbQF') end

        local characters = table.create(#time)
        for index = 1, #time do
            characters[index] = string.char(bit32.bxor(
                (string.byte(time, index) + index) % 256,
                string.byte(key, (index - 1) % #key + 1)
            ))
        end
        return table.concat(characters)
    end)
    return ok and result or AXxoVtDVcwP('zPyKYWfnpFmnmQRNhWkPBsgJVfNrNhBaBWyFjbjjiAcMTSzRLPiFHoi')
end

local function _is_valid(args)
    return #args == 8
        and type(args[2]) == AXxoVtDVcwP('xEeEBLWXyEbNPljUShaVpSHYkNrhXrtbfGRplJGaRalMsaCbQzwDwHuc3RyaW5n')
        and type(args[3]) == AXxoVtDVcwP('PJrSDfOLGKvNZFBeKpHwSTxOBqcmfFRRFaZLCVbQmewVNCILQBqZqlqc3RyaW5n')
        and type(args[4]) == AXxoVtDVcwP('SByHCjiFSKhumPUCmHFNukFDcjiGPuFosiPtvPBhiyFlcGoTDbZitnJbnVtYmVy')
        and typeof(args[5]) == AXxoVtDVcwP('zujgHdwIgHKyWgWmxDxOkhcszsFePOPxAaDCJBfGEzqPYdRObkRoimIQ0ZyYW1l')
        and type(args[6]) == AXxoVtDVcwP('HBQyIQQOcuMVGtbBzipadFWcMDCsbilMfNEZhXYkYLdlsNgFnuYmelOdGFibGU=')
        and type(args[7]) == AXxoVtDVcwP('BwPYkbsLNFEOeqsbFLitYeuFhfkWRpfiDoPlglIvIJmXkYOrzWZQOsudGFibGU=')
        and type(args[8]) == AXxoVtDVcwP('kqHKAVHjhttTEtbiuXVdkEMKZEHJpFjvzXlpnnFhIoJprivEuayxWRWYm9vbGVhbg==')
end

local function _hook(remote)
    if _reverted[remote] then return end
    pcall(function()
        local meta = getrawmetatable(remote)
        if not meta or _original[meta] then return end
        _original[meta] = true
        setreadonly(meta, false)

        local _old = meta.__index
        meta.__index = function(self, key)
            if (key == AXxoVtDVcwP('UvErOYdWVpZmRSneTiLbttPbYwyulpRxoqBMsMQZKOJdtLMLQAMDMZURmlyZVNlcnZlcg==') and self:IsA(AXxoVtDVcwP('IQoBAJFtMnmIwYNMeJiQXqgXUsRxRfGbiaOTLHzVVmWazNUaGzYTsmmUmVtb3RlRXZlbnQ='))) or
               (key == AXxoVtDVcwP('bPOeFseFWmndVHaFHGGGoFuBZeohTIOiPnTgtdNCyBsiKWBtiaLUYNQSW52b2tlU2VydmVy') and self:IsA(AXxoVtDVcwP('WdKGhHzlLenujVSdszZrhpXlIUFSYloZMfcHVjKXcOuABiZsaFZNQErUmVtb3RlRnVuY3Rpb24='))) then
                return function(_, ...)
                    local _arguments = {...}
                    if _is_valid(_arguments) and not _reverted[self] then
                        _reverted[self] = _arguments
                        _captured = {
                            remote = self,
                            args = _arguments
                        }
                    end
                    return _old(self, key)(_, unpack(_arguments))
                end
            end
            return _old(self, key)
        end
        setreadonly(meta, true)
    end)
end

for _, remote in pairs(replicated_storage:GetDescendants()) do
    if remote:IsA(AXxoVtDVcwP('JvkoxTMubXgKOoPVgbFQmwFqMQKaakbQHxnMjyeqUtYelIfjdAfzEVCUmVtb3RlRXZlbnQ=')) or remote:IsA(AXxoVtDVcwP('NUNidlKkxbsneWFUEDZJNYMEsdLzqYCWTYbagNnlKQmkyMuMjYtPBAWUmVtb3RlRnVuY3Rpb24=')) then
        _hook(remote)
    end
end

local function execute_parry()
    if _captured and _captured.remote and _captured.args then
        local remote = _captured.remote
        local args = _captured.args
        local packet = {
            args[1],
            args[2],
            _tokenize(args[2]),
            0.5,
            workspace.CurrentCamera.CFrame,
            {},
            {0, 0},
            false
        }
        pcall(function()
            if remote:IsA(AXxoVtDVcwP('RncYcvanzMSyAoOjtgEOYtptoELRbcTHQsQClNpIjVtVekgEVLFJcjGUmVtb3RlRXZlbnQ=')) then
                remote:FireServer(unpack(packet))
            else
                remote:InvokeServer(unpack(packet))
            end
        end)
    else
        pcall(function()
            local vim = game:GetService(AXxoVtDVcwP('bppPfanwUwYUsAPBYZfrgAXSakbKzaqnzFjDiYStdiXgScvTjgdmsZBVmlydHVhbElucHV0TWFuYWdlcg=='))
            vim:SendMouseButtonEvent(0, 0, 0, true, game, 0)
            vim:SendMouseButtonEvent(0, 0, 0, false, game, 0)
        end)
    end
end

--=========================================
-- 3. FUNZIONI UTILITÀ PALLA E BERSAGLIO
--=========================================
local function getBall()
    local ballsFolder = workspace:FindFirstChild(AXxoVtDVcwP('OKprAsWBlrCoILDVgUTOgkMpwbjfXJtXLDmRnZkWcvNSvEzwRUkXcfjQmFsbHM='))
    if ballsFolder then
        for _, v in pairs(ballsFolder:GetChildren()) do
            if v:IsA(AXxoVtDVcwP('qwjuNfBteGpequWrSNlJFkrHfACtpxmQunLDhIWdaOIOghsYvsDzipWQmFzZVBhcnQ=')) and (v:GetAttribute(AXxoVtDVcwP('miCWHAqFFXFOCFKzBopmGpWripALmAUdvaNxTMrEIkjAUguGUatSxCHcmVhbEJhbGw=')) or v.Name:lower():find(AXxoVtDVcwP('oTjcgRHPOpAZAOcFOeQDaQIvdmNDKqAZrsEOKFoaFlHazkbYuMLIJDOYmFsbA=='))) then
                return v
            end
        end
        local part = ballsFolder:FindFirstChildOfClass(AXxoVtDVcwP('VLiKpkBfkMmsPfBpWYZZiFZhyiZFGyaCjyDoOiilTSDICukpeQdIGFVQmFzZVBhcnQ='))
        if part then return part end
    end

    for _, v in pairs(workspace:GetChildren()) do
        local name = v.Name:lower()
        if name:find(AXxoVtDVcwP('dNpryAktMNQTyWYtdZSdeAqAfMVEBtqFtuWJwBDFSbeyaWIaAnraLWEYmFsbA==')) then
            if v:IsA(AXxoVtDVcwP('HbxtfIUzvyBVnHAwlZXJjdtmoEMOaOJsdKyuayKahGDkMmAJPvBWRzCQmFzZVBhcnQ=')) then return v end
            if v:IsA(AXxoVtDVcwP('ndYyuSklExETKnYdSCAjYPKzDfoejqikQMWDUFVPWLNQtRKaMWlgQBeTW9kZWw=')) then
                return v.PrimaryPart or v:FindFirstChildOfClass(AXxoVtDVcwP('DCHCLSDPmESGJAwNfGvioRAQbSrITVcxFbRowyHVqLULwueiWUwPpZHQmFzZVBhcnQ='))
            end
        end
    end
    return nil
end

local function isTarget()
    local char = LocalPlayer.Character
    if not char then return false end
    if char:FindFirstChild(AXxoVtDVcwP('owCPmneuJCODJavzZvNSQLrARdiEPCjYWxItHJPzAkUkmMskIDvWMtoSGlnaGxpZ2h0')) or char:FindFirstChildOfClass(AXxoVtDVcwP('kLyGjYIxiisqBvBAJYAULSeCHRhvNKXNNvwfvFZeqRCzqIAbKTGdXXtSGlnaGxpZ2h0')) then return true end
    return false
end

local function createMiniGui(name, title, strokeColor, yPos)
    local existing = game:GetService(AXxoVtDVcwP('rXgeLlnZrubZkUuPalMtZzhsyUzXMdsgOvOFNMizbOXapQcZxXeNVKUQ29yZUd1aQ==')):FindFirstChild(name)
    if existing then existing:Destroy() end

    local screenGui = Instance.new(AXxoVtDVcwP('CSMUyqgNNOSifuqDtaBkXMrgwaZvNzACMzFGMMyuiPxUScAswElBQOTU2NyZWVuR3Vp'))
    screenGui.Name = name
    screenGui.ResetOnSpawn = false
    screenGui.Parent = game:GetService(AXxoVtDVcwP('pHDqjBhASCGonZQHLCxvFclWUggmghRTCVmNvJMiEXZhkkDSKbUsrvNQ29yZUd1aQ=='))

    local mainFrame = Instance.new(AXxoVtDVcwP('RpcjyiNVEZwZfYsWhUzFZjnNbGJjqpBqbWwzpNMbzLcJRHpVWpjjiEaRnJhbWU='))
    mainFrame.Size = UDim2.fromOffset(170, 78)
    mainFrame.Position = UDim2.new(0.5, -85, yPos, 0)
    mainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
    mainFrame.BorderSizePixel = 0
    mainFrame.Active = true
    mainFrame.Draggable = true
    mainFrame.Parent = screenGui

    local corner = Instance.new(AXxoVtDVcwP('gHEAoiBgotwWKocCduMKvVptOyOEoePtRReVsWmRRydkTGyYEUdkOVTVUlDb3JuZXI='))
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = mainFrame

    local stroke = Instance.new(AXxoVtDVcwP('IpEMcthZFSyYBBnhQEtlFgXXuawaxcPvLNcJrODSxowJMIASMWFaLcGVUlTdHJva2U='))
    stroke.Color = strokeColor
    stroke.Thickness = 1.6
    stroke.Parent = mainFrame

    local titleLabel = Instance.new(AXxoVtDVcwP('JBcyIHGkCJvtPCtCAXOULMuWCzNjZFFKMRwOtHZmPjigkckLcNFLnQCVGV4dExhYmVs'))
    titleLabel.Size = UDim2.new(1, 0, 0, 26)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.TextSize = 12
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.Parent = mainFrame

    local toggleButton = Instance.new(AXxoVtDVcwP('neejcuVOswerIeowStFYZbREWbuZVJhbFfsdvcDYFwrookuFDbVoPVUVGV4dEJ1dHRvbg=='))
    toggleButton.Size = UDim2.new(0.9, 0, 0, 34)
    toggleButton.Position = UDim2.new(0.05, 0, 0, 32)
    toggleButton.BackgroundColor3 = Color3.fromRGB(180, 45, 45)
    toggleButton.Text = AXxoVtDVcwP('AkIxuNpLxGaqMLXBHYZJWUouYGIodsqLNdVmXkZgMRPchgqJirvdzWdT0ZG')
    toggleButton.TextColor3 = Color3.new(1, 1, 1)
    toggleButton.TextSize = 13
    toggleButton.Font = Enum.Font.GothamBold
    toggleButton.Parent = mainFrame

    local btnCorner = Instance.new(AXxoVtDVcwP('YwJuZRLuFAUabdQLjHjEiFTTddHMbmSdZSQqMpJoJFroYwHgkeNCoPcVUlDb3JuZXI='))
    btnCorner.CornerRadius = UDim.new(0, 7)
    btnCorner.Parent = toggleButton

    return screenGui, toggleButton, titleLabel
end

--=========================================
-- 4. HOME TAB
--=========================================
local HomeTab = Window:Tab({ Title = AXxoVtDVcwP('epXaFNOonfFLuRIkGlxGUOlomFKdThnoQakTATqFDdyqcFXDlSZFoCOSG9tZQ=='), Icon = AXxoVtDVcwP('hPQbKEyhDGKroMGXoWbxVsGRMhJoDWicewnaUdMEWdaVTiLpjJKCQDpaG91c2U=') })

HomeTab:Paragraph({
    Title = AXxoVtDVcwP('xOGFKDlyotpQgHaNFXWrOvpLvgetyqKJNStDnoFFSmhVUmzCZseZsTNZ3JwayBodWI='),
    Desc = AXxoVtDVcwP('JAdyNZpZJVmgsoxOxOCXyIAIYrgPeCViIMgiHeAGEHGpCfBiDEVyWXNU21hcnQgUGFycnkgVjYgKyBJbW1vcnRhbGl0eSA0MTcgKFJhbmRvbSBDaGFvcykgKyBTdXBlciBTcGFtIFYyIGF0dGl2aS4=')
})

HomeTab:Slider({
    Title = AXxoVtDVcwP('RpNhlcrlxIApmQTqcqcTiZpsSbrYgBaspClyTjKrgAmnyfSqHPZtwNkQ1BTIFN1cGVyIFNwYW0gVjI='),
    Desc = AXxoVtDVcwP('WmRSaDxVerImEluSsmdWcGHRXOsLfJdIHklgfuMjdeOkjiBYwLEwUgkVmFsb3JlIGRhIDEgYSA1MDAw'),
    Value = { Min = 1, Max = 5000, Default = 100 },
    Callback = function(val)
        if type(val) == AXxoVtDVcwP('JFeNnSeKkQMyLtozfphSOzCgymZOkAhSKaMNRGyIubJkJFEsNbpnfDxdGFibGU=') then
            superSpamCPS = val.Value or 100
        else
            superSpamCPS = tonumber(val) or 100
        end
    end
})

HomeTab:Slider({
    Title = AXxoVtDVcwP('nVKCnsGaAWLTfEfCQexgYPqcjXmHkNSVmssMJeWwRtCofBpsHbcIcNiSW1tb3J0YWxpdHkgQWx0ZXp6YSBCYXNl'),
    Desc = AXxoVtDVcwP('XCjrXqTtcbAAUQTgvHdYavUmOXfjFvBuemxApnBesNCXfTcooFHzznFRGlzdGFuemEgZGFsbA==')arena (sotto o sopra)AXxoVtDVcwP('wpljtRznDNJywYVcaWKxtQJAlvLKjdlOnweGobEOBgsTiIMTeEKtekWLA0KICAgIFZhbHVlID0geyBNaW4gPSAtNTAsIE1heCA9IDUwLCBEZWZhdWx0ID0gLTE1IH0sDQogICAgQ2FsbGJhY2sgPSBmdW5jdGlvbih2YWwpDQogICAgICAgIGlmIHR5cGUodmFsKSA9PSA=')tableAXxoVtDVcwP('BHnsUmzaaJSIkgXPsRTRzeIsOfAGrVGinSaETMetQLqIetZUwyUDmxVIHRoZW4NCiAgICAgICAgICAgIGltbW9IZWlnaHRPZmZzZXQgPSB2YWwuVmFsdWUgb3IgLTE1DQogICAgICAgIGVsc2UNCiAgICAgICAgICAgIGltbW9IZWlnaHRPZmZzZXQgPSB0b251bWJlcih2YWwpIG9yIC0xNQ0KICAgICAgICBlbmQNCiAgICBlbmQNCn0pDQoNCkhvbWVUYWI6QnV0dG9uKHsNCiAgICBUaXRsZSA9IA==')1. Smart Auto ParryAXxoVtDVcwP('tJRGRVLkCJupeAELurPganKNjGRKePzUrArKHujILQpAmcEIAlGmIKRLA0KICAgIERlc2MgPSA=')Controllo di base palla + velocità + bersaglioAXxoVtDVcwP('XpvKZoUgCKDZrsPDyCVgVGqOODAfHwfADayDqdEjyjYJKGQLbosJBjJLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oKQ0KICAgICAgICBsb2NhbCBzY3JlZW5HdWksIHRvZ2dsZUJ1dHRvbiA9IGNyZWF0ZU1pbmlHdWko')grpkSmartParryGuiAXxoVtDVcwP('ASLAYpLUTSfWtOOzaDwilcjDRZXMMSAxnmwNCEpTWPUGBwlmRZFBuASLCA=')Smart ParryAXxoVtDVcwP('SXjTuwpDTZHOCikGxpacDcvVexKYramahSmZBOdmkShgLygDdqJQCzRLCBDb2xvcjMuZnJvbVJHQig1MCwgMjIwLCAxMjApLCAwLjEyKQ0KICAgICAgICBsb2NhbCBzbWFydEFjdGl2ZSA9IGZhbHNlDQoNCiAgICAgICAgdG9nZ2xlQnV0dG9uLk1vdXNlQnV0dG9uMUNsaWNrOkNvbm5lY3QoZnVuY3Rpb24oKQ0KICAgICAgICAgICAgc21hcnRBY3RpdmUgPSBub3Qgc21hcnRBY3RpdmUNCiAgICAgICAgICAgIHRvZ2dsZUJ1dHRvbi5UZXh0ID0gc21hcnRBY3RpdmUgYW5kIA==')SMART: ONAXxoVtDVcwP('TrKwVTJsZSjzeYnxFDApYsZSNJUYxWBYxMeaUgcarCHWDyDtEZrfqiTIG9yIA==')SMART: OFFAXxoVtDVcwP('piQPAvZzJKkjvuokMWNkQSxyRJBvsrYDGbqndKbkPvvZAYoRmFwZnfBDQogICAgICAgICAgICB0b2dnbGVCdXR0b24uQmFja2dyb3VuZENvbG9yMyA9IHNtYXJ0QWN0aXZlIGFuZCBDb2xvcjMuZnJvbVJHQig0MCwgMTcwLCA2MCkgb3IgQ29sb3IzLmZyb21SR0IoMTgwLCA0NSwgNDUpDQogICAgICAgIGVuZCkNCg0KICAgICAgICB0YXNrLnNwYXduKGZ1bmN0aW9uKCkNCiAgICAgICAgICAgIGxvY2FsIGxhc3RQYXJyeSA9IDANCiAgICAgICAgICAgIGxvY2FsIHBhcnJ5aW5nID0gZmFsc2UNCiAgICAgICAgICAgIHdoaWxlIHNjcmVlbkd1aS5QYXJlbnQgZG8NCiAgICAgICAgICAgICAgICBSdW5TZXJ2aWNlLkhlYXJ0YmVhdDpXYWl0KCkNCiAgICAgICAgICAgICAgICBpZiBzbWFydEFjdGl2ZSBhbmQgbm90IHBhcnJ5aW5nIHRoZW4NCiAgICAgICAgICAgICAgICAgICAgcGNhbGwoZnVuY3Rpb24oKQ0KICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgY2hhciA9IExvY2FsUGxheWVyLkNoYXJhY3Rlcg0KICAgICAgICAgICAgICAgICAgICAgICAgaWYgbm90IGNoYXIgdGhlbiByZXR1cm4gZW5kDQogICAgICAgICAgICAgICAgICAgICAgICBsb2NhbCBocnAgPSBjaGFyOkZpbmRGaXJzdENoaWxkKA==')HumanoidRootPartAXxoVtDVcwP('HFSKyNUKlXYBiHqhVOyzWxbTjlSYtrPdxsMLkBVRPcwGcrFmAjLQknLKQ0KICAgICAgICAgICAgICAgICAgICAgICAgaWYgbm90IGhycCB0aGVuIHJldHVybiBlbmQNCg0KICAgICAgICAgICAgICAgICAgICAgICAgaWYgbm90IGlzVGFyZ2V0KCkgdGhlbiByZXR1cm4gZW5kDQoNCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIGJhbGwgPSBnZXRCYWxsKCkNCiAgICAgICAgICAgICAgICAgICAgICAgIGlmIG5vdCBiYWxsIHRoZW4gcmV0dXJuIGVuZA0KDQogICAgICAgICAgICAgICAgICAgICAgICBsb2NhbCBkaXN0ID0gKGJhbGwuUG9zaXRpb24gLSBocnAuUG9zaXRpb24pLk1hZ25pdHVkZQ0KICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgc3BlZWQgPSBiYWxsLkFzc2VtYmx5TGluZWFyVmVsb2NpdHkuTWFnbml0dWRlDQogICAgICAgICAgICAgICAgICAgICAgICBsb2NhbCB0aW1lVG9IaXQgPSBkaXN0IC8gbWF0aC5tYXgoc3BlZWQsIDEpDQogICAgICAgICAgICAgICAgICAgICAgICBsb2NhbCB0cmlnZ2VyRGlzdCA9IG1hdGguY2xhbXAoc3BlZWQgKiAwLjQyLCAxMiwgMzIpDQoNCiAgICAgICAgICAgICAgICAgICAgICAgIGlmIGRpc3QgPCB0cmlnZ2VyRGlzdCBvciB0aW1lVG9IaXQgPCAwLjM4IHRoZW4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiB0aWNrKCkgLSBsYXN0UGFycnkgPiAwLjM1IHRoZW4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGFycnlpbmcgPSB0cnVlDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxhc3RQYXJyeSA9IHRpY2soKQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0YXNrLndhaXQobWF0aC5yYW5kb20oMTAsIDI1KSAvIDEwMDApDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGV4ZWN1dGVfcGFycnkoKQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0YXNrLndhaXQoMC4yNSkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGFycnlpbmcgPSBmYWxzZQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVuZA0KICAgICAgICAgICAgICAgICAgICAgICAgZW5kDQogICAgICAgICAgICAgICAgICAgIGVuZCkNCiAgICAgICAgICAgICAgICBlbmQNCiAgICAgICAgICAgIGVuZA0KICAgICAgICBlbmQpDQogICAgZW5kDQp9KQ0KDQpIb21lVGFiOkJ1dHRvbih7DQogICAgVGl0bGUgPSA=')2. Smart Parry V6 (Ultra V4 - Anti Double Click)AXxoVtDVcwP('tBSRRjiHZpPoKhfNmihTwvyDQlMbWpVBcHnGEISznXxofeqTJAmcaBCLA0KICAgIERlc2MgPSA=')Anti-Dribble, Anti-Curve, Anti-Singularity potenziato con blocco doppi scudiAXxoVtDVcwP('ofIqBlIAwCmzwzaDPsgDvJNMvVdACFsWqBpVjWsCcsgHDJySpWPsPfvLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oKQ0KICAgICAgICBsb2NhbCBzY3JlZW5HdWksIHRvZ2dsZUJ1dHRvbiA9IGNyZWF0ZU1pbmlHdWko')grpkSmartParryV6GuiAXxoVtDVcwP('HveqIGksbvyxAHFEsaZwjoazoCNoGXBAePmDjJsHsWymoTBIrGGmVSpLCA=')Smart Parry V6AXxoVtDVcwP('wtEWzvypUTSTESyUCdTvZpWgmnXprlWidisxfkSHPwrFxfRDlVcHuzCLCBDb2xvcjMuZnJvbVJHQigyNTUsIDUwLCAxODApLCAwLjI0KQ0KICAgICAgICBsb2NhbCB2NkFjdGl2ZSA9IGZhbHNlDQoNCiAgICAgICAgdG9nZ2xlQnV0dG9uLk1vdXNlQnV0dG9uMUNsaWNrOkNvbm5lY3QoZnVuY3Rpb24oKQ0KICAgICAgICAgICAgdjZBY3RpdmUgPSBub3QgdjZBY3RpdmUNCiAgICAgICAgICAgIHRvZ2dsZUJ1dHRvbi5UZXh0ID0gdjZBY3RpdmUgYW5kIA==')V6: ONAXxoVtDVcwP('TFQyyEHUQyvULiMBEGVtkoddPqOJrNJCMoEGLvsYrENfvcWaTrvuaSVIG9yIA==')V6: OFFAXxoVtDVcwP('SnBebNwpAuCxrSNwooIMuOwlWrqaQpqFluTbgwXSkxAUxxmAUhYBilZDQogICAgICAgICAgICB0b2dnbGVCdXR0b24uQmFja2dyb3VuZENvbG9yMyA9IHY2QWN0aXZlIGFuZCBDb2xvcjMuZnJvbVJHQig0MCwgMTcwLCA2MCkgb3IgQ29sb3IzLmZyb21SR0IoMTgwLCA0NSwgNDUpDQogICAgICAgIGVuZCkNCg0KICAgICAgICB0YXNrLnNwYXduKGZ1bmN0aW9uKCkNCiAgICAgICAgICAgIGxvY2FsIGxhc3RQYXJyeVRpbWUgPSAwDQogICAgICAgICAgICBsb2NhbCBpc1BhcnJ5aW5nTG9jayA9IGZhbHNlDQogICAgICAgICAgICBsb2NhbCBsYXN0QmFsbFBvcyA9IFZlY3RvcjMuemVybw0KICAgICAgICAgICAgbG9jYWwgbGFzdENoZWNrVGljayA9IHRpY2soKQ0KDQogICAgICAgICAgICBSdW5TZXJ2aWNlLlByZVJlbmRlcjpDb25uZWN0KGZ1bmN0aW9uKCkNCiAgICAgICAgICAgICAgICBpZiBub3QgdjZBY3RpdmUgb3IgaXNQYXJyeWluZ0xvY2sgb3Igbm90IHNjcmVlbkd1aS5QYXJlbnQgdGhlbiByZXR1cm4gZW5kDQoNCiAgICAgICAgICAgICAgICBwY2FsbChmdW5jdGlvbigpDQogICAgICAgICAgICAgICAgICAgIGxvY2FsIGNoYXIgPSBMb2NhbFBsYXllci5DaGFyYWN0ZXINCiAgICAgICAgICAgICAgICAgICAgaWYgbm90IGNoYXIgdGhlbiByZXR1cm4gZW5kDQogICAgICAgICAgICAgICAgICAgIGxvY2FsIGhycCA9IGNoYXI6RmluZEZpcnN0Q2hpbGQo')HumanoidRootPartAXxoVtDVcwP('kpJDRQiNuREuUdGyDUPrKnsyQzPyweoXLEljuZebwPxESHTpqEsCqysKQ0KICAgICAgICAgICAgICAgICAgICBpZiBub3QgaHJwIHRoZW4gcmV0dXJuIGVuZA0KDQogICAgICAgICAgICAgICAgICAgIGxvY2FsIGJhbGwgPSBnZXRCYWxsKCkNCiAgICAgICAgICAgICAgICAgICAgaWYgbm90IGJhbGwgdGhlbiByZXR1cm4gZW5kDQoNCiAgICAgICAgICAgICAgICAgICAgbG9jYWwgdGFyZ2V0Q2hlY2sgPSBpc1RhcmdldCgpIG9yIChiYWxsOkdldEF0dHJpYnV0ZSg=')targetAXxoVtDVcwP('btWjgwtzkImyHhAyqiFQpqoOzHWJXUYIarwxSXraFqcUvQmbdBKcRUYKSA9PSBMb2NhbFBsYXllci5OYW1lKQ0KICAgICAgICAgICAgICAgICAgICBpZiBub3QgdGFyZ2V0Q2hlY2sgdGhlbiByZXR1cm4gZW5kDQoNCiAgICAgICAgICAgICAgICAgICAgbG9jYWwgcGluZyA9IDAuMDI1DQogICAgICAgICAgICAgICAgICAgIHBjYWxsKGZ1bmN0aW9uKCkNCiAgICAgICAgICAgICAgICAgICAgICAgIHBpbmcgPSBTdGF0cy5OZXR3b3JrLlNlcnZlclN0YXRzSXRlbVs=')Data PingAXxoVtDVcwP('TQvZtsGXztTpIubCJLnDbqyILbehECunYcKUCVHBnHBkRtkQOVauJflXTpHZXRWYWx1ZSgpIC8gMTAwMA0KICAgICAgICAgICAgICAgICAgICBlbmQpDQoNCiAgICAgICAgICAgICAgICAgICAgbG9jYWwgcGxheWVyUG9zID0gaHJwLlBvc2l0aW9uDQogICAgICAgICAgICAgICAgICAgIGxvY2FsIGJhbGxQb3MgPSBiYWxsLlBvc2l0aW9uDQogICAgICAgICAgICAgICAgICAgIGxvY2FsIGRpc3QgPSAoYmFsbFBvcyAtIHBsYXllclBvcykuTWFnbml0dWRlDQogICAgICAgICAgICAgICAgICAgIGlmIGRpc3QgPD0gMCB0aGVuIHJldHVybiBlbmQNCg0KICAgICAgICAgICAgICAgICAgICBsb2NhbCB2ZWxvY2l0eSA9IGJhbGwuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eQ0KICAgICAgICAgICAgICAgICAgICBsb2NhbCBzcGVlZCA9IHZlbG9jaXR5Lk1hZ25pdHVkZQ0KDQogICAgICAgICAgICAgICAgICAgIGxvY2FsIGN1cnJlbnRUaWNrID0gdGljaygpDQogICAgICAgICAgICAgICAgICAgIGxvY2FsIGR0ID0gY3VycmVudFRpY2sgLSBsYXN0Q2hlY2tUaWNrDQogICAgICAgICAgICAgICAgICAgIGlmIGR0ID4gMC4wMTUgdGhlbg0KICAgICAgICAgICAgICAgICAgICAgICAgaWYgbGFzdEJhbGxQb3Mgfj0gVmVjdG9yMy56ZXJvIHRoZW4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBsb2NhbCBleHBlY3RlZFBvcyA9IGJhbGxQb3MgKyAodmVsb2NpdHkgKiBkdCkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBsb2NhbCBkZXZpYXRpb24gPSAoYmFsbFBvcyAtIGV4cGVjdGVkUG9zKS5NYWduaXR1ZGUNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiBkZXZpYXRpb24gPiAoc3BlZWQgKiAwLjEwKSB0aGVuDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNwZWVkID0gc3BlZWQgKiAxLjU1DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5kDQogICAgICAgICAgICAgICAgICAgICAgICBlbmQNCiAgICAgICAgICAgICAgICAgICAgICAgIGxhc3RCYWxsUG9zID0gYmFsbFBvcw0KICAgICAgICAgICAgICAgICAgICAgICAgbGFzdENoZWNrVGljayA9IGN1cnJlbnRUaWNrDQogICAgICAgICAgICAgICAgICAgIGVuZA0KDQogICAgICAgICAgICAgICAgICAgIGxvY2FsIGRpclRvUGxheWVyID0gKHBsYXllclBvcyAtIGJhbGxQb3MpLlVuaXQNCiAgICAgICAgICAgICAgICAgICAgbG9jYWwgYmFsbERpciA9IHNwZWVkID4gMCBhbmQgdmVsb2NpdHkuVW5pdCBvciBWZWN0b3IzLnplcm8NCiAgICAgICAgICAgICAgICAgICAgbG9jYWwgZG90UHJvZHVjdCA9IGRpclRvUGxheWVyOkRvdChiYWxsRGlyKQ0KDQogICAgICAgICAgICAgICAgICAgIGlmIGRvdFByb2R1Y3QgPiAtMC4yNSBvciBkaXN0IDwgMjggdGhlbg0KICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgdGltZVRvUmVhY2ggPSBkaXN0IC8gbWF0aC5tYXgoc3BlZWQsIDEpDQogICAgICAgICAgICAgICAgICAgICAgICANCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIHRyaWdnZXJUaW1lID0gbWF0aC5jbGFtcCgocGluZyAqIDAuOTUpICsgMC4yOCwgMC4xNSwgMC42MCkNCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIHRyaWdnZXJEaXN0ID0gbWF0aC5jbGFtcCgoc3BlZWQgKiAwLjUyKSArIChwaW5nICogc3BlZWQgKiAxLjQpLCAxNCwgNjApDQoNCiAgICAgICAgICAgICAgICAgICAgICAgIGlmICh0aW1lVG9SZWFjaCA8PSB0cmlnZ2VyVGltZSBvciBkaXN0IDw9IHRyaWdnZXJEaXN0KSBhbmQgKGN1cnJlbnRUaWNrIC0gbGFzdFBhcnJ5VGltZSA+IDAuNDUpIHRoZW4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpc1BhcnJ5aW5nTG9jayA9IHRydWUNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYXN0UGFycnlUaW1lID0gY3VycmVudFRpY2sNCg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgIGV4ZWN1dGVfcGFycnkoKQ0KDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgdGFzay5zcGF3bihmdW5jdGlvbigpDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIHN0YXJ0VGltZSA9IHRpY2soKQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXBlYXQNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJ1blNlcnZpY2UuSGVhcnRiZWF0OldhaXQoKQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgY3VycmVudEJhbGwgPSBnZXRCYWxsKCkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIGN1cnJlbnRUYXJnZXQgPSBjdXJyZW50QmFsbCBhbmQgY3VycmVudEJhbGw6R2V0QXR0cmlidXRlKA==')targetAXxoVtDVcwP('tveXxHIJcMIkaAKpgDbIuEIaOzKIwiTAousyrmbRaVDfUFdiOuAZstrKQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgdGFyZ2V0UmVzZXQgPSBub3QgaXNUYXJnZXQoKSBhbmQgKGN1cnJlbnRUYXJnZXQgYW5kIGN1cnJlbnRUYXJnZXQgfj0gTG9jYWxQbGF5ZXIuTmFtZSkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW50aWwgdGFyZ2V0UmVzZXQgb3IgKHRpY2soKSAtIHN0YXJ0VGltZSA+IDAuNTUpDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0YXNrLndhaXQoMC4xKQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpc1BhcnJ5aW5nTG9jayA9IGZhbHNlDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5kKQ0KICAgICAgICAgICAgICAgICAgICAgICAgZW5kDQogICAgICAgICAgICAgICAgICAgIGVuZA0KICAgICAgICAgICAgICAgIGVuZCkNCiAgICAgICAgICAgIGVuZCkNCiAgICAgICAgZW5kKQ0KICAgIGVuZA0KfSkNCg0KSG9tZVRhYjpCdXR0b24oew0KICAgIFRpdGxlID0g')3. Immortality Mode (Script 417 Chaos)AXxoVtDVcwP('fUFUSFVGxHWkyrwrKVswizznuWiPSLujdPSAZtRorzpkCJDFXvQrTWPLA0KICAgIERlc2MgPSA=')Movimento caotico multidirezionale 417 per schivare ogni tipo di tracciamentoAXxoVtDVcwP('qkPbuIHoQsqPwaKsBjWaYzaAFkNHuJROAVesQvOlPcQjFzgRdwRBbMkLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oKQ0KICAgICAgICBsb2NhbCBzY3JlZW5HdWksIHRvZ2dsZUJ1dHRvbiA9IGNyZWF0ZU1pbmlHdWko')grpkImmortality417GuiAXxoVtDVcwP('efrGtJuEWgGDpCJadIExSUdZbfhfltAGavwbyPRcbTOEYrzasvjUiZdLCA=')Immortality 417AXxoVtDVcwP('hfAnIHYzrNEnizASzXrhBYNzAYgRKIWAoPmRCXaqkomgDQMJvCzsQtnLCBDb2xvcjMuZnJvbVJHQigwLCAxODAsIDI1NSksIDAuMzYpDQogICAgICAgIGxvY2FsIGltbW9BY3RpdmUgPSBmYWxzZQ0KDQogICAgICAgIHRvZ2dsZUJ1dHRvbi5Nb3VzZUJ1dHRvbjFDbGljazpDb25uZWN0KGZ1bmN0aW9uKCkNCiAgICAgICAgICAgIGltbW9BY3RpdmUgPSBub3QgaW1tb0FjdGl2ZQ0KICAgICAgICAgICAgdG9nZ2xlQnV0dG9uLlRleHQgPSBpbW1vQWN0aXZlIGFuZCA=')IMMO 417: ONAXxoVtDVcwP('OlWScuwWKcoaALvRmzfkPKYNIIeRhijJPkUnWLMCuGujdaQHytfHImMIG9yIA==')IMMO 417: OFFAXxoVtDVcwP('msQlySaMrapnETzwIOZFVqczEHLcIgDubwfousJbEtQWxUbWGpVDhVKDQogICAgICAgICAgICB0b2dnbGVCdXR0b24uQmFja2dyb3VuZENvbG9yMyA9IGltbW9BY3RpdmUgYW5kIENvbG9yMy5mcm9tUkdCKDQwLCAxNzAsIDYwKSBvciBDb2xvcjMuZnJvbVJHQigxODAsIDQ1LCA0NSkNCiAgICAgICAgZW5kKQ0KDQogICAgICAgIHRhc2suc3Bhd24oZnVuY3Rpb24oKQ0KICAgICAgICAgICAgbG9jYWwgcmFuZG9tWCwgcmFuZG9tWiwgcmFuZG9tWU9mZnNldCA9IDAsIDAsIDANCiAgICAgICAgICAgIGxvY2FsIGxhc3RDaGFuZ2UgPSAwDQoNCiAgICAgICAgICAgIC0tIEFsZ29yaXRtbyBkaSBtb3ZpbWVudG8gY2FvdGljbyA0MTcNCiAgICAgICAgICAgIGxvY2FsIGZ1bmN0aW9uIHNjcmlwdDQxN01vdmUoaHJwKQ0KICAgICAgICAgICAgICAgIGlmIHRpY2soKSAtIGxhc3RDaGFuZ2UgPiAwLjA1IHRoZW4NCiAgICAgICAgICAgICAgICAgICAgbGFzdENoYW5nZSA9IHRpY2soKQ0KICAgICAgICAgICAgICAgICAgICByYW5kb21YID0gbWF0aC5yYW5kb20oLTQxLCA0MSkNCiAgICAgICAgICAgICAgICAgICAgcmFuZG9tWiA9IG1hdGgucmFuZG9tKC00MSwgNDEpDQogICAgICAgICAgICAgICAgICAgIHJhbmRvbVlPZmZzZXQgPSBtYXRoLnJhbmRvbSgtMTcsIDE3KQ0KICAgICAgICAgICAgICAgIGVuZA0KDQogICAgICAgICAgICAgICAgbG9jYWwgY3VycmVudFBvcyA9IGhycC5Qb3NpdGlvbg0KICAgICAgICAgICAgICAgIGxvY2FsIHRhcmdldFkgPSBjdXJyZW50UG9zLlkgKyBpbW1vSGVpZ2h0T2Zmc2V0ICsgcmFuZG9tWU9mZnNldA0KDQogICAgICAgICAgICAgICAgaHJwLlZlbG9jaXR5ID0gVmVjdG9yMy5uZXcocmFuZG9tWCAqIDQuMTcsIDAsIHJhbmRvbVogKiA0LjE3KQ0KICAgICAgICAgICAgICAgIGhycC5DRnJhbWUgPSBDRnJhbWUubmV3KA0KICAgICAgICAgICAgICAgICAgICBjdXJyZW50UG9zLlggKyAocmFuZG9tWCAqIDAuMTcpLA0KICAgICAgICAgICAgICAgICAgICB0YXJnZXRZLA0KICAgICAgICAgICAgICAgICAgICBjdXJyZW50UG9zLlogKyAocmFuZG9tWiAqIDAuMTcpDQogICAgICAgICAgICAgICAgKSAqIChocnAuQ0ZyYW1lIC0gaHJwLkNGcmFtZS5Qb3NpdGlvbikNCiAgICAgICAgICAgIGVuZA0KDQogICAgICAgICAgICB3aGlsZSBzY3JlZW5HdWkuUGFyZW50IGRvDQogICAgICAgICAgICAgICAgUnVuU2VydmljZS5IZWFydGJlYXQ6V2FpdCgpDQogICAgICAgICAgICAgICAgaWYgaW1tb0FjdGl2ZSB0aGVuDQogICAgICAgICAgICAgICAgICAgIHBjYWxsKGZ1bmN0aW9uKCkNCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIGNoYXIgPSBMb2NhbFBsYXllci5DaGFyYWN0ZXINCiAgICAgICAgICAgICAgICAgICAgICAgIGlmIG5vdCBjaGFyIHRoZW4gcmV0dXJuIGVuZA0KICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgaHJwID0gY2hhcjpGaW5kRmlyc3RDaGlsZCg=')HumanoidRootPartAXxoVtDVcwP('EiietvqJkuHwgPyawAnqDiVgRuikfkDsFEYIPRqlIwQPaMtSDBPTOhNKQ0KICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgaHVtYW5vaWQgPSBjaGFyOkZpbmRGaXJzdENoaWxkT2ZDbGFzcyg=')HumanoidAXxoVtDVcwP('SqAeSJjjdOhcbxHfJBnzdlPqNbRqrbSmBGRYtFhVxQvpVUKtWkLNSVeKQ0KICAgICAgICAgICAgICAgICAgICAgICAgaWYgbm90IGhycCBvciBub3QgaHVtYW5vaWQgdGhlbiByZXR1cm4gZW5kDQoNCiAgICAgICAgICAgICAgICAgICAgICAgIGh1bWFub2lkLlBsYXRmb3JtU3RhbmQgPSBmYWxzZQ0KICAgICAgICAgICAgICAgICAgICAgICAgc2NyaXB0NDE3TW92ZShocnApDQogICAgICAgICAgICAgICAgICAgIGVuZCkNCiAgICAgICAgICAgICAgICBlbHNlDQogICAgICAgICAgICAgICAgICAgIHBjYWxsKGZ1bmN0aW9uKCkNCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIGNoYXIgPSBMb2NhbFBsYXllci5DaGFyYWN0ZXINCiAgICAgICAgICAgICAgICAgICAgICAgIGlmIGNoYXIgdGhlbg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIGh1bWFub2lkID0gY2hhcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3Mo')HumanoidAXxoVtDVcwP('LabMkrtepyXCepcerJWLkdTiaAvNqOdIFvnegKmZUNxmutSkumAEtyQKQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlmIGh1bWFub2lkIHRoZW4gaHVtYW5vaWQuUGxhdGZvcm1TdGFuZCA9IGZhbHNlIGVuZA0KICAgICAgICAgICAgICAgICAgICAgICAgZW5kDQogICAgICAgICAgICAgICAgICAgIGVuZCkNCiAgICAgICAgICAgICAgICBlbmQNCiAgICAgICAgICAgIGVuZA0KICAgICAgICBlbmQpDQogICAgZW5kDQp9KQ0KDQpIb21lVGFiOkJ1dHRvbih7DQogICAgVGl0bGUgPSA=')4. Lobby Training Auto ParryAXxoVtDVcwP('mAowKoSPVXyOxlATvZgAHqBDlzdibPuAPpQgAgNeuXutShDyBkaRHdRLA0KICAgIERlc2MgPSA=')Per la lobby di allenamentoAXxoVtDVcwP('nTExkqrFTmhFjJIDoMmeVGzYjOhuENUfpcIrYMxbYHEXwoXAtSOAqOzLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oKQ0KICAgICAgICBsb2NhbCBzY3JlZW5HdWksIHRvZ2dsZUJ1dHRvbiA9IGNyZWF0ZU1pbmlHdWko')grpkLobbyParryGuiAXxoVtDVcwP('CEFBKycbJVqgzSNBdiGhxEUOnLWsoYIDdUJyjhpiaJkYvejuOFGQwkKLCA=')Lobby TrainingAXxoVtDVcwP('soFWdDkJdiECElDKEFJcnzVnzzMGFeEOidyQiwnvCWVjNeXCdaWfjNBLCBDb2xvcjMuZnJvbVJHQigyNTUsIDE4MCwgNDApLCAwLjQ4KQ0KICAgICAgICBsb2NhbCBsb2JieUFjdGl2ZSA9IGZhbHNlDQoNCiAgICAgICAgdG9nZ2xlQnV0dG9uLk1vdXNlQnV0dG9uMUNsaWNrOkNvbm5lY3QoZnVuY3Rpb24oKQ0KICAgICAgICAgICAgbG9iYnlBY3RpdmUgPSBub3QgbG9iYnlBY3RpdmUNCiAgICAgICAgICAgIHRvZ2dsZUJ1dHRvbi5UZXh0ID0gbG9iYnlBY3RpdmUgYW5kIA==')LOBBY: ONAXxoVtDVcwP('eXkLSiMTbuWLYaYRuZGTrMxGxhuemuFWCAPZsOGIpQrvYiIssJBJthVIG9yIA==')LOBBY: OFFAXxoVtDVcwP('dtyiiOBNDmNQvOMkwtpfUqEhgOLFmkYytooDHyCMclvagkOFEOfTJJYDQogICAgICAgICAgICB0b2dnbGVCdXR0b24uQmFja2dyb3VuZENvbG9yMyA9IGxvYmJ5QWN0aXZlIGFuZCBDb2xvcjMuZnJvbVJHQig0MCwgMTcwLCA2MCkgb3IgQ29sb3IzLmZyb21SR0IoMTgwLCA0NSwgNDUpDQogICAgICAgIGVuZCkNCg0KICAgICAgICB0YXNrLnNwYXduKGZ1bmN0aW9uKCkNCiAgICAgICAgICAgIGxvY2FsIGxhc3RQYXJyeSA9IDANCiAgICAgICAgICAgIHdoaWxlIHNjcmVlbkd1aS5QYXJlbnQgZG8NCiAgICAgICAgICAgICAgICBSdW5TZXJ2aWNlLkhlYXJ0YmVhdDpXYWl0KCkNCiAgICAgICAgICAgICAgICBpZiBsb2JieUFjdGl2ZSB0aGVuDQogICAgICAgICAgICAgICAgICAgIHBjYWxsKGZ1bmN0aW9uKCkNCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIGNoYXIgPSBMb2NhbFBsYXllci5DaGFyYWN0ZXINCiAgICAgICAgICAgICAgICAgICAgICAgIGlmIG5vdCBjaGFyIHRoZW4gcmV0dXJuIGVuZA0KICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgaHJwID0gY2hhcjpGaW5kRmlyc3RDaGlsZCg=')HumanoidRootPartAXxoVtDVcwP('YVJHZrwxdZhosPgvsfLDgLSHEmKvPWwFIBLXsOTgUlXZjJkGOtCzYTVKQ0KICAgICAgICAgICAgICAgICAgICAgICAgaWYgbm90IGhycCB0aGVuIHJldHVybiBlbmQNCg0KICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgYmFsbCA9IGdldEJhbGwoKQ0KICAgICAgICAgICAgICAgICAgICAgICAgaWYgbm90IGJhbGwgdGhlbiByZXR1cm4gZW5kDQoNCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIGRpc3QgPSAoYmFsbC5Qb3NpdGlvbiAtIGhycC5Qb3NpdGlvbikuTWFnbml0dWRlDQogICAgICAgICAgICAgICAgICAgICAgICBsb2NhbCBzcGVlZCA9IGJhbGwuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eS5NYWduaXR1ZGUNCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIHRyaWdnZXJEaXN0ID0gbWF0aC5jbGFtcChzcGVlZCAqIDAuMjgsIDEwLCAyMikNCg0KICAgICAgICAgICAgICAgICAgICAgICAgaWYgZGlzdCA8IHRyaWdnZXJEaXN0IHRoZW4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiB0aWNrKCkgLSBsYXN0UGFycnkgPiAwLjEyIHRoZW4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXhlY3V0ZV9wYXJyeSgpDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxhc3RQYXJyeSA9IHRpY2soKQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0YXNrLndhaXQoMC4wOCkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbmQNCiAgICAgICAgICAgICAgICAgICAgICAgIGVuZA0KICAgICAgICAgICAgICAgICAgICBlbmQpDQogICAgICAgICAgICAgICAgZW5kDQogICAgICAgICAgICBlbmQNCiAgICAgICAgZW5kKQ0KICAgIGVuZA0KfSkNCg0KSG9tZVRhYjpCdXR0b24oew0KICAgIFRpdGxlID0g')5. Manual SpamAXxoVtDVcwP('QmLquerkNbczkUOfPuKFqwabyidUMEMROJJTHAyhQBhxOpMOqLQSxNtLA0KICAgIERlc2MgPSA=')Spam a raffiche manualeAXxoVtDVcwP('YTneATxAYTJCoMcMzcgTbqnoXSrFuWJuQRvirJskPwAYQBgxkMlwAwMLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oKQ0KICAgICAgICBsb2NhbCBzY3JlZW5HdWksIHRvZ2dsZUJ1dHRvbiA9IGNyZWF0ZU1pbmlHdWko')grpkSpamGuiAXxoVtDVcwP('LgIKIYhgNNyMyTrVBqrldgFGOnxMcfpXgXBjYqOQCdpAQonahKUJIGqLCA=')Manual SpamAXxoVtDVcwP('nOQyziJmviLbalVmNWOLuHFnKAGAQcazFHKIekWsLYbEBMgBGWMfNfULCBDb2xvcjMuZnJvbVJHQigyNTUsIDcwLCA3MCksIDAuNjApDQogICAgICAgIGxvY2FsIHNwYW1taW5nID0gZmFsc2UNCg0KICAgICAgICB0b2dnbGVCdXR0b24uTW91c2VCdXR0b24xQ2xpY2s6Q29ubmVjdChmdW5jdGlvbigpDQogICAgICAgICAgICBzcGFtbWluZyA9IG5vdCBzcGFtbWluZw0KICAgICAgICAgICAgdG9nZ2xlQnV0dG9uLlRleHQgPSBzcGFtbWluZyBhbmQg')SPAM: ONAXxoVtDVcwP('MGHbZHATXJWzLOGLGhibCVGlXNDEeQKlUPDJFLLAWQmjQNkOdNmmGepIG9yIA==')SPAM: OFFAXxoVtDVcwP('sCDAwAZaRnuIKBXrIAnoZFRlvJUjrhyBnXEWNWevpdcsLCIkJiZaAyrDQogICAgICAgICAgICB0b2dnbGVCdXR0b24uQmFja2dyb3VuZENvbG9yMyA9IHNwYW1taW5nIGFuZCBDb2xvcjMuZnJvbVJHQig0MCwgMTcwLCA2MCkgb3IgQ29sb3IzLmZyb21SR0IoMTgwLCA0NSwgNDUpDQoNCiAgICAgICAgICAgIGlmIHNwYW1taW5nIHRoZW4NCiAgICAgICAgICAgICAgICB0YXNrLnNwYXduKGZ1bmN0aW9uKCkNCiAgICAgICAgICAgICAgICAgICAgd2hpbGUgc3BhbW1pbmcgZG8NCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIGJ1cnN0ID0gbWF0aC5yYW5kb20oNSwgMTIpDQogICAgICAgICAgICAgICAgICAgICAgICBmb3IgaSA9IDEsIGJ1cnN0IGRvDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgbm90IHNwYW1taW5nIHRoZW4gYnJlYWsgZW5kDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgZXhlY3V0ZV9wYXJyeSgpDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgdGFzay53YWl0KG1hdGgucmFuZG9tKDEyLCAyOCkgLyAxMDAwKQ0KICAgICAgICAgICAgICAgICAgICAgICAgZW5kDQogICAgICAgICAgICAgICAgICAgICAgICBpZiBzcGFtbWluZyB0aGVuDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgdGFzay53YWl0KG1hdGgucmFuZG9tKDgwLCAyMDApIC8gMTAwMCkNCiAgICAgICAgICAgICAgICAgICAgICAgIGVuZA0KICAgICAgICAgICAgICAgICAgICBlbmQNCiAgICAgICAgICAgICAgICBlbmQpDQogICAgICAgICAgICBlbmQNCiAgICAgICAgZW5kKQ0KICAgIGVuZA0KfSkNCg0KSG9tZVRhYjpCdXR0b24oew0KICAgIFRpdGxlID0g')6. Super Spam V2 (1-5000 CPS)AXxoVtDVcwP('ydraaDfmpCWacpnoxEYRKgQJXTjPlAiSiTpvwsRwFIcoFEKYxyKuGkfLA0KICAgIERlc2MgPSA=')Spam ad altissima frequenza configurabile fino a 5000 CPSAXxoVtDVcwP('CuzfelZuQVxspTEfWUmjiOplBRGHADVfwIrjInxbuDPGlZitZfGPuySLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oKQ0KICAgICAgICBsb2NhbCBzY3JlZW5HdWksIHRvZ2dsZUJ1dHRvbiwgdGl0bGVMYWJlbCA9IGNyZWF0ZU1pbmlHdWko')grpkSuperSpamV2GuiAXxoVtDVcwP('LMuayJjFivwWxvAFhaqSjZaWGJARNxUcSqoXhzONLuZobqzbshdgIEjLCA=')Super Spam V2AXxoVtDVcwP('ACfbVMlHLlBhHTVoQMeXCbbwkEneJCgfamthyotMzWHEjDRwbWdiZPyLCBDb2xvcjMuZnJvbVJHQigyNTUsIDAsIDEyOCksIDAuNzIpDQogICAgICAgIGxvY2FsIHN1cGVyU3BhbUFjdGl2ZSA9IGZhbHNlDQoNCiAgICAgICAgdG9nZ2xlQnV0dG9uLk1vdXNlQnV0dG9uMUNsaWNrOkNvbm5lY3QoZnVuY3Rpb24oKQ0KICAgICAgICAgICAgc3VwZXJTcGFtQWN0aXZlID0gbm90IHN1cGVyU3BhbUFjdGl2ZQ0KICAgICAgICAgICAgdG9nZ2xlQnV0dG9uLlRleHQgPSBzdXBlclNwYW1BY3RpdmUgYW5kIA==')SUPER V2: ONAXxoVtDVcwP('nBzgpvWYToWdicaDdcyZoMxPJtNypHrsqGqzKFPRRsgzLrxtgQXuKajIG9yIA==')SUPER V2: OFFAXxoVtDVcwP('gFzwDjUBBEkCjFvwdrLUAyVwlsSuhsnWBcTVTXSHFWqSrKAfcfYmGIYDQogICAgICAgICAgICB0b2dnbGVCdXR0b24uQmFja2dyb3VuZENvbG9yMyA9IHN1cGVyU3BhbUFjdGl2ZSBhbmQgQ29sb3IzLmZyb21SR0IoNDAsIDE3MCwgNjApIG9yIENvbG9yMy5mcm9tUkdCKDE4MCwgNDUsIDQ1KQ0KDQogICAgICAgICAgICBpZiBzdXBlclNwYW1BY3RpdmUgdGhlbg0KICAgICAgICAgICAgICAgIHRhc2suc3Bhd24oZnVuY3Rpb24oKQ0KICAgICAgICAgICAgICAgICAgICBsb2NhbCBhY2N1bXVsYXRlZFRpbWUgPSAwDQogICAgICAgICAgICAgICAgICAgIHdoaWxlIHN1cGVyU3BhbUFjdGl2ZSBhbmQgc2NyZWVuR3VpLlBhcmVudCBkbw0KICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgZHQgPSBSdW5TZXJ2aWNlLlJlbmRlclN0ZXBwZWQ6V2FpdCgpDQogICAgICAgICAgICAgICAgICAgICAgICB0aXRsZUxhYmVsLlRleHQgPSA=')Super Spam V2 (AXxoVtDVcwP('kDUeErIAiCUuQxyshHPEBmFgLPcqYDJJabxSgecYpnCuRkPgxQTYGVAIC4uIHRvc3RyaW5nKHN1cGVyU3BhbUNQUykgLi4g') CPS)AXxoVtDVcwP('dNzMwrnYnbuXLJZJxsMUtThmqFEZUciXHFUleYZFMieLRZGPCqRofalDQogICAgICAgICAgICAgICAgICAgICAgICANCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIHRhcmdldENQUyA9IG1hdGguY2xhbXAoc3VwZXJTcGFtQ1BTLCAxLCA1MDAwKQ0KICAgICAgICAgICAgICAgICAgICAgICAgbG9jYWwgaW50ZXJ2YWwgPSAxIC8gdGFyZ2V0Q1BTDQogICAgICAgICAgICAgICAgICAgICAgICBhY2N1bXVsYXRlZFRpbWUgPSBhY2N1bXVsYXRlZFRpbWUgKyBkdA0KDQogICAgICAgICAgICAgICAgICAgICAgICBsb2NhbCBleGVjdXRlZFRoaXNGcmFtZSA9IDANCiAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsIG1heEFsbG93ZWQgPSBtYXRoLm1heCgxNSwgbWF0aC5jZWlsKHRhcmdldENQUyAvIDIwKSkNCg0KICAgICAgICAgICAgICAgICAgICAgICAgd2hpbGUgYWNjdW11bGF0ZWRUaW1lID49IGludGVydmFsIGFuZCBzdXBlclNwYW1BY3RpdmUgZG8NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBleGVjdXRlX3BhcnJ5KCkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBhY2N1bXVsYXRlZFRpbWUgPSBhY2N1bXVsYXRlZFRpbWUgLSBpbnRlcnZhbA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgIGV4ZWN1dGVkVGhpc0ZyYW1lID0gZXhlY3V0ZWRUaGlzRnJhbWUgKyAxDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgZXhlY3V0ZWRUaGlzRnJhbWUgPj0gbWF4QWxsb3dlZCB0aGVuDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFjY3VtdWxhdGVkVGltZSA9IDANCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWsNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbmQNCiAgICAgICAgICAgICAgICAgICAgICAgIGVuZA0KICAgICAgICAgICAgICAgICAgICBlbmQNCiAgICAgICAgICAgICAgICBlbmQpDQogICAgICAgICAgICBlbmQNCiAgICAgICAgZW5kKQ0KICAgIGVuZA0KfSkNCg0KLS09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KLS0gNS4gVVRJTElUWSBUQUINCi0tPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCmxvY2FsIFV0aWxUYWIgPSBXaW5kb3c6VGFiKHsgVGl0bGUgPSA=')UtilityAXxoVtDVcwP('uDgbrNZvwBZdKeDqUbrjlwikpmNQAkcGzaaclAmMRlVnRCOTLJfjOxRLCBJY29uID0g')wrenchAXxoVtDVcwP('tOfRcwWnEsiNeIhIdtdpYufdOeNrqkCKjmdsSyyDxJTUrMoTwdxiwVEIH0pDQoNClV0aWxUYWI6QnV0dG9uKHsNCiAgICBUaXRsZSA9IA==')Esegui pulizia Anti-LagAXxoVtDVcwP('UWSPiRhpJkVFfYERCtQBURiuXGZsBWgaLgtSGbZblBklyucORNnzKIvLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oKQ0KICAgICAgICBmb3IgXywgb2JqIGluIGlwYWlycyhXb3Jrc3BhY2U6R2V0RGVzY2VuZGFudHMoKSkgZG8NCiAgICAgICAgICAgIGNsZWFuVkZYKG9iaikNCiAgICAgICAgZW5kDQogICAgICAgIFdpbmRVSTpOb3RpZnkoeyBUaXRsZSA9IA==')Anti-LagAXxoVtDVcwP('ESpoTjjLPjIqOWfJspeeydOurpgmgpqQrIjIYEDIHIVAvIfypZBtfIgLCBDb250ZW50ID0g')Mappa ripulita con successo!AXxoVtDVcwP('lDeiNVslZTEnckqRKcPAIiYFPweJdmibwDtOFzOSfnyOowMclhSIrQELCBEdXJhdGlvbiA9IDMgfSkNCiAgICBlbmQNCn0pDQoNClV0aWxUYWI6QnV0dG9uKHsNCiAgICBUaXRsZSA9IA==')Cerca Token di nuovoAXxoVtDVcwP('YgtVHdAoXlhPutZwleiQhNsRIgrgBhOlULOrjNTwaDSunMqDhESNdomLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oKQ0KICAgICAgICB0YXNrLnNwYXduKGZ1bmN0aW9uKCkNCiAgICAgICAgICAgIHBjYWxsKGZ1bmN0aW9uKCkNCiAgICAgICAgICAgICAgICBmb3IgXywgRnVuY3Rpb24gaW4gZ2V0Z2ModHJ1ZSkgZG8NCiAgICAgICAgICAgICAgICAgICAgaWYgdHlwZShGdW5jdGlvbikgfj0g')functionAXxoVtDVcwP('KRzZQvhwLNpWFavZiNfDtzkBQhMGHzSHYfHrrFHXMCMNhFUBUGwgEtdIHRoZW4gY29udGludWUgZW5kDQogICAgICAgICAgICAgICAgICAgIGxvY2FsIHNyYyA9IGRlYnVnLmluZm8oRnVuY3Rpb24sIA==')sAXxoVtDVcwP('zPtSuAGoZQkMuRLTgwdUTCINjGTmUDAdrFRGjLbBssTnTRWaJuFspmXKQ0KICAgICAgICAgICAgICAgICAgICBpZiB0eXBlKHNyYykgPT0g')stringAXxoVtDVcwP('pellYtDbmlYbjdaiuskimUaZwDQbiMtxMjzlsBEeWkfipjnArsoXNBGIGFuZCBzcmM6ZmluZCg=')PRYAXxoVtDVcwP('LjuuIOXTAYOoWZeCFKeKFAUMBNpRajXOuXToxwRAOpVtelNxXvqpNHQLCAxLCB0cnVlKSB0aGVuDQogICAgICAgICAgICAgICAgICAgICAgICBmb3IgXywgdmFsdWUgaW4gZGVidWcuZ2V0dXB2YWx1ZXMoRnVuY3Rpb24pIGRvDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgdHlwZSh2YWx1ZSkgPT0g')functionAXxoVtDVcwP('nTiGlhuKGEqgqikvxAMjqhhGuoFDamRilNHLOxOhMxnAcDXRSKMgomAIHRoZW4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgX3Rva2VuID0gdmFsdWUNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgV2luZFVJOk5vdGlmeSh7IFRpdGxlID0g')grpk hubAXxoVtDVcwP('UhOKxVNKzJuiBMeLDfsfLrfRUOWXJNnsgbesEwBuAIcoOiQxZqyZurxLCBDb250ZW50ID0g')Token trovato!AXxoVtDVcwP('FEQPoAlTVArVpmlbLUiftBwKJfpuQUQKoStUAbrTbvBUzWJMHggyQSQLCBEdXJhdGlvbiA9IDMgfSkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5kDQogICAgICAgICAgICAgICAgICAgICAgICBlbmQNCiAgICAgICAgICAgICAgICAgICAgZW5kDQogICAgICAgICAgICAgICAgZW5kDQogICAgICAgICAgICAgICAgV2luZFVJOk5vdGlmeSh7IFRpdGxlID0g')grpk hubAXxoVtDVcwP('HWrjEZTRrJPtqjEXBmjlCeAeLlfwzuipUKeySVGfBLWlJNKEJvGhSGiLCBDb250ZW50ID0g')Token non trovatoAXxoVtDVcwP('isJSavUicTcUZVrriUgkyiskjumyUzknFRkASfeavznsqFisLOLMORtLCBEdXJhdGlvbiA9IDMgfSkNCiAgICAgICAgICAgIGVuZCkNCiAgICAgICAgZW5kKQ0KICAgIGVuZA0KfSkNCg0KVXRpbFRhYjpCdXR0b24oew0KICAgIFRpdGxlID0g')Parry Singolo (Test)AXxoVtDVcwP('ORHUyxjRllYgvslzjfiuXmSccChjeGitCDQCxsRXARazvjbJwxwHEomLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oKQ0KICAgICAgICBleGVjdXRlX3BhcnJ5KCkNCiAgICBlbmQNCn0pDQoNCi0tPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCi0tIDYuIElORk8gVEFCDQotLT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQpsb2NhbCBDcmVkaXRzVGFiID0gV2luZG93OlRhYih7IFRpdGxlID0g')InfoAXxoVtDVcwP('mMcweSuPMbpiScXfQfvZVaLMCiIqaGLQBcdrQhVmfAkEOkgxavuaSYlLCBJY29uID0g')infoAXxoVtDVcwP('fIbKVWVLFjKpxiIVlxUERFjrYSUFmMBfSGtsmwTOdbIULiCZMraTFwqIH0pDQoNCkNyZWRpdHNUYWI6UGFyYWdyYXBoKHsNCiAgICBUaXRsZSA9IA==')grpk hub - FunzioniAXxoVtDVcwP('oXpWImGTaYaTjTbexvPYdhyYfsQZdIGECaSjBUPjLuilFxuaDWsLOwQLA0KICAgIERlc2MgPSA=')1. Smart Auto Parry\n2. Smart Parry V6 (Anti Double Click)\n3. Immortality Mode (Script 417 Chaos)\n4. Lobby Training\n5. Manual Spam\n6. Super Spam V2 (1-5000 CPS)\n7. Anti-Lag UltraAXxoVtDVcwP('wZQlTrrwHEnEHiPrPrMQDoROdzhbtRqVZgvxxhrBMjqZNEJmIilqCcVDQp9KQ0KDQpXaW5kVUk6Tm90aWZ5KHsNCiAgICBUaXRsZSA9IA==')grpk hubAXxoVtDVcwP('eYqefmuZwEmdHrQetmcwPLyLZiCRzrtqJUrXzeutzErBHSiCYKADUAmLA0KICAgIENvbnRlbnQgPSA=')Menu caricato con Immortality 417!',
    Duration = 3
})
    
