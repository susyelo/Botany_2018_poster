# libs --------------------------------------------------------------------
library(BIEN)
library(maps) #Useful for making quick maps of occurrences
library(sp) # A package for spatial data
library(wesanderson)

# data --------------------------------------------------------------------
Xanthium_strumarium_range <- BIEN_ranges_load_species(species = "Euterpe precatoria")



# Draw map ----------------------------------------------------------------
cols_range<-wes_palette("Cavalcanti1")[2]
#First, let's add a base map so that our range has some context:



pdf("Range_map_figure.pdf")
map('world',fill=T , border="lightgrey", col= "lightgrey",xlim = c(-100,-30),ylim = c(-60,25))
#Now, we can add the range map:
plot(Xanthium_strumarium_range,border=cols_range,col=cols_range, add=T,axes=TRUE)
map.axes(cex.axis=1.5)
dev.off()