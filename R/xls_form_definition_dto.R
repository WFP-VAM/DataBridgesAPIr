#' Create a new XlsFormDefinitionDTO
#'
#' @description
#' XlsFormDefinitionDTO Class
#'
#' @docType class
#' @title XlsFormDefinitionDTO
#' @description XlsFormDefinitionDTO Class
#' @format An \code{R6Class} generator object
#' @field xlsFormFieldLabel  character [optional]
#' @field xlsFormFieldName  character [optional]
#' @field xlsFormFieldRow  integer [optional]
#' @field xlsFormFieldType  character [optional]
#' @field xlsFormListId  integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XlsFormDefinitionDTO <- R6::R6Class(
  "XlsFormDefinitionDTO",
  inherit = null<String, AnyType>,
  public = list(
    `xlsFormFieldLabel` = NULL,
    `xlsFormFieldName` = NULL,
    `xlsFormFieldRow` = NULL,
    `xlsFormFieldType` = NULL,
    `xlsFormListId` = NULL,
    `_field_list` = c("xlsFormFieldLabel", "xlsFormFieldName", "xlsFormFieldRow", "xlsFormFieldType", "xlsFormListId"),
    `additional_properties` = list(),
    #' Initialize a new XlsFormDefinitionDTO class.
    #'
    #' @description
    #' Initialize a new XlsFormDefinitionDTO class.
    #'
    #' @param xlsFormFieldLabel xlsFormFieldLabel
    #' @param xlsFormFieldName xlsFormFieldName
    #' @param xlsFormFieldRow xlsFormFieldRow
    #' @param xlsFormFieldType xlsFormFieldType
    #' @param xlsFormListId xlsFormListId
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`xlsFormFieldLabel` = NULL, `xlsFormFieldName` = NULL, `xlsFormFieldRow` = NULL, `xlsFormFieldType` = NULL, `xlsFormListId` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`xlsFormFieldLabel`)) {
        if (!(is.character(`xlsFormFieldLabel`) && length(`xlsFormFieldLabel`) == 1)) {
          stop(paste("Error! Invalid data for `xlsFormFieldLabel`. Must be a string:", `xlsFormFieldLabel`))
        }
        self$`xlsFormFieldLabel` <- `xlsFormFieldLabel`
      }
      if (!is.null(`xlsFormFieldName`)) {
        if (!(is.character(`xlsFormFieldName`) && length(`xlsFormFieldName`) == 1)) {
          stop(paste("Error! Invalid data for `xlsFormFieldName`. Must be a string:", `xlsFormFieldName`))
        }
        self$`xlsFormFieldName` <- `xlsFormFieldName`
      }
      if (!is.null(`xlsFormFieldRow`)) {
        if (!(is.numeric(`xlsFormFieldRow`) && length(`xlsFormFieldRow`) == 1)) {
          stop(paste("Error! Invalid data for `xlsFormFieldRow`. Must be an integer:", `xlsFormFieldRow`))
        }
        self$`xlsFormFieldRow` <- `xlsFormFieldRow`
      }
      if (!is.null(`xlsFormFieldType`)) {
        if (!(is.character(`xlsFormFieldType`) && length(`xlsFormFieldType`) == 1)) {
          stop(paste("Error! Invalid data for `xlsFormFieldType`. Must be a string:", `xlsFormFieldType`))
        }
        self$`xlsFormFieldType` <- `xlsFormFieldType`
      }
      if (!is.null(`xlsFormListId`)) {
        if (!(is.numeric(`xlsFormListId`) && length(`xlsFormListId`) == 1)) {
          stop(paste("Error! Invalid data for `xlsFormListId`. Must be an integer:", `xlsFormListId`))
        }
        self$`xlsFormListId` <- `xlsFormListId`
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
    #' @return XlsFormDefinitionDTO in JSON format
    #' @export
    toJSON = function() {
      XlsFormDefinitionDTOObject <- list()
      if (!is.null(self$`xlsFormFieldLabel`)) {
        XlsFormDefinitionDTOObject[["xlsFormFieldLabel"]] <-
          self$`xlsFormFieldLabel`
      }
      if (!is.null(self$`xlsFormFieldName`)) {
        XlsFormDefinitionDTOObject[["xlsFormFieldName"]] <-
          self$`xlsFormFieldName`
      }
      if (!is.null(self$`xlsFormFieldRow`)) {
        XlsFormDefinitionDTOObject[["xlsFormFieldRow"]] <-
          self$`xlsFormFieldRow`
      }
      if (!is.null(self$`xlsFormFieldType`)) {
        XlsFormDefinitionDTOObject[["xlsFormFieldType"]] <-
          self$`xlsFormFieldType`
      }
      if (!is.null(self$`xlsFormListId`)) {
        XlsFormDefinitionDTOObject[["xlsFormListId"]] <-
          self$`xlsFormListId`
      }
      for (key in names(self$additional_properties)) {
        XlsFormDefinitionDTOObject[[key]] <- self$additional_properties[[key]]
      }

      XlsFormDefinitionDTOObject
    },
    #' Deserialize JSON string into an instance of XlsFormDefinitionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of XlsFormDefinitionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of XlsFormDefinitionDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`xlsFormFieldLabel`)) {
        self$`xlsFormFieldLabel` <- this_object$`xlsFormFieldLabel`
      }
      if (!is.null(this_object$`xlsFormFieldName`)) {
        self$`xlsFormFieldName` <- this_object$`xlsFormFieldName`
      }
      if (!is.null(this_object$`xlsFormFieldRow`)) {
        self$`xlsFormFieldRow` <- this_object$`xlsFormFieldRow`
      }
      if (!is.null(this_object$`xlsFormFieldType`)) {
        self$`xlsFormFieldType` <- this_object$`xlsFormFieldType`
      }
      if (!is.null(this_object$`xlsFormListId`)) {
        self$`xlsFormListId` <- this_object$`xlsFormListId`
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
    #' @return XlsFormDefinitionDTO in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`xlsFormFieldLabel`)) {
          sprintf(
          '"xlsFormFieldLabel":
            "%s"
                    ',
          self$`xlsFormFieldLabel`
          )
        },
        if (!is.null(self$`xlsFormFieldName`)) {
          sprintf(
          '"xlsFormFieldName":
            "%s"
                    ',
          self$`xlsFormFieldName`
          )
        },
        if (!is.null(self$`xlsFormFieldRow`)) {
          sprintf(
          '"xlsFormFieldRow":
            %d
                    ',
          self$`xlsFormFieldRow`
          )
        },
        if (!is.null(self$`xlsFormFieldType`)) {
          sprintf(
          '"xlsFormFieldType":
            "%s"
                    ',
          self$`xlsFormFieldType`
          )
        },
        if (!is.null(self$`xlsFormListId`)) {
          sprintf(
          '"xlsFormListId":
            %d
                    ',
          self$`xlsFormListId`
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
    #' Deserialize JSON string into an instance of XlsFormDefinitionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of XlsFormDefinitionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of XlsFormDefinitionDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`xlsFormFieldLabel` <- this_object$`xlsFormFieldLabel`
      self$`xlsFormFieldName` <- this_object$`xlsFormFieldName`
      self$`xlsFormFieldRow` <- this_object$`xlsFormFieldRow`
      self$`xlsFormFieldType` <- this_object$`xlsFormFieldType`
      self$`xlsFormListId` <- this_object$`xlsFormListId`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to XlsFormDefinitionDTO
    #'
    #' @description
    #' Validate JSON input with respect to XlsFormDefinitionDTO and throw an exception if invalid
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
    #' @return String representation of XlsFormDefinitionDTO
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
# XlsFormDefinitionDTO$unlock()
#
## Below is an example to define the print function
# XlsFormDefinitionDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XlsFormDefinitionDTO$lock()

