#' Create a new UsdIndirectQuotation
#'
#' @description
#' UsdIndirectQuotation Class
#'
#' @docType class
#' @title UsdIndirectQuotation
#' @description UsdIndirectQuotation Class
#' @format An \code{R6Class} generator object
#' @field adm0Code  integer [optional]
#' @field countryISO3  character [optional]
#' @field date  character [optional]
#' @field frequency (it’s from the reporting commodity named Exchange Rate character [optional]
#' @field id  integer [optional]
#' @field isOfficial The field IsOfficial is a boolean which can be set to true for the Trading Economics data and to false for the data coming from a commodity saved in the DataBridges database character [optional]
#' @field name the ISO3 code for the currency, based on ISO4217 character [optional]
#' @field value  numeric [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsdIndirectQuotation <- R6::R6Class(
  "UsdIndirectQuotation",
  inherit = null<String, AnyType>,
  public = list(
    `adm0Code` = NULL,
    `countryISO3` = NULL,
    `date` = NULL,
    `frequency` = NULL,
    `id` = NULL,
    `isOfficial` = NULL,
    `name` = NULL,
    `value` = NULL,
    `_field_list` = c("adm0Code", "countryISO3", "date", "frequency", "id", "isOfficial", "name", "value"),
    `additional_properties` = list(),
    #' Initialize a new UsdIndirectQuotation class.
    #'
    #' @description
    #' Initialize a new UsdIndirectQuotation class.
    #'
    #' @param adm0Code adm0Code
    #' @param countryISO3 countryISO3
    #' @param date date
    #' @param frequency (it’s from the reporting commodity named Exchange Rate
    #' @param id id
    #' @param isOfficial The field IsOfficial is a boolean which can be set to true for the Trading Economics data and to false for the data coming from a commodity saved in the DataBridges database
    #' @param name the ISO3 code for the currency, based on ISO4217
    #' @param value value
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`adm0Code` = NULL, `countryISO3` = NULL, `date` = NULL, `frequency` = NULL, `id` = NULL, `isOfficial` = NULL, `name` = NULL, `value` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`adm0Code`)) {
        if (!(is.numeric(`adm0Code`) && length(`adm0Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm0Code`. Must be an integer:", `adm0Code`))
        }
        self$`adm0Code` <- `adm0Code`
      }
      if (!is.null(`countryISO3`)) {
        if (!(is.character(`countryISO3`) && length(`countryISO3`) == 1)) {
          stop(paste("Error! Invalid data for `countryISO3`. Must be a string:", `countryISO3`))
        }
        self$`countryISO3` <- `countryISO3`
      }
      if (!is.null(`date`)) {
        if (!is.character(`date`)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
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
      if (!is.null(`isOfficial`)) {
        if (!(is.logical(`isOfficial`) && length(`isOfficial`) == 1)) {
          stop(paste("Error! Invalid data for `isOfficial`. Must be a boolean:", `isOfficial`))
        }
        self$`isOfficial` <- `isOfficial`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`value`)) {
        if (!(is.numeric(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a number:", `value`))
        }
        self$`value` <- `value`
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
    #' @return UsdIndirectQuotation in JSON format
    #' @export
    toJSON = function() {
      UsdIndirectQuotationObject <- list()
      if (!is.null(self$`adm0Code`)) {
        UsdIndirectQuotationObject[["adm0Code"]] <-
          self$`adm0Code`
      }
      if (!is.null(self$`countryISO3`)) {
        UsdIndirectQuotationObject[["countryISO3"]] <-
          self$`countryISO3`
      }
      if (!is.null(self$`date`)) {
        UsdIndirectQuotationObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`frequency`)) {
        UsdIndirectQuotationObject[["frequency"]] <-
          self$`frequency`
      }
      if (!is.null(self$`id`)) {
        UsdIndirectQuotationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`isOfficial`)) {
        UsdIndirectQuotationObject[["isOfficial"]] <-
          self$`isOfficial`
      }
      if (!is.null(self$`name`)) {
        UsdIndirectQuotationObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`value`)) {
        UsdIndirectQuotationObject[["value"]] <-
          self$`value`
      }
      for (key in names(self$additional_properties)) {
        UsdIndirectQuotationObject[[key]] <- self$additional_properties[[key]]
      }

      UsdIndirectQuotationObject
    },
    #' Deserialize JSON string into an instance of UsdIndirectQuotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsdIndirectQuotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsdIndirectQuotation
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`adm0Code`)) {
        self$`adm0Code` <- this_object$`adm0Code`
      }
      if (!is.null(this_object$`countryISO3`)) {
        self$`countryISO3` <- this_object$`countryISO3`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`frequency`)) {
        self$`frequency` <- this_object$`frequency`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`isOfficial`)) {
        self$`isOfficial` <- this_object$`isOfficial`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
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
    #' @return UsdIndirectQuotation in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`adm0Code`)) {
          sprintf(
          '"adm0Code":
            %d
                    ',
          self$`adm0Code`
          )
        },
        if (!is.null(self$`countryISO3`)) {
          sprintf(
          '"countryISO3":
            "%s"
                    ',
          self$`countryISO3`
          )
        },
        if (!is.null(self$`date`)) {
          sprintf(
          '"date":
            "%s"
                    ',
          self$`date`
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
        if (!is.null(self$`isOfficial`)) {
          sprintf(
          '"isOfficial":
            %s
                    ',
          tolower(self$`isOfficial`)
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
        if (!is.null(self$`value`)) {
          sprintf(
          '"value":
            %d
                    ',
          self$`value`
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
    #' Deserialize JSON string into an instance of UsdIndirectQuotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsdIndirectQuotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsdIndirectQuotation
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`adm0Code` <- this_object$`adm0Code`
      self$`countryISO3` <- this_object$`countryISO3`
      self$`date` <- this_object$`date`
      self$`frequency` <- this_object$`frequency`
      self$`id` <- this_object$`id`
      self$`isOfficial` <- this_object$`isOfficial`
      self$`name` <- this_object$`name`
      self$`value` <- this_object$`value`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UsdIndirectQuotation
    #'
    #' @description
    #' Validate JSON input with respect to UsdIndirectQuotation and throw an exception if invalid
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
    #' @return String representation of UsdIndirectQuotation
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
# UsdIndirectQuotation$unlock()
#
## Below is an example to define the print function
# UsdIndirectQuotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UsdIndirectQuotation$lock()

