#' Create a new Envelope
#'
#' @description
#' Envelope Class
#'
#' @docType class
#' @title Envelope
#' @description Envelope Class
#' @format An \code{R6Class} generator object
#' @field area  numeric [optional]
#' @field centre  \link{Coordinate} [optional]
#' @field diameter  numeric [optional]
#' @field height  numeric [optional]
#' @field isNull  character [optional]
#' @field maxExtent  numeric [optional]
#' @field maxX  numeric [optional]
#' @field maxY  numeric [optional]
#' @field minExtent  numeric [optional]
#' @field minX  numeric [optional]
#' @field minY  numeric [optional]
#' @field width  numeric [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Envelope <- R6::R6Class(
  "Envelope",
  inherit = null<String, AnyType>,
  public = list(
    `area` = NULL,
    `centre` = NULL,
    `diameter` = NULL,
    `height` = NULL,
    `isNull` = NULL,
    `maxExtent` = NULL,
    `maxX` = NULL,
    `maxY` = NULL,
    `minExtent` = NULL,
    `minX` = NULL,
    `minY` = NULL,
    `width` = NULL,
    `_field_list` = c("area", "centre", "diameter", "height", "isNull", "maxExtent", "maxX", "maxY", "minExtent", "minX", "minY", "width"),
    `additional_properties` = list(),
    #' Initialize a new Envelope class.
    #'
    #' @description
    #' Initialize a new Envelope class.
    #'
    #' @param area area
    #' @param centre centre
    #' @param diameter diameter
    #' @param height height
    #' @param isNull isNull
    #' @param maxExtent maxExtent
    #' @param maxX maxX
    #' @param maxY maxY
    #' @param minExtent minExtent
    #' @param minX minX
    #' @param minY minY
    #' @param width width
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`area` = NULL, `centre` = NULL, `diameter` = NULL, `height` = NULL, `isNull` = NULL, `maxExtent` = NULL, `maxX` = NULL, `maxY` = NULL, `minExtent` = NULL, `minX` = NULL, `minY` = NULL, `width` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`area`)) {
        if (!(is.numeric(`area`) && length(`area`) == 1)) {
          stop(paste("Error! Invalid data for `area`. Must be a number:", `area`))
        }
        self$`area` <- `area`
      }
      if (!is.null(`centre`)) {
        stopifnot(R6::is.R6(`centre`))
        self$`centre` <- `centre`
      }
      if (!is.null(`diameter`)) {
        if (!(is.numeric(`diameter`) && length(`diameter`) == 1)) {
          stop(paste("Error! Invalid data for `diameter`. Must be a number:", `diameter`))
        }
        self$`diameter` <- `diameter`
      }
      if (!is.null(`height`)) {
        if (!(is.numeric(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be a number:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`isNull`)) {
        if (!(is.logical(`isNull`) && length(`isNull`) == 1)) {
          stop(paste("Error! Invalid data for `isNull`. Must be a boolean:", `isNull`))
        }
        self$`isNull` <- `isNull`
      }
      if (!is.null(`maxExtent`)) {
        if (!(is.numeric(`maxExtent`) && length(`maxExtent`) == 1)) {
          stop(paste("Error! Invalid data for `maxExtent`. Must be a number:", `maxExtent`))
        }
        self$`maxExtent` <- `maxExtent`
      }
      if (!is.null(`maxX`)) {
        if (!(is.numeric(`maxX`) && length(`maxX`) == 1)) {
          stop(paste("Error! Invalid data for `maxX`. Must be a number:", `maxX`))
        }
        self$`maxX` <- `maxX`
      }
      if (!is.null(`maxY`)) {
        if (!(is.numeric(`maxY`) && length(`maxY`) == 1)) {
          stop(paste("Error! Invalid data for `maxY`. Must be a number:", `maxY`))
        }
        self$`maxY` <- `maxY`
      }
      if (!is.null(`minExtent`)) {
        if (!(is.numeric(`minExtent`) && length(`minExtent`) == 1)) {
          stop(paste("Error! Invalid data for `minExtent`. Must be a number:", `minExtent`))
        }
        self$`minExtent` <- `minExtent`
      }
      if (!is.null(`minX`)) {
        if (!(is.numeric(`minX`) && length(`minX`) == 1)) {
          stop(paste("Error! Invalid data for `minX`. Must be a number:", `minX`))
        }
        self$`minX` <- `minX`
      }
      if (!is.null(`minY`)) {
        if (!(is.numeric(`minY`) && length(`minY`) == 1)) {
          stop(paste("Error! Invalid data for `minY`. Must be a number:", `minY`))
        }
        self$`minY` <- `minY`
      }
      if (!is.null(`width`)) {
        if (!(is.numeric(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be a number:", `width`))
        }
        self$`width` <- `width`
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
    #' @return Envelope in JSON format
    #' @export
    toJSON = function() {
      EnvelopeObject <- list()
      if (!is.null(self$`area`)) {
        EnvelopeObject[["area"]] <-
          self$`area`
      }
      if (!is.null(self$`centre`)) {
        EnvelopeObject[["centre"]] <-
          self$`centre`$toJSON()
      }
      if (!is.null(self$`diameter`)) {
        EnvelopeObject[["diameter"]] <-
          self$`diameter`
      }
      if (!is.null(self$`height`)) {
        EnvelopeObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`isNull`)) {
        EnvelopeObject[["isNull"]] <-
          self$`isNull`
      }
      if (!is.null(self$`maxExtent`)) {
        EnvelopeObject[["maxExtent"]] <-
          self$`maxExtent`
      }
      if (!is.null(self$`maxX`)) {
        EnvelopeObject[["maxX"]] <-
          self$`maxX`
      }
      if (!is.null(self$`maxY`)) {
        EnvelopeObject[["maxY"]] <-
          self$`maxY`
      }
      if (!is.null(self$`minExtent`)) {
        EnvelopeObject[["minExtent"]] <-
          self$`minExtent`
      }
      if (!is.null(self$`minX`)) {
        EnvelopeObject[["minX"]] <-
          self$`minX`
      }
      if (!is.null(self$`minY`)) {
        EnvelopeObject[["minY"]] <-
          self$`minY`
      }
      if (!is.null(self$`width`)) {
        EnvelopeObject[["width"]] <-
          self$`width`
      }
      for (key in names(self$additional_properties)) {
        EnvelopeObject[[key]] <- self$additional_properties[[key]]
      }

      EnvelopeObject
    },
    #' Deserialize JSON string into an instance of Envelope
    #'
    #' @description
    #' Deserialize JSON string into an instance of Envelope
    #'
    #' @param input_json the JSON input
    #' @return the instance of Envelope
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`area`)) {
        self$`area` <- this_object$`area`
      }
      if (!is.null(this_object$`centre`)) {
        `centre_object` <- Coordinate$new()
        `centre_object`$fromJSON(jsonlite::toJSON(this_object$`centre`, auto_unbox = TRUE, digits = NA))
        self$`centre` <- `centre_object`
      }
      if (!is.null(this_object$`diameter`)) {
        self$`diameter` <- this_object$`diameter`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`isNull`)) {
        self$`isNull` <- this_object$`isNull`
      }
      if (!is.null(this_object$`maxExtent`)) {
        self$`maxExtent` <- this_object$`maxExtent`
      }
      if (!is.null(this_object$`maxX`)) {
        self$`maxX` <- this_object$`maxX`
      }
      if (!is.null(this_object$`maxY`)) {
        self$`maxY` <- this_object$`maxY`
      }
      if (!is.null(this_object$`minExtent`)) {
        self$`minExtent` <- this_object$`minExtent`
      }
      if (!is.null(this_object$`minX`)) {
        self$`minX` <- this_object$`minX`
      }
      if (!is.null(this_object$`minY`)) {
        self$`minY` <- this_object$`minY`
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
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
    #' @return Envelope in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`area`)) {
          sprintf(
          '"area":
            %d
                    ',
          self$`area`
          )
        },
        if (!is.null(self$`centre`)) {
          sprintf(
          '"centre":
          %s
          ',
          jsonlite::toJSON(self$`centre`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`diameter`)) {
          sprintf(
          '"diameter":
            %d
                    ',
          self$`diameter`
          )
        },
        if (!is.null(self$`height`)) {
          sprintf(
          '"height":
            %d
                    ',
          self$`height`
          )
        },
        if (!is.null(self$`isNull`)) {
          sprintf(
          '"isNull":
            %s
                    ',
          tolower(self$`isNull`)
          )
        },
        if (!is.null(self$`maxExtent`)) {
          sprintf(
          '"maxExtent":
            %d
                    ',
          self$`maxExtent`
          )
        },
        if (!is.null(self$`maxX`)) {
          sprintf(
          '"maxX":
            %d
                    ',
          self$`maxX`
          )
        },
        if (!is.null(self$`maxY`)) {
          sprintf(
          '"maxY":
            %d
                    ',
          self$`maxY`
          )
        },
        if (!is.null(self$`minExtent`)) {
          sprintf(
          '"minExtent":
            %d
                    ',
          self$`minExtent`
          )
        },
        if (!is.null(self$`minX`)) {
          sprintf(
          '"minX":
            %d
                    ',
          self$`minX`
          )
        },
        if (!is.null(self$`minY`)) {
          sprintf(
          '"minY":
            %d
                    ',
          self$`minY`
          )
        },
        if (!is.null(self$`width`)) {
          sprintf(
          '"width":
            %d
                    ',
          self$`width`
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
    #' Deserialize JSON string into an instance of Envelope
    #'
    #' @description
    #' Deserialize JSON string into an instance of Envelope
    #'
    #' @param input_json the JSON input
    #' @return the instance of Envelope
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`area` <- this_object$`area`
      self$`centre` <- Coordinate$new()$fromJSON(jsonlite::toJSON(this_object$`centre`, auto_unbox = TRUE, digits = NA))
      self$`diameter` <- this_object$`diameter`
      self$`height` <- this_object$`height`
      self$`isNull` <- this_object$`isNull`
      self$`maxExtent` <- this_object$`maxExtent`
      self$`maxX` <- this_object$`maxX`
      self$`maxY` <- this_object$`maxY`
      self$`minExtent` <- this_object$`minExtent`
      self$`minX` <- this_object$`minX`
      self$`minY` <- this_object$`minY`
      self$`width` <- this_object$`width`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Envelope
    #'
    #' @description
    #' Validate JSON input with respect to Envelope and throw an exception if invalid
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
    #' @return String representation of Envelope
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
# Envelope$unlock()
#
## Below is an example to define the print function
# Envelope$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Envelope$lock()

