#' Create a new PrecisionModel
#'
#' @description
#' PrecisionModel Class
#'
#' @docType class
#' @title PrecisionModel
#' @description PrecisionModel Class
#' @format An \code{R6Class} generator object
#' @field isFloating  character [optional]
#' @field maximumSignificantDigits  integer [optional]
#' @field precisionModelType  \link{PrecisionModels} [optional]
#' @field scale  numeric [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PrecisionModel <- R6::R6Class(
  "PrecisionModel",
  inherit = null<String, AnyType>,
  public = list(
    `isFloating` = NULL,
    `maximumSignificantDigits` = NULL,
    `precisionModelType` = NULL,
    `scale` = NULL,
    `_field_list` = c("isFloating", "maximumSignificantDigits", "precisionModelType", "scale"),
    `additional_properties` = list(),
    #' Initialize a new PrecisionModel class.
    #'
    #' @description
    #' Initialize a new PrecisionModel class.
    #'
    #' @param isFloating isFloating
    #' @param maximumSignificantDigits maximumSignificantDigits
    #' @param precisionModelType precisionModelType
    #' @param scale scale
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`isFloating` = NULL, `maximumSignificantDigits` = NULL, `precisionModelType` = NULL, `scale` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`isFloating`)) {
        if (!(is.logical(`isFloating`) && length(`isFloating`) == 1)) {
          stop(paste("Error! Invalid data for `isFloating`. Must be a boolean:", `isFloating`))
        }
        self$`isFloating` <- `isFloating`
      }
      if (!is.null(`maximumSignificantDigits`)) {
        if (!(is.numeric(`maximumSignificantDigits`) && length(`maximumSignificantDigits`) == 1)) {
          stop(paste("Error! Invalid data for `maximumSignificantDigits`. Must be an integer:", `maximumSignificantDigits`))
        }
        self$`maximumSignificantDigits` <- `maximumSignificantDigits`
      }
      if (!is.null(`precisionModelType`)) {
        if (!(`precisionModelType` %in% c())) {
          stop(paste("Error! \"", `precisionModelType`, "\" cannot be assigned to `precisionModelType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`precisionModelType`))
        self$`precisionModelType` <- `precisionModelType`
      }
      if (!is.null(`scale`)) {
        if (!(is.numeric(`scale`) && length(`scale`) == 1)) {
          stop(paste("Error! Invalid data for `scale`. Must be a number:", `scale`))
        }
        self$`scale` <- `scale`
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
    #' @return PrecisionModel in JSON format
    #' @export
    toJSON = function() {
      PrecisionModelObject <- list()
      if (!is.null(self$`isFloating`)) {
        PrecisionModelObject[["isFloating"]] <-
          self$`isFloating`
      }
      if (!is.null(self$`maximumSignificantDigits`)) {
        PrecisionModelObject[["maximumSignificantDigits"]] <-
          self$`maximumSignificantDigits`
      }
      if (!is.null(self$`precisionModelType`)) {
        PrecisionModelObject[["precisionModelType"]] <-
          self$`precisionModelType`$toJSON()
      }
      if (!is.null(self$`scale`)) {
        PrecisionModelObject[["scale"]] <-
          self$`scale`
      }
      for (key in names(self$additional_properties)) {
        PrecisionModelObject[[key]] <- self$additional_properties[[key]]
      }

      PrecisionModelObject
    },
    #' Deserialize JSON string into an instance of PrecisionModel
    #'
    #' @description
    #' Deserialize JSON string into an instance of PrecisionModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of PrecisionModel
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`isFloating`)) {
        self$`isFloating` <- this_object$`isFloating`
      }
      if (!is.null(this_object$`maximumSignificantDigits`)) {
        self$`maximumSignificantDigits` <- this_object$`maximumSignificantDigits`
      }
      if (!is.null(this_object$`precisionModelType`)) {
        `precisionmodeltype_object` <- PrecisionModels$new()
        `precisionmodeltype_object`$fromJSON(jsonlite::toJSON(this_object$`precisionModelType`, auto_unbox = TRUE, digits = NA))
        self$`precisionModelType` <- `precisionmodeltype_object`
      }
      if (!is.null(this_object$`scale`)) {
        self$`scale` <- this_object$`scale`
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
    #' @return PrecisionModel in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`isFloating`)) {
          sprintf(
          '"isFloating":
            %s
                    ',
          tolower(self$`isFloating`)
          )
        },
        if (!is.null(self$`maximumSignificantDigits`)) {
          sprintf(
          '"maximumSignificantDigits":
            %d
                    ',
          self$`maximumSignificantDigits`
          )
        },
        if (!is.null(self$`precisionModelType`)) {
          sprintf(
          '"precisionModelType":
          %s
          ',
          jsonlite::toJSON(self$`precisionModelType`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`scale`)) {
          sprintf(
          '"scale":
            %d
                    ',
          self$`scale`
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
    #' Deserialize JSON string into an instance of PrecisionModel
    #'
    #' @description
    #' Deserialize JSON string into an instance of PrecisionModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of PrecisionModel
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`isFloating` <- this_object$`isFloating`
      self$`maximumSignificantDigits` <- this_object$`maximumSignificantDigits`
      self$`precisionModelType` <- PrecisionModels$new()$fromJSON(jsonlite::toJSON(this_object$`precisionModelType`, auto_unbox = TRUE, digits = NA))
      self$`scale` <- this_object$`scale`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to PrecisionModel
    #'
    #' @description
    #' Validate JSON input with respect to PrecisionModel and throw an exception if invalid
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
    #' @return String representation of PrecisionModel
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
# PrecisionModel$unlock()
#
## Below is an example to define the print function
# PrecisionModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PrecisionModel$lock()

