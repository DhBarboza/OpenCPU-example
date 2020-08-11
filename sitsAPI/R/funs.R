#' @export
exibe_samples <- function() {
  sits::sits_labels(samples_mt_4bands)
}

#' @export
cerrado_samples <- function() {
  samples_ndvi <- sits::sits_select_bands(samples_mt_4bands, ndvi)
  samples_cerrado <- dplyr::filter(samples_ndvi, label == "Cerrado")
  plot(samples_cerrado)
}
