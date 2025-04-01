

library(data.table)

d <- fread("/home/frousseu/Documents/github/flore.quebec/data/plants2024-12-18.csv")

folders_keys <- unique(d[ , c("family", "subfamily", "tribe", "subtribe", "genus", "subgenus", "section", "subsection", "series")]) |>
apply(1, function(i){
  w <- which(is.na(i) | i == "")
  n <- names(i)
  if(any(w)){
    i <- i[-w]
    n <- n[-w]
  }
  data.frame(n = paste(n, collapse = "/"), h = paste(i, collapse = "/"))
}) |>
lapply(unlist)

s <- lapply(folders_keys, function(i){strsplit(i, "/")})
paths <- lapply(s, function(i){
  lapply(i, function(j){
    sapply(1:length(j), function(k){
      paste(j[1:k], collapse = "/")
    })
  })
}) |>
  lapply(function(i) {
    as.data.frame(matrix(unlist(i, use.names = FALSE), ncol = 2))
  }) |>
  do.call("rbind", args = _) |>
  unique() |>
  setNames(c("n", "h"))
paths <- paths[order(paths$h), ]

files <- sapply(paths$h, function(i){file.path(i, paste0(basename(i), ".md"))})
paths$f <- files
paths$t <- gsub(".md", "", basename(paths$f))
paths$h <- file.path("clés", paths$h)
paths$f <- file.path("clés", paths$f)

lapply(1:nrow(paths), function(i){
  if(!dir.exists(paths$h[i])){
    dir.create(paths$h[i], recursive = TRUE)
  }   
  write("", gsub(".md", "_taxon.md", paths$f[i]))
  write("", gsub(".md", "_clé.md", paths$f[i]))
})

#lf <- list.files(full = TRUE, recursive = TRUE)
#lf[sapply(lf, function(i){sum(nchar(readLines(i))) > 1})]






