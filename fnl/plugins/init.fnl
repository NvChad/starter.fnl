[{1 :stevearc/conform.nvim
    :config (fn []
             (require :configs.conform))}

 {1 :neovim/nvim-lspconfig
    :config (fn []
              (local cfg (require :nvchad.configs.lspconfig))
              (cfg.defaults)
              (require :configs.lspconfig))}

 {1 :williamboman/mason.nvim
    :opts 
    {:ensure_installed
     [:lua-language-server :stylua :html-lsp]}}

 {1 :nvim-treesitter/nvim-treesitter
    :opts 
    {:ensure_installed 
     [:vim :lua :vimdoc :fennel]}}

 {1 :hrsh7th/nvim-cmp
    :config 
    (fn [_ opts]
      (table.insert
        opts.sources 1 
        {:name :conjure}) ; autocomplete for fennel
      ((. (require :cmp) :setup) opts))}

 ; community plugin repo
 {1 :NvChad/nvcommunity}
 ; install plugin from said repo
 ; {:import :nvcommunity.diagnostics.trouble}

 ; infer parentheses, uncomment to use
 ; {1 :gpanders/nvim-parinfer
 ;    :ft [:fennel]}

 ; if you have rust, don't use gpanders/nvim-parinfer
 ; use this instead
 ; {1 :eraserhd/parinfer-rust
 ;    :ft [:fennel]
 ;    :build "cargo build --release"}

 ; vim motion for lisp editing
 ; {1 :julienvincent/nvim-paredit
 ;  :ft [:fennel]
 ;  :config (fn []
 ;           (let [paredit (require :nvim-paredit)]
 ;             (paredit.setup)))}

 ; {1 :julienvincent/nvim-paredit-fennel
 ;  :dependencies [:julienvincent/nvim-paredit]
 ;  :ft [:fennel]
 ;  :config (fn []
 ;            (let [paredit-fnl (require :nvim-paredit-fennel)]
 ;              (paredit-fnl.setup)))}

 ; surround text with ()
 {1 :kylechui/nvim-surround
    :event :VeryLazy
    :config 
    (fn []
      (let [surround (require :nvim-surround)
            config {}]
        (surround.setup config)))}
              

 ; plug neovim with a repl
 {1 :PaterJason/cmp-conjure
    :ft [:fennel]
    :dependencies 
    {1 :Olical/conjure
       :ft [:fennel]}}]
