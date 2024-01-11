#' Create a new IFeature
#'
#' @description
#' IFeature Class
#'
#' @docType class
#' @title IFeature
#' @description IFeature Class
#' @format An \code{R6Class} generator object
#' @field attributes  \link{IAttributesTable} [optional]
#' @field boundingBox  \link{Envelope} [optional]
#' @field geometry  \link{Geometry} [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IFeature <- R6::R6Class(
  "IFeature",
  inherit = null<String, AnyType>,
  public = list(
    `attributes` = NULL,
    `boundingBox` = NULL,
    `geometry` = NULL,
    `_field_list` = c("attributes", "boundingBox", "geometry"),
    `additional_properties` = list(),
    #' Initialize a new IFeature class.
    #'
    #' @description
    #' Initialize a new IFeature class.
    #'
    #' @param attributes attributes
    #' @param boundingBox boundingBox
    #' @param geometry geometry
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`attributes` = NULL, `boundingBox` = NULL, `geometry` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`attributes`)) {
        stopifnot(R6::is.R6(`attributes`))
        self$`attributes` <- `attributes`
      }
      if (!is.null(`boundingBox`)) {
        stopifnot(R6::is.R6(`boundingBox`))
        self$`boundingBox` <- `boundingBox`
      }
      if (!is.null(`geometry`)) {
        stopifnot(R6::is.R6(`geometry`))
        self$`geometry` <- `geometry`
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
    #' @return IFeature in JSON format
    #' @export
    toJSON = function() {
      IFeatureObject <- list()
      if (!is.null(self$`attributes`)) {
        IFeatureObject[["attributes"]] <-
          self$`attributes`$toJSON()
      }
      if (!is.null(self$`boundingBox`)) {
        IFeatureObject[["boundingBox"]] <-
          self$`boundingBox`$toJSON()
      }
      if (!is.null(self$`geometry`)) {
        IFeatureObject[["geometry"]] <-
          self$`geometry`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        IFeatureObject[[key]] <- self$additional_properties[[key]]
      }

      IFeatureObject
    },
    #' Deserialize JSON string into an instance of IFeature
    #'
    #' @description
    #' Deserialize JSON string into an instance of IFeature
    #'
    #' @param input_json the JSON input
    #' @return the instance of IFeature
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`attributes`)) {
        `attributes_object` <- IAttributesTable$new()
        `attributes_object`$fromJSON(jsonlite::toJSON(this_object$`attributes`, auto_unbox = TRUE, digits = NA))
        self$`attributes` <- `attributes_object`
      }
      if (!is.null(this_object$`boundingBox`)) {
        `boundingbox_object` <- Envelope$new()
        `boundingbox_object`$fromJSON(jsonlite::toJSON(this_object$`boundingBox`, auto_unbox = TRUE, digits = NA))
        self$`boundingBox` <- `boundingbox_object`
      }
      if (!is.null(this_object$`geometry`)) {
        `geometry_object` <- Geometry$new()
        `geometry_object`$fromJSON(jsonlite::toJSON(this_object$`geometry`, auto_unbox = TRUE, digits = NA))
        self$`geometry` <- `geometry_object`
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
    #' @return IFeature in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`attributes`)) {
          sprintf(
          '"attributes":
          %s
          ',
          jsonlite::toJSON(self$`attributes`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`boundingBox`)) {
          sprintf(
          '"boundingBox":
          %s
          ',
          jsonlite::toJSON(self$`boundingBox`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`geometry`)) {
          sprintf(
          '"geometry":
          %s
          ',
          jsonlite::toJSON(self$`geometry`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of IFeature
    #'
    #' @description
    #' Deserialize JSON string into an instance of IFeature
    #'
    #' @param input_json the JSON input
    #' @return the instance of IFeature
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`attributes` <- IAttributesTable$new()$fromJSON(jsonlite::toJSON(this_object$`attributes`, auto_unbox = TRUE, digits = NA))
      self$`boundingBox` <- Envelope$new()$fromJSON(jsonlite::toJSON(this_object$`boundingBox`, auto_unbox = TRUE, digits = NA))
      self$`geometry` <- Geometry$new()$fromJSON(jsonlite::toJSON(this_object$`geometry`, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to IFeature
    #'
    #' @description
    #' Validate JSON input with respect to IFeature and throw an exception if invalid
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
    #' @return String representation of IFeature
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
# IFeature$unlock()
#
## Below is an example to define the print function
# IFeature$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IFeature$lock()

