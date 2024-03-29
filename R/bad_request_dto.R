#' Create a new BadRequestDTO
#'
#' @description
#' BadRequestDTO Class
#'
#' @docType class
#' @title BadRequestDTO
#' @description BadRequestDTO Class
#' @format An \code{R6Class} generator object
#' @field error The error message returned by the application character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BadRequestDTO <- R6::R6Class(
  "BadRequestDTO",
  inherit = null<String, AnyType>,
  public = list(
    `error` = NULL,
    `_field_list` = c("error"),
    `additional_properties` = list(),
    #' Initialize a new BadRequestDTO class.
    #'
    #' @description
    #' Initialize a new BadRequestDTO class.
    #'
    #' @param error The error message returned by the application
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`error` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(additional_properties)) {
        for (key in names(additional_properties)) {
          self$additional_properties[[key]] <- additional_properties[[key]]
        }
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BadRequestDTO in JSON format
    #' @export
    toJSON = function() {
      BadRequestDTOObject <- list()
      if (!is.null(self$`error`)) {
        BadRequestDTOObject[["error"]] <-
          self$`error`
      }
      for (key in names(self$additional_properties)) {
        BadRequestDTOObject[[key]] <- self$additional_properties[[key]]
      }

      BadRequestDTOObject
    },
    #' Deserialize JSON string into an instance of BadRequestDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of BadRequestDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of BadRequestDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BadRequestDTO in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`error`)) {
          sprintf(
          '"error":
            "%s"
                    ',
          self$`error`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
      json_obj <- jsonlite::fromJSON(json_string)
      for (key in names(self$additional_properties)) {
        json_obj[[key]] <- self$additional_properties[[key]]
      }
      json_string <- as.character(jsonlite::minify(jsonlite::toJSON(json_obj, auto_unbox = TRUE, digits = NA)))
    },
    #' Deserialize JSON string into an instance of BadRequestDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of BadRequestDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of BadRequestDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`error` <- this_object$`error`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to BadRequestDTO
    #'
    #' @description
    #' Validate JSON input with respect to BadRequestDTO and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BadRequestDTO
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# BadRequestDTO$unlock()
#
## Below is an example to define the print function
# BadRequestDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BadRequestDTO$lock()

