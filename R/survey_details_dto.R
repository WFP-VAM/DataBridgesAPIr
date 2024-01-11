#' Create a new SurveyDetailsDTO
#'
#' @description
#' SurveyDetailsDTO Class
#'
#' @docType class
#' @title SurveyDetailsDTO
#' @description SurveyDetailsDTO Class
#' @format An \code{R6Class} generator object
#' @field result The list of responses in the survey \link{AnyType} [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SurveyDetailsDTO <- R6::R6Class(
  "SurveyDetailsDTO",
  inherit = null<String, AnyType>,
  public = list(
    `result` = NULL,
    `_field_list` = c("result"),
    `additional_properties` = list(),
    #' Initialize a new SurveyDetailsDTO class.
    #'
    #' @description
    #' Initialize a new SurveyDetailsDTO class.
    #'
    #' @param result The list of responses in the survey
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`result` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`result`)) {
        stopifnot(R6::is.R6(`result`))
        self$`result` <- `result`
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
    #' @return SurveyDetailsDTO in JSON format
    #' @export
    toJSON = function() {
      SurveyDetailsDTOObject <- list()
      if (!is.null(self$`result`)) {
        SurveyDetailsDTOObject[["result"]] <-
          self$`result`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        SurveyDetailsDTOObject[[key]] <- self$additional_properties[[key]]
      }

      SurveyDetailsDTOObject
    },
    #' Deserialize JSON string into an instance of SurveyDetailsDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SurveyDetailsDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SurveyDetailsDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`result`)) {
        `result_object` <- AnyType$new()
        `result_object`$fromJSON(jsonlite::toJSON(this_object$`result`, auto_unbox = TRUE, digits = NA))
        self$`result` <- `result_object`
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
    #' @return SurveyDetailsDTO in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`result`)) {
          sprintf(
          '"result":
          %s
          ',
          jsonlite::toJSON(self$`result`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of SurveyDetailsDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SurveyDetailsDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SurveyDetailsDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`result` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`result`, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to SurveyDetailsDTO
    #'
    #' @description
    #' Validate JSON input with respect to SurveyDetailsDTO and throw an exception if invalid
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
    #' @return String representation of SurveyDetailsDTO
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
# SurveyDetailsDTO$unlock()
#
## Below is an example to define the print function
# SurveyDetailsDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SurveyDetailsDTO$lock()

