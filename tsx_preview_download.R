shp <- st_read("tsx_archive.shp")
dest <- "d:/download_destination"

#=== tiny benchmark ===#
start_time <- Sys.time()
for (i in 1:length(shp$browseimag)) {
  url <- shp$browseimag[i] 
  name <- shp$id[i]
  download.file(as.character(url), destfile =  paste0(dest, name, ".jpg"), mode = 'wb')
  print(paste0(i, " of ", length(shp$browseimag), " downloaded"))
}
end_time <- Sys.time()
end_time - start_time