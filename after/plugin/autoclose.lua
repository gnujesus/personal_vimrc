require("autoclose").setup({
   keys = {
      ["$"] = { escape = true, close = true, pair = "$$"},
   },

   options = {
        disable_filetypes = { 'text', 'markdown'},    
   }
})


