#' Create a new RpmeOutputValues
#'
#' @description
#' RpmeOutputValues Class
#'
#' @docType class
#' @title RpmeOutputValues
#' @description RpmeOutputValues Class
#' @format An \code{R6Class} generator object
#' @field outputValue  numeric [optional]
#' @field variableId  integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RpmeOutputValues <- R6::R6Class(
  "RpmeOutputValues",
  inherit = null<String, AnyType>,
  public = list(
    `outputValue` = NULL,
    `variableId` = NULL,
    `_field_list` = c("outputValue", "variableId"),
    `additional_properties` = list(),
    #' Initialize a new RpmeOutputValues class.
    #'
    #' @description
    #' Initialize a new RpmeOutputValues class.
    #'
    #' @param outputValue outputValue
    #' @param variableId variableId
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`outputValue` = NULL, `variableId` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`outputValue`)) {
        if (!(is.numeric(`outputValue`) && length(`outputValue`) == 1)) {
          stop(paste("Error! Invalid data for `outputValue`. Must be a number:", `outputValue`))
        }
        self$`outputValue` <- `outputValue`
      }
      if (!is.null(`variableId`)) {
        if (!(is.numeric(`variableId`) && length(`variableId`) == 1)) {
          stop(paste("Error! Invalid data for `variableId`. Must be an integer:", `variableId`))
        }
        self$`variableId` <- `variableId`
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
    #' @return RpmeOutputValues in JSON format
    #' @export
    toJSON = function() {
      RpmeOutputValuesObject <- list()
      if (!is.null(self$`outputValue`)) {
        RpmeOutputValuesObject[["outputValue"]] <-
          self$`outputValue`
      }
      if (!is.null(self$`variableId`)) {
        RpmeOutputValuesObject[["variableId"]] <-
          self$`variableId`
      }
      for (key in names(self$additional_properties)) {
        RpmeOutputValuesObject[[key]] <- self$additional_properties[[key]]
      }

      RpmeOutputValuesObject
    },
    #' Deserialize JSON string into an instance of RpmeOutputValues
    #'
    #' @description
    #' Deserialize JSON string into an instance of RpmeOutputValues
    #'
    #' @param input_json the JSON input
    #' @return the instance of RpmeOutputValues
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`outputValue`)) {
        self$`outputValue` <- this_object$`outputValue`
      }
      if (!is.null(this_object$`variableId`)) {
        self$`variableId` <- this_object$`variableId`
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
    #' @return RpmeOutputValues in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`outputValue`)) {
          sprintf(
          '"outputValue":
            %d
                    ',
          self$`outputValue`
          )
        },
        if (!is.null(self$`variableId`)) {
          sprintf(
          '"variableId":
            %d
                    ',
          self$`variableId`
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
    #' Deserialize JSON string into an instance of RpmeOutputValues
    #'
    #' @description
    #' Deserialize JSON string into an instance of RpmeOutputValues
    #'
    #' @param input_json the JSON input
    #' @return the instance of RpmeOutputValues
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`outputValue` <- this_object$`outputValue`
      self$`variableId` <- this_object$`variableId`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to RpmeOutputValues
    #'
    #' @description
    #' Validate JSON input with respect to RpmeOutputValues and throw an exception if invalid
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
    #' @return String representation of RpmeOutputValues
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
# RpmeOutputValues$unlock()
#
## Below is an example to define the print function
# RpmeOutputValues$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RpmeOutputValues$lock()

