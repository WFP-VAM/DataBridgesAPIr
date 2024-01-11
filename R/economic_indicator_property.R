#' Create a new EconomicIndicatorProperty
#'
#' @description
#' EconomicIndicatorProperty Class
#'
#' @docType class
#' @title EconomicIndicatorProperty
#' @description EconomicIndicatorProperty Class
#' @format An \code{R6Class} generator object
#' @field countryIso3  character [optional]
#' @field dataSource  character [optional]
#' @field frequency  character [optional]
#' @field id  integer [optional]
#' @field latestValue  numeric [optional]
#' @field latestValueDate  character [optional]
#' @field name  character [optional]
#' @field unit  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EconomicIndicatorProperty <- R6::R6Class(
  "EconomicIndicatorProperty",
  inherit = null<String, AnyType>,
  public = list(
    `countryIso3` = NULL,
    `dataSource` = NULL,
    `frequency` = NULL,
    `id` = NULL,
    `latestValue` = NULL,
    `latestValueDate` = NULL,
    `name` = NULL,
    `unit` = NULL,
    `_field_list` = c("countryIso3", "dataSource", "frequency", "id", "latestValue", "latestValueDate", "name", "unit"),
    `additional_properties` = list(),
    #' Initialize a new EconomicIndicatorProperty class.
    #'
    #' @description
    #' Initialize a new EconomicIndicatorProperty class.
    #'
    #' @param countryIso3 countryIso3
    #' @param dataSource dataSource
    #' @param frequency frequency
    #' @param id id
    #' @param latestValue latestValue
    #' @param latestValueDate latestValueDate
    #' @param name name
    #' @param unit unit
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`countryIso3` = NULL, `dataSource` = NULL, `frequency` = NULL, `id` = NULL, `latestValue` = NULL, `latestValueDate` = NULL, `name` = NULL, `unit` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`countryIso3`)) {
        if (!(is.character(`countryIso3`) && length(`countryIso3`) == 1)) {
          stop(paste("Error! Invalid data for `countryIso3`. Must be a string:", `countryIso3`))
        }
        self$`countryIso3` <- `countryIso3`
      }
      if (!is.null(`dataSource`)) {
        if (!(is.character(`dataSource`) && length(`dataSource`) == 1)) {
          stop(paste("Error! Invalid data for `dataSource`. Must be a string:", `dataSource`))
        }
        self$`dataSource` <- `dataSource`
      }
      if (!is.null(`frequency`)) {
        if (!(is.character(`frequency`) && length(`frequency`) == 1)) {
          stop(paste("Error! Invalid data for `frequency`. Must be a string:", `frequency`))
        }
        self$`frequency` <- `frequency`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`latestValue`)) {
        if (!(is.numeric(`latestValue`) && length(`latestValue`) == 1)) {
          stop(paste("Error! Invalid data for `latestValue`. Must be a number:", `latestValue`))
        }
        self$`latestValue` <- `latestValue`
      }
      if (!is.null(`latestValueDate`)) {
        if (!is.character(`latestValueDate`)) {
          stop(paste("Error! Invalid data for `latestValueDate`. Must be a string:", `latestValueDate`))
        }
        self$`latestValueDate` <- `latestValueDate`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`unit`)) {
        if (!(is.character(`unit`) && length(`unit`) == 1)) {
          stop(paste("Error! Invalid data for `unit`. Must be a string:", `unit`))
        }
        self$`unit` <- `unit`
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
    #' @return EconomicIndicatorProperty in JSON format
    #' @export
    toJSON = function() {
      EconomicIndicatorPropertyObject <- list()
      if (!is.null(self$`countryIso3`)) {
        EconomicIndicatorPropertyObject[["countryIso3"]] <-
          self$`countryIso3`
      }
      if (!is.null(self$`dataSource`)) {
        EconomicIndicatorPropertyObject[["dataSource"]] <-
          self$`dataSource`
      }
      if (!is.null(self$`frequency`)) {
        EconomicIndicatorPropertyObject[["frequency"]] <-
          self$`frequency`
      }
      if (!is.null(self$`id`)) {
        EconomicIndicatorPropertyObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`latestValue`)) {
        EconomicIndicatorPropertyObject[["latestValue"]] <-
          self$`latestValue`
      }
      if (!is.null(self$`latestValueDate`)) {
        EconomicIndicatorPropertyObject[["latestValueDate"]] <-
          self$`latestValueDate`
      }
      if (!is.null(self$`name`)) {
        EconomicIndicatorPropertyObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`unit`)) {
        EconomicIndicatorPropertyObject[["unit"]] <-
          self$`unit`
      }
      for (key in names(self$additional_properties)) {
        EconomicIndicatorPropertyObject[[key]] <- self$additional_properties[[key]]
      }

      EconomicIndicatorPropertyObject
    },
    #' Deserialize JSON string into an instance of EconomicIndicatorProperty
    #'
    #' @description
    #' Deserialize JSON string into an instance of EconomicIndicatorProperty
    #'
    #' @param input_json the JSON input
    #' @return the instance of EconomicIndicatorProperty
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`countryIso3`)) {
        self$`countryIso3` <- this_object$`countryIso3`
      }
      if (!is.null(this_object$`dataSource`)) {
        self$`dataSource` <- this_object$`dataSource`
      }
      if (!is.null(this_object$`frequency`)) {
        self$`frequency` <- this_object$`frequency`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`latestValue`)) {
        self$`latestValue` <- this_object$`latestValue`
      }
      if (!is.null(this_object$`latestValueDate`)) {
        self$`latestValueDate` <- this_object$`latestValueDate`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`unit`)) {
        self$`unit` <- this_object$`unit`
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
    #' @return EconomicIndicatorProperty in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`countryIso3`)) {
          sprintf(
          '"countryIso3":
            "%s"
                    ',
          self$`countryIso3`
          )
        },
        if (!is.null(self$`dataSource`)) {
          sprintf(
          '"dataSource":
            "%s"
                    ',
          self$`dataSource`
          )
        },
        if (!is.null(self$`frequency`)) {
          sprintf(
          '"frequency":
            "%s"
                    ',
          self$`frequency`
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`latestValue`)) {
          sprintf(
          '"latestValue":
            %d
                    ',
          self$`latestValue`
          )
        },
        if (!is.null(self$`latestValueDate`)) {
          sprintf(
          '"latestValueDate":
            "%s"
                    ',
          self$`latestValueDate`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`unit`)) {
          sprintf(
          '"unit":
            "%s"
                    ',
          self$`unit`
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
    #' Deserialize JSON string into an instance of EconomicIndicatorProperty
    #'
    #' @description
    #' Deserialize JSON string into an instance of EconomicIndicatorProperty
    #'
    #' @param input_json the JSON input
    #' @return the instance of EconomicIndicatorProperty
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`countryIso3` <- this_object$`countryIso3`
      self$`dataSource` <- this_object$`dataSource`
      self$`frequency` <- this_object$`frequency`
      self$`id` <- this_object$`id`
      self$`latestValue` <- this_object$`latestValue`
      self$`latestValueDate` <- this_object$`latestValueDate`
      self$`name` <- this_object$`name`
      self$`unit` <- this_object$`unit`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to EconomicIndicatorProperty
    #'
    #' @description
    #' Validate JSON input with respect to EconomicIndicatorProperty and throw an exception if invalid
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
    #' @return String representation of EconomicIndicatorProperty
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
# EconomicIndicatorProperty$unlock()
#
## Below is an example to define the print function
# EconomicIndicatorProperty$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EconomicIndicatorProperty$lock()

