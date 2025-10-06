(local nvcfg (require :nvchad.configs.lspconfig))

(nvcfg.defaults)

(local lspconfig (require :lspconfig))
(local servers [:html :fennel_language_server])

;; setup linting for fennel
;; derived from https://github.com/Olical/dotfiles/blob/b72363f77586ad08ba1581c33ee476b1f02e999f/stowed/.config/nvim/lua/user/plugins/mason.fnl
(vim.lsp.config :fennel_language_server
  {:on_attach nvcfg.on_attach
   :on_init nvcfg.on_init
   :capabilities nvcfg.capabilities
   :filetypes [:fennel]
   :root_dir (lspconfig.util.root_pattern :fnl :lua)
   :single_file_support true
   :settings 
   {:fennel 
     {:diagnostics 
      {:globals 
        [:vim]
       :workspace 
        {:library (vim.api.nvim_list_runtime_paths)}}}}})

(vim.lsp.enable servers)
