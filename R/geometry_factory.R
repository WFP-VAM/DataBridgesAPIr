#' Create a new GeometryFactory
#'
#' @description
#' GeometryFactory Class
#'
#' @docType class
#' @title GeometryFactory
#' @description GeometryFactory Class
#' @format An \code{R6Class} generator object
#' @field coordinateSequenceFactory  \link{CoordinateSequenceFactory} [optional]
#' @field geometryServices  \link{NtsGeometryServices} [optional]
#' @field precisionModel  \link{PrecisionModel} [optional]
#' @field srid  integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeometryFactory <- R6::R6Class(
  "GeometryFactory",
  inherit = null<String, AnyType>,
  public = list(
    `coordinateSequenceFactory` = NULL,
    `geometryServices` = NULL,
    `precisionModel` = NULL,
    `srid` = NULL,
    `_field_list` = c("coordinateSequenceFactory", "geometryServices", "precisionModel", "srid"),
    `additional_properties` = list(),
    #' Initialize a new GeometryFactory class.
    #'
    #' @description
    #' Initialize a new GeometryFactory class.
    #'
    #' @param coordinateSequenceFactory coordinateSequenceFactory
    #' @param geometryServices geometryServices
    #' @param precisionModel precisionModel
    #' @param srid srid
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`coordinateSequenceFactory` = NULL, `geometryServices` = NULL, `precisionModel` = NULL, `srid` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`coordinateSequenceFactory`)) {
        stopifnot(R6::is.R6(`coordinateSequenceFactory`))
        self$`coordinateSequenceFactory` <- `coordinateSequenceFactory`
      }
      if (!is.null(`geometryServices`)) {
        stopifnot(R6::is.R6(`geometryServices`))
        self$`geometryServices` <- `geometryServices`
      }
      if (!is.null(`precisionModel`)) {
        stopifnot(R6::is.R6(`precisionModel`))
        self$`precisionModel` <- `precisionModel`
      }
      if (!is.null(`srid`)) {
        if (!(is.numeric(`srid`) && length(`srid`) == 1)) {
          stop(paste("Error! Invalid data for `srid`. Must be an integer:", `srid`))
        }
        self$`srid` <- `srid`
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
    #' @return GeometryFactory in JSON format
    #' @export
    toJSON = function() {
      GeometryFactoryObject <- list()
      if (!is.null(self$`coordinateSequenceFactory`)) {
        GeometryFactoryObject[["coordinateSequenceFactory"]] <-
          self$`coordinateSequenceFactory`$toJSON()
      }
      if (!is.null(self$`geometryServices`)) {
        GeometryFactoryObject[["geometryServices"]] <-
          self$`geometryServices`$toJSON()
      }
      if (!is.null(self$`precisionModel`)) {
        GeometryFactoryObject[["precisionModel"]] <-
          self$`precisionModel`$toJSON()
      }
      if (!is.null(self$`srid`)) {
        GeometryFactoryObject[["srid"]] <-
          self$`srid`
      }
      for (key in names(self$additional_properties)) {
        GeometryFactoryObject[[key]] <- self$additional_properties[[key]]
      }

      GeometryFactoryObject
    },
    #' Deserialize JSON string into an instance of GeometryFactory
    #'
    #' @description
    #' Deserialize JSON string into an instance of GeometryFactory
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeometryFactory
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`coordinateSequenceFactory`)) {
        `coordinatesequencefactory_object` <- CoordinateSequenceFactory$new()
        `coordinatesequencefactory_object`$fromJSON(jsonlite::toJSON(this_object$`coordinateSequenceFactory`, auto_unbox = TRUE, digits = NA))
        self$`coordinateSequenceFactory` <- `coordinatesequencefactory_object`
      }
      if (!is.null(this_object$`geometryServices`)) {
        `geometryservices_object` <- NtsGeometryServices$new()
        `geometryservices_object`$fromJSON(jsonlite::toJSON(this_object$`geometryServices`, auto_unbox = TRUE, digits = NA))
        self$`geometryServices` <- `geometryservices_object`
      }
      if (!is.null(this_object$`precisionModel`)) {
        `precisionmodel_object` <- PrecisionModel$new()
        `precisionmodel_object`$fromJSON(jsonlite::toJSON(this_object$`precisionModel`, auto_unbox = TRUE, digits = NA))
        self$`precisionModel` <- `precisionmodel_object`
      }
      if (!is.null(this_object$`srid`)) {
        self$`srid` <- this_object$`srid`
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
    #' @return GeometryFactory in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`coordinateSequenceFactory`)) {
          sprintf(
          '"coordinateSequenceFactory":
          %s
          ',
          jsonlite::toJSON(self$`coordinateSequenceFactory`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`geometryServices`)) {
          sprintf(
          '"geometryServices":
          %s
          ',
          jsonlite::toJSON(self$`geometryServices`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`precisionModel`)) {
          sprintf(
          '"precisionModel":
          %s
          ',
          jsonlite::toJSON(self$`precisionModel`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`srid`)) {
          sprintf(
          '"srid":
            %d
                    ',
          self$`srid`
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
    #' Deserialize JSON string into an instance of GeometryFactory
    #'
    #' @description
    #' Deserialize JSON string into an instance of GeometryFactory
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeometryFactory
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`coordinateSequenceFactory` <- CoordinateSequenceFactory$new()$fromJSON(jsonlite::toJSON(this_object$`coordinateSequenceFactory`, auto_unbox = TRUE, digits = NA))
      self$`geometryServices` <- NtsGeometryServices$new()$fromJSON(jsonlite::toJSON(this_object$`geometryServices`, auto_unbox = TRUE, digits = NA))
      self$`precisionModel` <- PrecisionModel$new()$fromJSON(jsonlite::toJSON(this_object$`precisionModel`, auto_unbox = TRUE, digits = NA))
      self$`srid` <- this_object$`srid`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to GeometryFactory
    #'
    #' @description
    #' Validate JSON input with respect to GeometryFactory and throw an exception if invalid
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
    #' @return String representation of GeometryFactory
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
# GeometryFactory$unlock()
#
## Below is an example to define the print function
# GeometryFactory$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeometryFactory$lock()

