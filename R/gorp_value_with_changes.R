#' Create a new GorpValueWithChanges
#'
#' @description
#' GorpValueWithChanges Class
#'
#' @docType class
#' @title GorpValueWithChanges
#' @description GorpValueWithChanges Class
#' @format An \code{R6Class} generator object
#' @field absoluteChange  numeric [optional]
#' @field actualValue  numeric [optional]
#' @field baselineValue  numeric [optional]
#' @field comments  character [optional]
#' @field month  character [optional]
#' @field numberOfCountries  integer [optional]
#' @field percentageChange  numeric [optional]
#' @field regionName  character [optional]
#' @field year  integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GorpValueWithChanges <- R6::R6Class(
  "GorpValueWithChanges",
  inherit = null<String, AnyType>,
  public = list(
    `absoluteChange` = NULL,
    `actualValue` = NULL,
    `baselineValue` = NULL,
    `comments` = NULL,
    `month` = NULL,
    `numberOfCountries` = NULL,
    `percentageChange` = NULL,
    `regionName` = NULL,
    `year` = NULL,
    `_field_list` = c("absoluteChange", "actualValue", "baselineValue", "comments", "month", "numberOfCountries", "percentageChange", "regionName", "year"),
    `additional_properties` = list(),
    #' Initialize a new GorpValueWithChanges class.
    #'
    #' @description
    #' Initialize a new GorpValueWithChanges class.
    #'
    #' @param absoluteChange absoluteChange
    #' @param actualValue actualValue
    #' @param baselineValue baselineValue
    #' @param comments comments
    #' @param month month
    #' @param numberOfCountries numberOfCountries
    #' @param percentageChange percentageChange
    #' @param regionName regionName
    #' @param year year
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`absoluteChange` = NULL, `actualValue` = NULL, `baselineValue` = NULL, `comments` = NULL, `month` = NULL, `numberOfCountries` = NULL, `percentageChange` = NULL, `regionName` = NULL, `year` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`absoluteChange`)) {
        if (!(is.numeric(`absoluteChange`) && length(`absoluteChange`) == 1)) {
          stop(paste("Error! Invalid data for `absoluteChange`. Must be a number:", `absoluteChange`))
        }
        self$`absoluteChange` <- `absoluteChange`
      }
      if (!is.null(`actualValue`)) {
        if (!(is.numeric(`actualValue`) && length(`actualValue`) == 1)) {
          stop(paste("Error! Invalid data for `actualValue`. Must be a number:", `actualValue`))
        }
        self$`actualValue` <- `actualValue`
      }
      if (!is.null(`baselineValue`)) {
        if (!(is.numeric(`baselineValue`) && length(`baselineValue`) == 1)) {
          stop(paste("Error! Invalid data for `baselineValue`. Must be a number:", `baselineValue`))
        }
        self$`baselineValue` <- `baselineValue`
      }
      if (!is.null(`comments`)) {
        if (!(is.character(`comments`) && length(`comments`) == 1)) {
          stop(paste("Error! Invalid data for `comments`. Must be a string:", `comments`))
        }
        self$`comments` <- `comments`
      }
      if (!is.null(`month`)) {
        if (!(is.character(`month`) && length(`month`) == 1)) {
          stop(paste("Error! Invalid data for `month`. Must be a string:", `month`))
        }
        self$`month` <- `month`
      }
      if (!is.null(`numberOfCountries`)) {
        if (!(is.numeric(`numberOfCountries`) && length(`numberOfCountries`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfCountries`. Must be an integer:", `numberOfCountries`))
        }
        self$`numberOfCountries` <- `numberOfCountries`
      }
      if (!is.null(`percentageChange`)) {
        if (!(is.numeric(`percentageChange`) && length(`percentageChange`) == 1)) {
          stop(paste("Error! Invalid data for `percentageChange`. Must be a number:", `percentageChange`))
        }
        self$`percentageChange` <- `percentageChange`
      }
      if (!is.null(`regionName`)) {
        if (!(is.character(`regionName`) && length(`regionName`) == 1)) {
          stop(paste("Error! Invalid data for `regionName`. Must be a string:", `regionName`))
        }
        self$`regionName` <- `regionName`
      }
      if (!is.null(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
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
    #' @return GorpValueWithChanges in JSON format
    #' @export
    toJSON = function() {
      GorpValueWithChangesObject <- list()
      if (!is.null(self$`absoluteChange`)) {
        GorpValueWithChangesObject[["absoluteChange"]] <-
          self$`absoluteChange`
      }
      if (!is.null(self$`actualValue`)) {
        GorpValueWithChangesObject[["actualValue"]] <-
          self$`actualValue`
      }
      if (!is.null(self$`baselineValue`)) {
        GorpValueWithChangesObject[["baselineValue"]] <-
          self$`baselineValue`
      }
      if (!is.null(self$`comments`)) {
        GorpValueWithChangesObject[["comments"]] <-
          self$`comments`
      }
      if (!is.null(self$`month`)) {
        GorpValueWithChangesObject[["month"]] <-
          self$`month`
      }
      if (!is.null(self$`numberOfCountries`)) {
        GorpValueWithChangesObject[["numberOfCountries"]] <-
          self$`numberOfCountries`
      }
      if (!is.null(self$`percentageChange`)) {
        GorpValueWithChangesObject[["percentageChange"]] <-
          self$`percentageChange`
      }
      if (!is.null(self$`regionName`)) {
        GorpValueWithChangesObject[["regionName"]] <-
          self$`regionName`
      }
      if (!is.null(self$`year`)) {
        GorpValueWithChangesObject[["year"]] <-
          self$`year`
      }
      for (key in names(self$additional_properties)) {
        GorpValueWithChangesObject[[key]] <- self$additional_properties[[key]]
      }

      GorpValueWithChangesObject
    },
    #' Deserialize JSON string into an instance of GorpValueWithChanges
    #'
    #' @description
    #' Deserialize JSON string into an instance of GorpValueWithChanges
    #'
    #' @param input_json the JSON input
    #' @return the instance of GorpValueWithChanges
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`absoluteChange`)) {
        self$`absoluteChange` <- this_object$`absoluteChange`
      }
      if (!is.null(this_object$`actualValue`)) {
        self$`actualValue` <- this_object$`actualValue`
      }
      if (!is.null(this_object$`baselineValue`)) {
        self$`baselineValue` <- this_object$`baselineValue`
      }
      if (!is.null(this_object$`comments`)) {
        self$`comments` <- this_object$`comments`
      }
      if (!is.null(this_object$`month`)) {
        self$`month` <- this_object$`month`
      }
      if (!is.null(this_object$`numberOfCountries`)) {
        self$`numberOfCountries` <- this_object$`numberOfCountries`
      }
      if (!is.null(this_object$`percentageChange`)) {
        self$`percentageChange` <- this_object$`percentageChange`
      }
      if (!is.null(this_object$`regionName`)) {
        self$`regionName` <- this_object$`regionName`
      }
      if (!is.null(this_object$`year`)) {
        self$`year` <- this_object$`year`
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
    #' @return GorpValueWithChanges in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`absoluteChange`)) {
          sprintf(
          '"absoluteChange":
            %d
                    ',
          self$`absoluteChange`
          )
        },
        if (!is.null(self$`actualValue`)) {
          sprintf(
          '"actualValue":
            %d
                    ',
          self$`actualValue`
          )
        },
        if (!is.null(self$`baselineValue`)) {
          sprintf(
          '"baselineValue":
            %d
                    ',
          self$`baselineValue`
          )
        },
        if (!is.null(self$`comments`)) {
          sprintf(
          '"comments":
            "%s"
                    ',
          self$`comments`
          )
        },
        if (!is.null(self$`month`)) {
          sprintf(
          '"month":
            "%s"
                    ',
          self$`month`
          )
        },
        if (!is.null(self$`numberOfCountries`)) {
          sprintf(
          '"numberOfCountries":
            %d
                    ',
          self$`numberOfCountries`
          )
        },
        if (!is.null(self$`percentageChange`)) {
          sprintf(
          '"percentageChange":
            %d
                    ',
          self$`percentageChange`
          )
        },
        if (!is.null(self$`regionName`)) {
          sprintf(
          '"regionName":
            "%s"
                    ',
          self$`regionName`
          )
        },
        if (!is.null(self$`year`)) {
          sprintf(
          '"year":
            %d
                    ',
          self$`year`
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
    #' Deserialize JSON string into an instance of GorpValueWithChanges
    #'
    #' @description
    #' Deserialize JSON string into an instance of GorpValueWithChanges
    #'
    #' @param input_json the JSON input
    #' @return the instance of GorpValueWithChanges
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`absoluteChange` <- this_object$`absoluteChange`
      self$`actualValue` <- this_object$`actualValue`
      self$`baselineValue` <- this_object$`baselineValue`
      self$`comments` <- this_object$`comments`
      self$`month` <- this_object$`month`
      self$`numberOfCountries` <- this_object$`numberOfCountries`
      self$`percentageChange` <- this_object$`percentageChange`
      self$`regionName` <- this_object$`regionName`
      self$`year` <- this_object$`year`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to GorpValueWithChanges
    #'
    #' @description
    #' Validate JSON input with respect to GorpValueWithChanges and throw an exception if invalid
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
    #' @return String representation of GorpValueWithChanges
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
# GorpValueWithChanges$unlock()
#
## Below is an example to define the print function
# GorpValueWithChanges$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GorpValueWithChanges$lock()

