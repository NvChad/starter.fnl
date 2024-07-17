(local nvcfg (require :nvchad.configs.lspconfig))

(local lspconfig (require :lspconfig))
(local servers [:html])


(each [_ lsp (ipairs servers)]
  (let [serv (. lspconfig lsp)]
    (serv.setup 
      {:on_attach nvcfg.on_attach
       :on_init nvcfg.on_init 
       :capabilities nvcfg.capabilities})))
