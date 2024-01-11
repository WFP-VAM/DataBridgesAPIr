#' Create a new NtsGeometryServices
#'
#' @description
#' NtsGeometryServices Class
#'
#' @docType class
#' @title NtsGeometryServices
#' @description NtsGeometryServices Class
#' @format An \code{R6Class} generator object
#' @field coordinateEqualityComparer  named list(\link{AnyType}) [optional]
#' @field defaultCoordinateSequenceFactory  \link{CoordinateSequenceFactory} [optional]
#' @field defaultPrecisionModel  \link{PrecisionModel} [optional]
#' @field defaultSRID  integer [optional]
#' @field geometryOverlay  named list(\link{AnyType}) [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NtsGeometryServices <- R6::R6Class(
  "NtsGeometryServices",
  inherit = null<String, AnyType>,
  public = list(
    `coordinateEqualityComparer` = NULL,
    `defaultCoordinateSequenceFactory` = NULL,
    `defaultPrecisionModel` = NULL,
    `defaultSRID` = NULL,
    `geometryOverlay` = NULL,
    `_field_list` = c("coordinateEqualityComparer", "defaultCoordinateSequenceFactory", "defaultPrecisionModel", "defaultSRID", "geometryOverlay"),
    `additional_properties` = list(),
    #' Initialize a new NtsGeometryServices class.
    #'
    #' @description
    #' Initialize a new NtsGeometryServices class.
    #'
    #' @param coordinateEqualityComparer coordinateEqualityComparer
    #' @param defaultCoordinateSequenceFactory defaultCoordinateSequenceFactory
    #' @param defaultPrecisionModel defaultPrecisionModel
    #' @param defaultSRID defaultSRID
    #' @param geometryOverlay geometryOverlay
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`coordinateEqualityComparer` = NULL, `defaultCoordinateSequenceFactory` = NULL, `defaultPrecisionModel` = NULL, `defaultSRID` = NULL, `geometryOverlay` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`coordinateEqualityComparer`)) {
        stopifnot(is.vector(`coordinateEqualityComparer`), length(`coordinateEqualityComparer`) != 0)
        sapply(`coordinateEqualityComparer`, function(x) stopifnot(R6::is.R6(x)))
        self$`coordinateEqualityComparer` <- `coordinateEqualityComparer`
      }
      if (!is.null(`defaultCoordinateSequenceFactory`)) {
        stopifnot(R6::is.R6(`defaultCoordinateSequenceFactory`))
        self$`defaultCoordinateSequenceFactory` <- `defaultCoordinateSequenceFactory`
      }
      if (!is.null(`defaultPrecisionModel`)) {
        stopifnot(R6::is.R6(`defaultPrecisionModel`))
        self$`defaultPrecisionModel` <- `defaultPrecisionModel`
      }
      if (!is.null(`defaultSRID`)) {
        if (!(is.numeric(`defaultSRID`) && length(`defaultSRID`) == 1)) {
          stop(paste("Error! Invalid data for `defaultSRID`. Must be an integer:", `defaultSRID`))
        }
        self$`defaultSRID` <- `defaultSRID`
      }
      if (!is.null(`geometryOverlay`)) {
        stopifnot(is.vector(`geometryOverlay`), length(`geometryOverlay`) != 0)
        sapply(`geometryOverlay`, function(x) stopifnot(R6::is.R6(x)))
        self$`geometryOverlay` <- `geometryOverlay`
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
    #' @return NtsGeometryServices in JSON format
    #' @export
    toJSON = function() {
      NtsGeometryServicesObject <- list()
      if (!is.null(self$`coordinateEqualityComparer`)) {
        NtsGeometryServicesObject[["coordinateEqualityComparer"]] <-
          lapply(self$`coordinateEqualityComparer`, function(x) x$toJSON())
      }
      if (!is.null(self$`defaultCoordinateSequenceFactory`)) {
        NtsGeometryServicesObject[["defaultCoordinateSequenceFactory"]] <-
          self$`defaultCoordinateSequenceFactory`$toJSON()
      }
      if (!is.null(self$`defaultPrecisionModel`)) {
        NtsGeometryServicesObject[["defaultPrecisionModel"]] <-
          self$`defaultPrecisionModel`$toJSON()
      }
      if (!is.null(self$`defaultSRID`)) {
        NtsGeometryServicesObject[["defaultSRID"]] <-
          self$`defaultSRID`
      }
      if (!is.null(self$`geometryOverlay`)) {
        NtsGeometryServicesObject[["geometryOverlay"]] <-
          lapply(self$`geometryOverlay`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        NtsGeometryServicesObject[[key]] <- self$additional_properties[[key]]
      }

      NtsGeometryServicesObject
    },
    #' Deserialize JSON string into an instance of NtsGeometryServices
    #'
    #' @description
    #' Deserialize JSON string into an instance of NtsGeometryServices
    #'
    #' @param input_json the JSON input
    #' @return the instance of NtsGeometryServices
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`coordinateEqualityComparer`)) {
        self$`coordinateEqualityComparer` <- ApiClient$new()$deserializeObj(this_object$`coordinateEqualityComparer`, "map(AnyType)", loadNamespace("DataBridgesAPIr"))
      }
      if (!is.null(this_object$`defaultCoordinateSequenceFactory`)) {
        `defaultcoordinatesequencefactory_object` <- CoordinateSequenceFactory$new()
        `defaultcoordinatesequencefactory_object`$fromJSON(jsonlite::toJSON(this_object$`defaultCoordinateSequenceFactory`, auto_unbox = TRUE, digits = NA))
        self$`defaultCoordinateSequenceFactory` <- `defaultcoordinatesequencefactory_object`
      }
      if (!is.null(this_object$`defaultPrecisionModel`)) {
        `defaultprecisionmodel_object` <- PrecisionModel$new()
        `defaultprecisionmodel_object`$fromJSON(jsonlite::toJSON(this_object$`defaultPrecisionModel`, auto_unbox = TRUE, digits = NA))
        self$`defaultPrecisionModel` <- `defaultprecisionmodel_object`
      }
      if (!is.null(this_object$`defaultSRID`)) {
        self$`defaultSRID` <- this_object$`defaultSRID`
      }
      if (!is.null(this_object$`geometryOverlay`)) {
        self$`geometryOverlay` <- ApiClient$new()$deserializeObj(this_object$`geometryOverlay`, "map(AnyType)", loadNamespace("DataBridgesAPIr"))
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
    #' @return NtsGeometryServices in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`coordinateEqualityComparer`)) {
          sprintf(
          '"coordinateEqualityComparer":
          %s
',
          jsonlite::toJSON(lapply(self$`coordinateEqualityComparer`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`defaultCoordinateSequenceFactory`)) {
          sprintf(
          '"defaultCoordinateSequenceFactory":
          %s
          ',
          jsonlite::toJSON(self$`defaultCoordinateSequenceFactory`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`defaultPrecisionModel`)) {
          sprintf(
          '"defaultPrecisionModel":
          %s
          ',
          jsonlite::toJSON(self$`defaultPrecisionModel`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`defaultSRID`)) {
          sprintf(
          '"defaultSRID":
            %d
                    ',
          self$`defaultSRID`
          )
        },
        if (!is.null(self$`geometryOverlay`)) {
          sprintf(
          '"geometryOverlay":
          %s
',
          jsonlite::toJSON(lapply(self$`geometryOverlay`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of NtsGeometryServices
    #'
    #' @description
    #' Deserialize JSON string into an instance of NtsGeometryServices
    #'
    #' @param input_json the JSON input
    #' @return the instance of NtsGeometryServices
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`coordinateEqualityComparer` <- ApiClient$new()$deserializeObj(this_object$`coordinateEqualityComparer`, "map(AnyType)", loadNamespace("DataBridgesAPIr"))
      self$`defaultCoordinateSequenceFactory` <- CoordinateSequenceFactory$new()$fromJSON(jsonlite::toJSON(this_object$`defaultCoordinateSequenceFactory`, auto_unbox = TRUE, digits = NA))
      self$`defaultPrecisionModel` <- PrecisionModel$new()$fromJSON(jsonlite::toJSON(this_object$`defaultPrecisionModel`, auto_unbox = TRUE, digits = NA))
      self$`defaultSRID` <- this_object$`defaultSRID`
      self$`geometryOverlay` <- ApiClient$new()$deserializeObj(this_object$`geometryOverlay`, "map(AnyType)", loadNamespace("DataBridgesAPIr"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to NtsGeometryServices
    #'
    #' @description
    #' Validate JSON input with respect to NtsGeometryServices and throw an exception if invalid
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
    #' @return String representation of NtsGeometryServices
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
# NtsGeometryServices$unlock()
#
## Below is an example to define the print function
# NtsGeometryServices$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NtsGeometryServices$lock()

