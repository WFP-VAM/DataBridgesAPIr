#' Create a new CurrencyDTO
#'
#' @description
#' CurrencyDTO Class
#'
#' @docType class
#' @title CurrencyDTO
#' @description CurrencyDTO Class
#' @format An \code{R6Class} generator object
#' @field createDate  character [optional]
#' @field extendedName  character [optional]
#' @field id The internal ID of the unit integer [optional]
#' @field name The name of the unit character [optional]
#' @field updateDate  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurrencyDTO <- R6::R6Class(
  "CurrencyDTO",
  inherit = null<String, AnyType>,
  public = list(
    `createDate` = NULL,
    `extendedName` = NULL,
    `id` = NULL,
    `name` = NULL,
    `updateDate` = NULL,
    `_field_list` = c("createDate", "extendedName", "id", "name", "updateDate"),
    `additional_properties` = list(),
    #' Initialize a new CurrencyDTO class.
    #'
    #' @description
    #' Initialize a new CurrencyDTO class.
    #'
    #' @param createDate createDate
    #' @param extendedName extendedName
    #' @param id The internal ID of the unit
    #' @param name The name of the unit
    #' @param updateDate updateDate
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`createDate` = NULL, `extendedName` = NULL, `id` = NULL, `name` = NULL, `updateDate` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`createDate`)) {
        if (!is.character(`createDate`)) {
          stop(paste("Error! Invalid data for `createDate`. Must be a string:", `createDate`))
        }
        self$`createDate` <- `createDate`
      }
      if (!is.null(`extendedName`)) {
        if (!(is.character(`extendedName`) && length(`extendedName`) == 1)) {
          stop(paste("Error! Invalid data for `extendedName`. Must be a string:", `extendedName`))
        }
        self$`extendedName` <- `extendedName`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`updateDate`)) {
        if (!is.character(`updateDate`)) {
          stop(paste("Error! Invalid data for `updateDate`. Must be a string:", `updateDate`))
        }
        self$`updateDate` <- `updateDate`
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
    #' @return CurrencyDTO in JSON format
    #' @export
    toJSON = function() {
      CurrencyDTOObject <- list()
      if (!is.null(self$`createDate`)) {
        CurrencyDTOObject[["createDate"]] <-
          self$`createDate`
      }
      if (!is.null(self$`extendedName`)) {
        CurrencyDTOObject[["extendedName"]] <-
          self$`extendedName`
      }
      if (!is.null(self$`id`)) {
        CurrencyDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CurrencyDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`updateDate`)) {
        CurrencyDTOObject[["updateDate"]] <-
          self$`updateDate`
      }
      for (key in names(self$additional_properties)) {
        CurrencyDTOObject[[key]] <- self$additional_properties[[key]]
      }

      CurrencyDTOObject
    },
    #' Deserialize JSON string into an instance of CurrencyDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurrencyDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurrencyDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`createDate`)) {
        self$`createDate` <- this_object$`createDate`
      }
      if (!is.null(this_object$`extendedName`)) {
        self$`extendedName` <- this_object$`extendedName`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`updateDate`)) {
        self$`updateDate` <- this_object$`updateDate`
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
    #' @return CurrencyDTO in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`createDate`)) {
          sprintf(
          '"createDate":
            "%s"
                    ',
          self$`createDate`
          )
        },
        if (!is.null(self$`extendedName`)) {
          sprintf(
          '"extendedName":
            "%s"
                    ',
          self$`extendedName`
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`updateDate`)) {
          sprintf(
          '"updateDate":
            "%s"
                    ',
          self$`updateDate`
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
    #' Deserialize JSON string into an instance of CurrencyDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurrencyDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurrencyDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`createDate` <- this_object$`createDate`
      self$`extendedName` <- this_object$`extendedName`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`updateDate` <- this_object$`updateDate`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to CurrencyDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurrencyDTO and throw an exception if invalid
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
    #' @return String representation of CurrencyDTO
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
# CurrencyDTO$unlock()
#
## Below is an example to define the print function
# CurrencyDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurrencyDTO$lock()

