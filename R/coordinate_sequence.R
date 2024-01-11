#' Create a new CoordinateSequence
#'
#' @description
#' CoordinateSequence Class
#'
#' @docType class
#' @title CoordinateSequence
#' @description CoordinateSequence Class
#' @format An \code{R6Class} generator object
#' @field count  integer [optional]
#' @field dimension  integer [optional]
#' @field hasM  character [optional]
#' @field hasZ  character [optional]
#' @field mOrdinateIndex  integer [optional]
#' @field measures  integer [optional]
#' @field ordinates  \link{Ordinates} [optional]
#' @field spatial  integer [optional]
#' @field zOrdinateIndex  integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CoordinateSequence <- R6::R6Class(
  "CoordinateSequence",
  inherit = null<String, AnyType>,
  public = list(
    `count` = NULL,
    `dimension` = NULL,
    `hasM` = NULL,
    `hasZ` = NULL,
    `mOrdinateIndex` = NULL,
    `measures` = NULL,
    `ordinates` = NULL,
    `spatial` = NULL,
    `zOrdinateIndex` = NULL,
    `_field_list` = c("count", "dimension", "hasM", "hasZ", "mOrdinateIndex", "measures", "ordinates", "spatial", "zOrdinateIndex"),
    `additional_properties` = list(),
    #' Initialize a new CoordinateSequence class.
    #'
    #' @description
    #' Initialize a new CoordinateSequence class.
    #'
    #' @param count count
    #' @param dimension dimension
    #' @param hasM hasM
    #' @param hasZ hasZ
    #' @param mOrdinateIndex mOrdinateIndex
    #' @param measures measures
    #' @param ordinates ordinates
    #' @param spatial spatial
    #' @param zOrdinateIndex zOrdinateIndex
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`count` = NULL, `dimension` = NULL, `hasM` = NULL, `hasZ` = NULL, `mOrdinateIndex` = NULL, `measures` = NULL, `ordinates` = NULL, `spatial` = NULL, `zOrdinateIndex` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
      }
      if (!is.null(`dimension`)) {
        if (!(is.numeric(`dimension`) && length(`dimension`) == 1)) {
          stop(paste("Error! Invalid data for `dimension`. Must be an integer:", `dimension`))
        }
        self$`dimension` <- `dimension`
      }
      if (!is.null(`hasM`)) {
        if (!(is.logical(`hasM`) && length(`hasM`) == 1)) {
          stop(paste("Error! Invalid data for `hasM`. Must be a boolean:", `hasM`))
        }
        self$`hasM` <- `hasM`
      }
      if (!is.null(`hasZ`)) {
        if (!(is.logical(`hasZ`) && length(`hasZ`) == 1)) {
          stop(paste("Error! Invalid data for `hasZ`. Must be a boolean:", `hasZ`))
        }
        self$`hasZ` <- `hasZ`
      }
      if (!is.null(`mOrdinateIndex`)) {
        if (!(is.numeric(`mOrdinateIndex`) && length(`mOrdinateIndex`) == 1)) {
          stop(paste("Error! Invalid data for `mOrdinateIndex`. Must be an integer:", `mOrdinateIndex`))
        }
        self$`mOrdinateIndex` <- `mOrdinateIndex`
      }
      if (!is.null(`measures`)) {
        if (!(is.numeric(`measures`) && length(`measures`) == 1)) {
          stop(paste("Error! Invalid data for `measures`. Must be an integer:", `measures`))
        }
        self$`measures` <- `measures`
      }
      if (!is.null(`ordinates`)) {
        if (!(`ordinates` %in% c())) {
          stop(paste("Error! \"", `ordinates`, "\" cannot be assigned to `ordinates`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`ordinates`))
        self$`ordinates` <- `ordinates`
      }
      if (!is.null(`spatial`)) {
        if (!(is.numeric(`spatial`) && length(`spatial`) == 1)) {
          stop(paste("Error! Invalid data for `spatial`. Must be an integer:", `spatial`))
        }
        self$`spatial` <- `spatial`
      }
      if (!is.null(`zOrdinateIndex`)) {
        if (!(is.numeric(`zOrdinateIndex`) && length(`zOrdinateIndex`) == 1)) {
          stop(paste("Error! Invalid data for `zOrdinateIndex`. Must be an integer:", `zOrdinateIndex`))
        }
        self$`zOrdinateIndex` <- `zOrdinateIndex`
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
    #' @return CoordinateSequence in JSON format
    #' @export
    toJSON = function() {
      CoordinateSequenceObject <- list()
      if (!is.null(self$`count`)) {
        CoordinateSequenceObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`dimension`)) {
        CoordinateSequenceObject[["dimension"]] <-
          self$`dimension`
      }
      if (!is.null(self$`hasM`)) {
        CoordinateSequenceObject[["hasM"]] <-
          self$`hasM`
      }
      if (!is.null(self$`hasZ`)) {
        CoordinateSequenceObject[["hasZ"]] <-
          self$`hasZ`
      }
      if (!is.null(self$`mOrdinateIndex`)) {
        CoordinateSequenceObject[["mOrdinateIndex"]] <-
          self$`mOrdinateIndex`
      }
      if (!is.null(self$`measures`)) {
        CoordinateSequenceObject[["measures"]] <-
          self$`measures`
      }
      if (!is.null(self$`ordinates`)) {
        CoordinateSequenceObject[["ordinates"]] <-
          self$`ordinates`$toJSON()
      }
      if (!is.null(self$`spatial`)) {
        CoordinateSequenceObject[["spatial"]] <-
          self$`spatial`
      }
      if (!is.null(self$`zOrdinateIndex`)) {
        CoordinateSequenceObject[["zOrdinateIndex"]] <-
          self$`zOrdinateIndex`
      }
      for (key in names(self$additional_properties)) {
        CoordinateSequenceObject[[key]] <- self$additional_properties[[key]]
      }

      CoordinateSequenceObject
    },
    #' Deserialize JSON string into an instance of CoordinateSequence
    #'
    #' @description
    #' Deserialize JSON string into an instance of CoordinateSequence
    #'
    #' @param input_json the JSON input
    #' @return the instance of CoordinateSequence
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`dimension`)) {
        self$`dimension` <- this_object$`dimension`
      }
      if (!is.null(this_object$`hasM`)) {
        self$`hasM` <- this_object$`hasM`
      }
      if (!is.null(this_object$`hasZ`)) {
        self$`hasZ` <- this_object$`hasZ`
      }
      if (!is.null(this_object$`mOrdinateIndex`)) {
        self$`mOrdinateIndex` <- this_object$`mOrdinateIndex`
      }
      if (!is.null(this_object$`measures`)) {
        self$`measures` <- this_object$`measures`
      }
      if (!is.null(this_object$`ordinates`)) {
        `ordinates_object` <- Ordinates$new()
        `ordinates_object`$fromJSON(jsonlite::toJSON(this_object$`ordinates`, auto_unbox = TRUE, digits = NA))
        self$`ordinates` <- `ordinates_object`
      }
      if (!is.null(this_object$`spatial`)) {
        self$`spatial` <- this_object$`spatial`
      }
      if (!is.null(this_object$`zOrdinateIndex`)) {
        self$`zOrdinateIndex` <- this_object$`zOrdinateIndex`
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
    #' @return CoordinateSequence in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`count`)) {
          sprintf(
          '"count":
            %d
                    ',
          self$`count`
          )
        },
        if (!is.null(self$`dimension`)) {
          sprintf(
          '"dimension":
            %d
                    ',
          self$`dimension`
          )
        },
        if (!is.null(self$`hasM`)) {
          sprintf(
          '"hasM":
            %s
                    ',
          tolower(self$`hasM`)
          )
        },
        if (!is.null(self$`hasZ`)) {
          sprintf(
          '"hasZ":
            %s
                    ',
          tolower(self$`hasZ`)
          )
        },
        if (!is.null(self$`mOrdinateIndex`)) {
          sprintf(
          '"mOrdinateIndex":
            %d
                    ',
          self$`mOrdinateIndex`
          )
        },
        if (!is.null(self$`measures`)) {
          sprintf(
          '"measures":
            %d
                    ',
          self$`measures`
          )
        },
        if (!is.null(self$`ordinates`)) {
          sprintf(
          '"ordinates":
          %s
          ',
          jsonlite::toJSON(self$`ordinates`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`spatial`)) {
          sprintf(
          '"spatial":
            %d
                    ',
          self$`spatial`
          )
        },
        if (!is.null(self$`zOrdinateIndex`)) {
          sprintf(
          '"zOrdinateIndex":
            %d
                    ',
          self$`zOrdinateIndex`
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
    #' Deserialize JSON string into an instance of CoordinateSequence
    #'
    #' @description
    #' Deserialize JSON string into an instance of CoordinateSequence
    #'
    #' @param input_json the JSON input
    #' @return the instance of CoordinateSequence
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`count` <- this_object$`count`
      self$`dimension` <- this_object$`dimension`
      self$`hasM` <- this_object$`hasM`
      self$`hasZ` <- this_object$`hasZ`
      self$`mOrdinateIndex` <- this_object$`mOrdinateIndex`
      self$`measures` <- this_object$`measures`
      self$`ordinates` <- Ordinates$new()$fromJSON(jsonlite::toJSON(this_object$`ordinates`, auto_unbox = TRUE, digits = NA))
      self$`spatial` <- this_object$`spatial`
      self$`zOrdinateIndex` <- this_object$`zOrdinateIndex`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to CoordinateSequence
    #'
    #' @description
    #' Validate JSON input with respect to CoordinateSequence and throw an exception if invalid
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
    #' @return String representation of CoordinateSequence
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
# CoordinateSequence$unlock()
#
## Below is an example to define the print function
# CoordinateSequence$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CoordinateSequence$lock()

