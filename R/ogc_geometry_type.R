#' @docType class
#' @title OgcGeometryType
#' @description OgcGeometryType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OgcGeometryType <- R6::R6Class(
  "OgcGeometryType",
  public = list(
    #' Initialize a new OgcGeometryType class.
    #'
    #' @description
    #' Initialize a new OgcGeometryType class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_OgcGeometryType()

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
    #' @return OgcGeometryType in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of OgcGeometryType
    #'
    #' @description
    #' Deserialize JSON string into an instance of OgcGeometryType
    #'
    #' @param input_json the JSON input
    #' @return the instance of OgcGeometryType
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
    #' @return OgcGeometryType in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of OgcGeometryType
    #'
    #' @description
    #' Deserialize JSON string into an instance of OgcGeometryType
    #'
    #' @param input_json the JSON input
    #' @return the instance of OgcGeometryType
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
.parse_OgcGeometryType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]")
  unlist(strsplit(res, ", "))
}

