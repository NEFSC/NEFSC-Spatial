#' Function to list files on an anonymous FTP server.
#'
#' @param url The url of remote directory.
#'
#' @param sort Should the files be sorted alphabetically?
#'
#' @param verbose Should the function give messages?
#'
#' \code{\link{download_ftp_file}}, \code{\link{upload_to_ftp}}
#'
#' @author Based on: Stuart K. Grange
#'
#' @examples
#' \dontrun{
#'
#' # Set credentials in this format
#' credentials <- "username:password"
#'
#' # List files on a ftp server
#' list_files_ftp("ftp://195.174.23.76/test", credentials)
#'
#' }
#'
#' @export
#'
list_files_ftp <- function(url,
                           sort = FALSE,
                           verbose = FALSE) {

  # Do
  x <- url %>%
    purrr::map(
      ~list_files_ftp_worker(
        url = .,
        credentials = "",
        sleep = NA,
        verbose = verbose
      )
    ) %>%
    purrr::flatten_chr()

  # Sort remote file names
  if (sort) x <- sort(x)

  return(x)
}



list_files_ftp_worker <- function(url, credentials, sleep, verbose) {

  # Message to user
  if (verbose) message(date_message(), "`", url, "`...")

  # url must be prefixed with ftp or sftp
  if (!grepl("^ftp://|^sftp://", url)) {
    stop("URL must be prefixed with 'ftp://' or 'sftp://'", call. = FALSE)
  }

  # Ensure the directory has a trailing separator
  url <- stringr::str_c(url, .Platform$file.sep)

  # Get the file list
  # If credentials are blank, this will still work
  file_list <- tryCatch({

    RCurl::getURL(
      url,
      userpwd = credentials,
      ftp.use.epsv = FALSE,
      dirlistonly = TRUE,
      forbid.reuse = TRUE,
      .encoding = "UTF-8"
    )

  }, error = function(e) {
    as.character()
  })

  # Make a vector
  if (length(file_list) != 0) {
    file_list <- stringr::str_c(url, stringr::str_split(file_list, "\n")[[1]])
    file_list <- stringr::str_trim(file_list)
  }

  if (!is.na(sleep[1])) Sys.sleep(sleep)

  return(file_list)

}
