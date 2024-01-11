#' Create a new CoordinateSequenceFactory
#'
#' @description
#' CoordinateSequenceFactory Class
#'
#' @docType class
#' @title CoordinateSequenceFactory
#' @description CoordinateSequenceFactory Class
#' @format An \code{R6Class} generator object
#' @field ordinates  \link{Ordinates} [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CoordinateSequenceFactory <- R6::R6Class(
  "CoordinateSequenceFactory",
  inherit = null<String, AnyType>,
  public = list(
    `ordinates` = NULL,
    `_field_list` = c("ordinates"),
    `additional_properties` = list(),
    #' Initialize a new CoordinateSequenceFactory class.
    #'
    #' @description
    #' Initialize a new CoordinateSequenceFactory class.
    #'
    #' @param ordinates ordinates
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`ordinates` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`ordinates`)) {
        if (!(`ordinates` %in% c())) {
          stop(paste("Error! \"", `ordinates`, "\" cannot be assigned to `ordinates`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`ordinates`))
        self$`ordinates` <- `ordinates`
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
    #' @return CoordinateSequenceFactory in JSON format
    #' @export
    toJSON = function() {
      CoordinateSequenceFactoryObject <- list()
      if (!is.null(self$`ordinates`)) {
        CoordinateSequenceFactoryObject[["ordinates"]] <-
          self$`ordinates`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        CoordinateSequenceFactoryObject[[key]] <- self$additional_properties[[key]]
      }

      CoordinateSequenceFactoryObject
    },
    #' Deserialize JSON string into an instance of CoordinateSequenceFactory
    #'
    #' @description
    #' Deserialize JSON string into an instance of CoordinateSequenceFactory
    #'
    #' @param input_json the JSON input
    #' @return the instance of CoordinateSequenceFactory
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ordinates`)) {
        `ordinates_object` <- Ordinates$new()
        `ordinates_object`$fromJSON(jsonlite::toJSON(this_object$`ordinates`, auto_unbox = TRUE, digits = NA))
        self$`ordinates` <- `ordinates_object`
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
    #' @return CoordinateSequenceFactory in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`ordinates`)) {
          sprintf(
          '"ordinates":
          %s
          ',
          jsonlite::toJSON(self$`ordinates`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of CoordinateSequenceFactory
    #'
    #' @description
    #' Deserialize JSON string into an instance of CoordinateSequenceFactory
    #'
    #' @param input_json the JSON input
    #' @return the instance of CoordinateSequenceFactory
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinates` <- Ordinates$new()$fromJSON(jsonlite::toJSON(this_object$`ordinates`, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to CoordinateSequenceFactory
    #'
    #' @description
    #' Validate JSON input with respect to CoordinateSequenceFactory and throw an exception if invalid
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
    #' @return String representation of CoordinateSequenceFactory
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
# CoordinateSequenceFactory$unlock()
#
## Below is an example to define the print function
# CoordinateSequenceFactory$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CoordinateSequenceFactory$lock()

