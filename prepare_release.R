prepare_release <- function() {

  bump_ <- function(x, ver) {
    d <- desc::desc(text = paste0("Version: ", ver))
    suppressMessages(d$bump_version(x)$get("Version")[[1]])
  }

  bump_version <- function(ver) {
    bumps <- c("major", "minor", "patch", "dev")
    vapply(bumps, bump_, character(1), ver = ver)
  }

  proj <- usethis::proj_get()
  ver <- desc::desc_get_version(proj)
  versions <- bump_version(ver)

  choice <- utils::menu(
    choices = glue::glue(
      "{format(names(versions), justify = 'right')} --> {versions}"
    ),
    title = glue::glue(
      "Current version is {ver}.\n", "Which part to increment? (0 no increment)"
    )
  )

  if (choice != 0) {
    new_ver <- versions[choice]
    desc::desc_set_version(new_ver, proj)
  }

  choice <- utils::menu(
    choices = c(
      "No",
      "Yes"
    ),
    title = "Update Documentation"
  )

  if (choice == 2) {
    devtools::install(quick = TRUE, reload = FALSE, dependencies = FALSE)
    pkgdown::clean_site()
    pkgdown::build_site()

    # update readme
    rmarkdown::render("README.Rmd", "github_document", encoding = "UTF-8")
    fs::file_delete("README.html")
  }


}

prepare_release()
