vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.java",
    callback = function()
        vim.cmd(":w")  -- Ensure the file is saved
        vim.cmd(":!javac % && java %<")  -- Compile and execute
    end,
})
