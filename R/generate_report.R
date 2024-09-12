# R/generate_report.R
generate_report <- function(output_dir = "report") {
  if (!dir.exists(output_dir)) {
    dir.create(output_dir)
  }
  rmarkdown::render(
    input = system.file(
      "rmarkdown",
      "templates",
      "report_template",
      "skeleton.Rmd",
      package = "reports"
    ),
    output_file = file.path(output_dir, "Rapport_Activite.pdf"),
    params = list(),
    envir = new.env(parent = globalenv())
  )
}
