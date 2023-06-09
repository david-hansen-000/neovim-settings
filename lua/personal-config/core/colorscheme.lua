local status, _ = pcall(vim.cmd, "colorscheme rose-pine")
if not status then
    print("rose-pine not loaded")
    return
end

