#' Create a new Coordinate
#'
#' @description
#' Coordinate Class
#'
#' @docType class
#' @title Coordinate
#' @description Coordinate Class
#' @format An \code{R6Class} generator object
#' @field coordinateValue  \link{Coordinate} [optional]
#' @field m  numeric [optional]
#' @field x  numeric [optional]
#' @field y  numeric [optional]
#' @field z  numeric [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Coordinate <- R6::R6Class(
  "Coordinate",
  inherit = null<String, AnyType>,
  public = list(
    `coordinateValue` = NULL,
    `m` = NULL,
    `x` = NULL,
    `y` = NULL,
    `z` = NULL,
    `_field_list` = c("coordinateValue", "m", "x", "y", "z"),
    `additional_properties` = list(),
    #' Initialize a new Coordinate class.
    #'
    #' @description
    #' Initialize a new Coordinate class.
    #'
    #' @param coordinateValue coordinateValue
    #' @param m m
    #' @param x x
    #' @param y y
    #' @param z z
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`coordinateValue` = NULL, `m` = NULL, `x` = NULL, `y` = NULL, `z` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`coordinateValue`)) {
        stopifnot(R6::is.R6(`coordinateValue`))
        self$`coordinateValue` <- `coordinateValue`
      }
      if (!is.null(`m`)) {
        if (!(is.numeric(`m`) && length(`m`) == 1)) {
          stop(paste("Error! Invalid data for `m`. Must be a number:", `m`))
        }
        self$`m` <- `m`
      }
      if (!is.null(`x`)) {
        if (!(is.numeric(`x`) && length(`x`) == 1)) {
          stop(paste("Error! Invalid data for `x`. Must be a number:", `x`))
        }
        self$`x` <- `x`
      }
      if (!is.null(`y`)) {
        if (!(is.numeric(`y`) && length(`y`) == 1)) {
          stop(paste("Error! Invalid data for `y`. Must be a number:", `y`))
        }
        self$`y` <- `y`
      }
      if (!is.null(`z`)) {
        if (!(is.numeric(`z`) && length(`z`) == 1)) {
          stop(paste("Error! Invalid data for `z`. Must be a number:", `z`))
        }
        self$`z` <- `z`
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
    #' @return Coordinate in JSON format
    #' @export
    toJSON = function() {
      CoordinateObject <- list()
      if (!is.null(self$`coordinateValue`)) {
        CoordinateObject[["coordinateValue"]] <-
          self$`coordinateValue`$toJSON()
      }
      if (!is.null(self$`m`)) {
        CoordinateObject[["m"]] <-
          self$`m`
      }
      if (!is.null(self$`x`)) {
        CoordinateObject[["x"]] <-
          self$`x`
      }
      if (!is.null(self$`y`)) {
        CoordinateObject[["y"]] <-
          self$`y`
      }
      if (!is.null(self$`z`)) {
        CoordinateObject[["z"]] <-
          self$`z`
      }
      for (key in names(self$additional_properties)) {
        CoordinateObject[[key]] <- self$additional_properties[[key]]
      }

      CoordinateObject
    },
    #' Deserialize JSON string into an instance of Coordinate
    #'
    #' @description
    #' Deserialize JSON string into an instance of Coordinate
    #'
    #' @param input_json the JSON input
    #' @return the instance of Coordinate
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`coordinateValue`)) {
        `coordinatevalue_object` <- Coordinate$new()
        `coordinatevalue_object`$fromJSON(jsonlite::toJSON(this_object$`coordinateValue`, auto_unbox = TRUE, digits = NA))
        self$`coordinateValue` <- `coordinatevalue_object`
      }
      if (!is.null(this_object$`m`)) {
        self$`m` <- this_object$`m`
      }
      if (!is.null(this_object$`x`)) {
        self$`x` <- this_object$`x`
      }
      if (!is.null(this_object$`y`)) {
        self$`y` <- this_object$`y`
      }
      if (!is.null(this_object$`z`)) {
        self$`z` <- this_object$`z`
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
    #' @return Coordinate in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`coordinateValue`)) {
          sprintf(
          '"coordinateValue":
          %s
          ',
          jsonlite::toJSON(self$`coordinateValue`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`m`)) {
          sprintf(
          '"m":
            %d
                    ',
          self$`m`
          )
        },
        if (!is.null(self$`x`)) {
          sprintf(
          '"x":
            %d
                    ',
          self$`x`
          )
        },
        if (!is.null(self$`y`)) {
          sprintf(
          '"y":
            %d
                    ',
          self$`y`
          )
        },
        if (!is.null(self$`z`)) {
          sprintf(
          '"z":
            %d
                    ',
          self$`z`
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
    #' Deserialize JSON string into an instance of Coordinate
    #'
    #' @description
    #' Deserialize JSON string into an instance of Coordinate
    #'
    #' @param input_json the JSON input
    #' @return the instance of Coordinate
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`coordinateValue` <- Coordinate$new()$fromJSON(jsonlite::toJSON(this_object$`coordinateValue`, auto_unbox = TRUE, digits = NA))
      self$`m` <- this_object$`m`
      self$`x` <- this_object$`x`
      self$`y` <- this_object$`y`
      self$`z` <- this_object$`z`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Coordinate
    #'
    #' @description
    #' Validate JSON input with respect to Coordinate and throw an exception if invalid
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
    #' @return String representation of Coordinate
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
# Coordinate$unlock()
#
## Below is an example to define the print function
# Coordinate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Coordinate$lock()

