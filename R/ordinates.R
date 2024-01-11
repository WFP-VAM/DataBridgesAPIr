#' @docType class
#' @title Ordinates
#' @description Ordinates Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Ordinates <- R6::R6Class(
  "Ordinates",
  public = list(
    #' Initialize a new Ordinates class.
    #'
    #' @description
    #' Initialize a new Ordinates class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_Ordinates()

      stopifnot(length(val) == 1L)

      if (!val %in% enumvec)
          stop("Use one of the valid values: ",
              paste0(enumvec, collapse = ", "))
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Ordinates in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of Ordinates
    #'
    #' @description
    #' Deserialize JSON string into an instance of Ordinates
    #'
    #' @param input_json the JSON input
    #' @return the instance of Ordinates
    #' @export
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Ordinates in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of Ordinates
    #'
    #' @description
    #' Deserialize JSON string into an instance of Ordinates
    #'
    #' @param input_json the JSON input
    #' @return the instance of Ordinates
    #' @export
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_Ordinates <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[0, 1, 2, 3, 4, 7, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65535, 65536, 65539, 65543, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, -2147483648, -65536, -1]")
  unlist(strsplit(res, ", "))
}

