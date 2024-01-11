#' Create a new XlsFormDTO
#'
#' @description
#' XlsFormDTO Class
#'
#' @docType class
#' @title XlsFormDTO
#' @description XlsFormDTO Class
#' @format An \code{R6Class} generator object
#' @field adm0Code  integer [optional]
#' @field userName  character [optional]
#' @field xlsFormCreateDate  character [optional]
#' @field xlsFormID  integer [optional]
#' @field xlsFormIsBaseSchema  character [optional]
#' @field xlsFormName  character [optional]
#' @field xlsFormSourceFile  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XlsFormDTO <- R6::R6Class(
  "XlsFormDTO",
  inherit = null<String, AnyType>,
  public = list(
    `adm0Code` = NULL,
    `userName` = NULL,
    `xlsFormCreateDate` = NULL,
    `xlsFormID` = NULL,
    `xlsFormIsBaseSchema` = NULL,
    `xlsFormName` = NULL,
    `xlsFormSourceFile` = NULL,
    `_field_list` = c("adm0Code", "userName", "xlsFormCreateDate", "xlsFormID", "xlsFormIsBaseSchema", "xlsFormName", "xlsFormSourceFile"),
    `additional_properties` = list(),
    #' Initialize a new XlsFormDTO class.
    #'
    #' @description
    #' Initialize a new XlsFormDTO class.
    #'
    #' @param adm0Code adm0Code
    #' @param userName userName
    #' @param xlsFormCreateDate xlsFormCreateDate
    #' @param xlsFormID xlsFormID
    #' @param xlsFormIsBaseSchema xlsFormIsBaseSchema
    #' @param xlsFormName xlsFormName
    #' @param xlsFormSourceFile xlsFormSourceFile
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`adm0Code` = NULL, `userName` = NULL, `xlsFormCreateDate` = NULL, `xlsFormID` = NULL, `xlsFormIsBaseSchema` = NULL, `xlsFormName` = NULL, `xlsFormSourceFile` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`adm0Code`)) {
        if (!(is.numeric(`adm0Code`) && length(`adm0Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm0Code`. Must be an integer:", `adm0Code`))
        }
        self$`adm0Code` <- `adm0Code`
      }
      if (!is.null(`userName`)) {
        if (!(is.character(`userName`) && length(`userName`) == 1)) {
          stop(paste("Error! Invalid data for `userName`. Must be a string:", `userName`))
        }
        self$`userName` <- `userName`
      }
      if (!is.null(`xlsFormCreateDate`)) {
        if (!is.character(`xlsFormCreateDate`)) {
          stop(paste("Error! Invalid data for `xlsFormCreateDate`. Must be a string:", `xlsFormCreateDate`))
        }
        self$`xlsFormCreateDate` <- `xlsFormCreateDate`
      }
      if (!is.null(`xlsFormID`)) {
        if (!(is.numeric(`xlsFormID`) && length(`xlsFormID`) == 1)) {
          stop(paste("Error! Invalid data for `xlsFormID`. Must be an integer:", `xlsFormID`))
        }
        self$`xlsFormID` <- `xlsFormID`
      }
      if (!is.null(`xlsFormIsBaseSchema`)) {
        if (!(is.logical(`xlsFormIsBaseSchema`) && length(`xlsFormIsBaseSchema`) == 1)) {
          stop(paste("Error! Invalid data for `xlsFormIsBaseSchema`. Must be a boolean:", `xlsFormIsBaseSchema`))
        }
        self$`xlsFormIsBaseSchema` <- `xlsFormIsBaseSchema`
      }
      if (!is.null(`xlsFormName`)) {
        if (!(is.character(`xlsFormName`) && length(`xlsFormName`) == 1)) {
          stop(paste("Error! Invalid data for `xlsFormName`. Must be a string:", `xlsFormName`))
        }
        self$`xlsFormName` <- `xlsFormName`
      }
      if (!is.null(`xlsFormSourceFile`)) {
        if (!(is.character(`xlsFormSourceFile`) && length(`xlsFormSourceFile`) == 1)) {
          stop(paste("Error! Invalid data for `xlsFormSourceFile`. Must be a string:", `xlsFormSourceFile`))
        }
        self$`xlsFormSourceFile` <- `xlsFormSourceFile`
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
    #' @return XlsFormDTO in JSON format
    #' @export
    toJSON = function() {
      XlsFormDTOObject <- list()
      if (!is.null(self$`adm0Code`)) {
        XlsFormDTOObject[["adm0Code"]] <-
          self$`adm0Code`
      }
      if (!is.null(self$`userName`)) {
        XlsFormDTOObject[["userName"]] <-
          self$`userName`
      }
      if (!is.null(self$`xlsFormCreateDate`)) {
        XlsFormDTOObject[["xlsFormCreateDate"]] <-
          self$`xlsFormCreateDate`
      }
      if (!is.null(self$`xlsFormID`)) {
        XlsFormDTOObject[["xlsFormID"]] <-
          self$`xlsFormID`
      }
      if (!is.null(self$`xlsFormIsBaseSchema`)) {
        XlsFormDTOObject[["xlsFormIsBaseSchema"]] <-
          self$`xlsFormIsBaseSchema`
      }
      if (!is.null(self$`xlsFormName`)) {
        XlsFormDTOObject[["xlsFormName"]] <-
          self$`xlsFormName`
      }
      if (!is.null(self$`xlsFormSourceFile`)) {
        XlsFormDTOObject[["xlsFormSourceFile"]] <-
          self$`xlsFormSourceFile`
      }
      for (key in names(self$additional_properties)) {
        XlsFormDTOObject[[key]] <- self$additional_properties[[key]]
      }

      XlsFormDTOObject
    },
    #' Deserialize JSON string into an instance of XlsFormDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of XlsFormDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of XlsFormDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`adm0Code`)) {
        self$`adm0Code` <- this_object$`adm0Code`
      }
      if (!is.null(this_object$`userName`)) {
        self$`userName` <- this_object$`userName`
      }
      if (!is.null(this_object$`xlsFormCreateDate`)) {
        self$`xlsFormCreateDate` <- this_object$`xlsFormCreateDate`
      }
      if (!is.null(this_object$`xlsFormID`)) {
        self$`xlsFormID` <- this_object$`xlsFormID`
      }
      if (!is.null(this_object$`xlsFormIsBaseSchema`)) {
        self$`xlsFormIsBaseSchema` <- this_object$`xlsFormIsBaseSchema`
      }
      if (!is.null(this_object$`xlsFormName`)) {
        self$`xlsFormName` <- this_object$`xlsFormName`
      }
      if (!is.null(this_object$`xlsFormSourceFile`)) {
        self$`xlsFormSourceFile` <- this_object$`xlsFormSourceFile`
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
    #' @return XlsFormDTO in JSON format
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
        if (!is.null(self$`userName`)) {
          sprintf(
          '"userName":
            "%s"
                    ',
          self$`userName`
          )
        },
        if (!is.null(self$`xlsFormCreateDate`)) {
          sprintf(
          '"xlsFormCreateDate":
            "%s"
                    ',
          self$`xlsFormCreateDate`
          )
        },
        if (!is.null(self$`xlsFormID`)) {
          sprintf(
          '"xlsFormID":
            %d
                    ',
          self$`xlsFormID`
          )
        },
        if (!is.null(self$`xlsFormIsBaseSchema`)) {
          sprintf(
          '"xlsFormIsBaseSchema":
            %s
                    ',
          tolower(self$`xlsFormIsBaseSchema`)
          )
        },
        if (!is.null(self$`xlsFormName`)) {
          sprintf(
          '"xlsFormName":
            "%s"
                    ',
          self$`xlsFormName`
          )
        },
        if (!is.null(self$`xlsFormSourceFile`)) {
          sprintf(
          '"xlsFormSourceFile":
            "%s"
                    ',
          self$`xlsFormSourceFile`
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
    #' Deserialize JSON string into an instance of XlsFormDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of XlsFormDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of XlsFormDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`adm0Code` <- this_object$`adm0Code`
      self$`userName` <- this_object$`userName`
      self$`xlsFormCreateDate` <- this_object$`xlsFormCreateDate`
      self$`xlsFormID` <- this_object$`xlsFormID`
      self$`xlsFormIsBaseSchema` <- this_object$`xlsFormIsBaseSchema`
      self$`xlsFormName` <- this_object$`xlsFormName`
      self$`xlsFormSourceFile` <- this_object$`xlsFormSourceFile`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to XlsFormDTO
    #'
    #' @description
    #' Validate JSON input with respect to XlsFormDTO and throw an exception if invalid
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
    #' @return String representation of XlsFormDTO
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
# XlsFormDTO$unlock()
#
## Below is an example to define the print function
# XlsFormDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XlsFormDTO$lock()

