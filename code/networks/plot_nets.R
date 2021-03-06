suppressPackageStartupMessages(library(igraph))
suppressPackageStartupMessages(library(phyloseq))

igr_li <- readRDS("data/RDS/igraph_full.RDS")
source('code/networks/plot_helpers.R')

pdf("plots/relevance_networks.pdf", width=6, height=5)
for (i in 1:length(igr_li)) {
  par(mfrow=c(1,2),mar = c(1,0.3,1,0.3))
  plot_mod_net(igr_li[[i]], names(igr_li)[i])
  plot_phy_net(igr_li[[i]], names(igr_li)[i])
}
dev.off()
