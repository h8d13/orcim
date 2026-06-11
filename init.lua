local shell = import("micro/shell")
local config = import("micro/config")

function init()
    config.MakeCommand("glow", function(bp)
        bp:Save()
        shell.RunInteractiveShell('glow -p "' .. bp.Buf.Path .. '"', false, false)
    end, config.NoComplete)
end
