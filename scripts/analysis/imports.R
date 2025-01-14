## Module with functions
source("./module/module.R")

## Seurat object to import
master_seurat <- readRDS("./data/processed_data/master_seurat.RDS") # Most recent Seurat object
master_seurat@meta.data$Tissue[master_seurat@meta.data$Tissue=="intestine"] <- "dev. intestine"
pca_proj <- readRDS("./data/processed_data/pca_proj.RDS") # PCA projection from 1928 HVGs

## Set of files to import 
pathway_df <- read.csv("./data/raw_data/pathbank/pathway_df.csv", row.names = 1)

## Colors to import
colors_1206 <- readRDS("./data/processed_data/colors_1206.RDS") # List with labels and corresponding colors
glasbey <- readRDS("./data/processed_data/glasbey.RDS") # List of glasbey colors for categorical labels
lg_pal = readRDS("./data/processed_data/lg_pal.RDS") # Palette for Supplementary File 4, with over 400 colors

## Directories to save to
fig_dir = "./scripts/figures/"