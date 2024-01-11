#' Create a new RpmeVariable
#'
#' @description
#' RpmeVariable Class
#'
#' @docType class
#' @title RpmeVariable
#' @description RpmeVariable Class
#' @format An \code{R6Class} generator object
#' @field dimensionId  integer [optional]
#' @field dimensionName  character [optional]
#' @field levelId  integer [optional]
#' @field levelName  character [optional]
#' @field surveyModeId  integer [optional]
#' @field surveyModeName  character [optional]
#' @field variableDescription  character [optional]
#' @field variableId  integer [optional]
#' @field variableName  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RpmeVariable <- R6::R6Class(
  "RpmeVariable",
  inherit = null<String, AnyType>,
  public = list(
    `dimensionId` = NULL,
    `dimensionName` = NULL,
    `levelId` = NULL,
    `levelName` = NULL,
    `surveyModeId` = NULL,
    `surveyModeName` = NULL,
    `variableDescription` = NULL,
    `variableId` = NULL,
    `variableName` = NULL,
    `_field_list` = c("dimensionId", "dimensionName", "levelId", "levelName", "surveyModeId", "surveyModeName", "variableDescription", "variableId", "variableName"),
    `additional_properties` = list(),
    #' Initialize a new RpmeVariable class.
    #'
    #' @description
    #' Initialize a new RpmeVariable class.
    #'
    #' @param dimensionId dimensionId
    #' @param dimensionName dimensionName
    #' @param levelId levelId
    #' @param levelName levelName
    #' @param surveyModeId surveyModeId
    #' @param surveyModeName surveyModeName
    #' @param variableDescription variableDescription
    #' @param variableId variableId
    #' @param variableName variableName
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`dimensionId` = NULL, `dimensionName` = NULL, `levelId` = NULL, `levelName` = NULL, `surveyModeId` = NULL, `surveyModeName` = NULL, `variableDescription` = NULL, `variableId` = NULL, `variableName` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`dimensionId`)) {
        if (!(is.numeric(`dimensionId`) && length(`dimensionId`) == 1)) {
          stop(paste("Error! Invalid data for `dimensionId`. Must be an integer:", `dimensionId`))
        }
        self$`dimensionId` <- `dimensionId`
      }
      if (!is.null(`dimensionName`)) {
        if (!(is.character(`dimensionName`) && length(`dimensionName`) == 1)) {
          stop(paste("Error! Invalid data for `dimensionName`. Must be a string:", `dimensionName`))
        }
        self$`dimensionName` <- `dimensionName`
      }
      if (!is.null(`levelId`)) {
        if (!(is.numeric(`levelId`) && length(`levelId`) == 1)) {
          stop(paste("Error! Invalid data for `levelId`. Must be an integer:", `levelId`))
        }
        self$`levelId` <- `levelId`
      }
      if (!is.null(`levelName`)) {
        if (!(is.character(`levelName`) && length(`levelName`) == 1)) {
          stop(paste("Error! Invalid data for `levelName`. Must be a string:", `levelName`))
        }
        self$`levelName` <- `levelName`
      }
      if (!is.null(`surveyModeId`)) {
        if (!(is.numeric(`surveyModeId`) && length(`surveyModeId`) == 1)) {
          stop(paste("Error! Invalid data for `surveyModeId`. Must be an integer:", `surveyModeId`))
        }
        self$`surveyModeId` <- `surveyModeId`
      }
      if (!is.null(`surveyModeName`)) {
        if (!(is.character(`surveyModeName`) && length(`surveyModeName`) == 1)) {
          stop(paste("Error! Invalid data for `surveyModeName`. Must be a string:", `surveyModeName`))
        }
        self$`surveyModeName` <- `surveyModeName`
      }
      if (!is.null(`variableDescription`)) {
        if (!(is.character(`variableDescription`) && length(`variableDescription`) == 1)) {
          stop(paste("Error! Invalid data for `variableDescription`. Must be a string:", `variableDescription`))
        }
        self$`variableDescription` <- `variableDescription`
      }
      if (!is.null(`variableId`)) {
        if (!(is.numeric(`variableId`) && length(`variableId`) == 1)) {
          stop(paste("Error! Invalid data for `variableId`. Must be an integer:", `variableId`))
        }
        self$`variableId` <- `variableId`
      }
      if (!is.null(`variableName`)) {
        if (!(is.character(`variableName`) && length(`variableName`) == 1)) {
          stop(paste("Error! Invalid data for `variableName`. Must be a string:", `variableName`))
        }
        self$`variableName` <- `variableName`
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
    #' @return RpmeVariable in JSON format
    #' @export
    toJSON = function() {
      RpmeVariableObject <- list()
      if (!is.null(self$`dimensionId`)) {
        RpmeVariableObject[["dimensionId"]] <-
          self$`dimensionId`
      }
      if (!is.null(self$`dimensionName`)) {
        RpmeVariableObject[["dimensionName"]] <-
          self$`dimensionName`
      }
      if (!is.null(self$`levelId`)) {
        RpmeVariableObject[["levelId"]] <-
          self$`levelId`
      }
      if (!is.null(self$`levelName`)) {
        RpmeVariableObject[["levelName"]] <-
          self$`levelName`
      }
      if (!is.null(self$`surveyModeId`)) {
        RpmeVariableObject[["surveyModeId"]] <-
          self$`surveyModeId`
      }
      if (!is.null(self$`surveyModeName`)) {
        RpmeVariableObject[["surveyModeName"]] <-
          self$`surveyModeName`
      }
      if (!is.null(self$`variableDescription`)) {
        RpmeVariableObject[["variableDescription"]] <-
          self$`variableDescription`
      }
      if (!is.null(self$`variableId`)) {
        RpmeVariableObject[["variableId"]] <-
          self$`variableId`
      }
      if (!is.null(self$`variableName`)) {
        RpmeVariableObject[["variableName"]] <-
          self$`variableName`
      }
      for (key in names(self$additional_properties)) {
        RpmeVariableObject[[key]] <- self$additional_properties[[key]]
      }

      RpmeVariableObject
    },
    #' Deserialize JSON string into an instance of RpmeVariable
    #'
    #' @description
    #' Deserialize JSON string into an instance of RpmeVariable
    #'
    #' @param input_json the JSON input
    #' @return the instance of RpmeVariable
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`dimensionId`)) {
        self$`dimensionId` <- this_object$`dimensionId`
      }
      if (!is.null(this_object$`dimensionName`)) {
        self$`dimensionName` <- this_object$`dimensionName`
      }
      if (!is.null(this_object$`levelId`)) {
        self$`levelId` <- this_object$`levelId`
      }
      if (!is.null(this_object$`levelName`)) {
        self$`levelName` <- this_object$`levelName`
      }
      if (!is.null(this_object$`surveyModeId`)) {
        self$`surveyModeId` <- this_object$`surveyModeId`
      }
      if (!is.null(this_object$`surveyModeName`)) {
        self$`surveyModeName` <- this_object$`surveyModeName`
      }
      if (!is.null(this_object$`variableDescription`)) {
        self$`variableDescription` <- this_object$`variableDescription`
      }
      if (!is.null(this_object$`variableId`)) {
        self$`variableId` <- this_object$`variableId`
      }
      if (!is.null(this_object$`variableName`)) {
        self$`variableName` <- this_object$`variableName`
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
    #' @return RpmeVariable in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`dimensionId`)) {
          sprintf(
          '"dimensionId":
            %d
                    ',
          self$`dimensionId`
          )
        },
        if (!is.null(self$`dimensionName`)) {
          sprintf(
          '"dimensionName":
            "%s"
                    ',
          self$`dimensionName`
          )
        },
        if (!is.null(self$`levelId`)) {
          sprintf(
          '"levelId":
            %d
                    ',
          self$`levelId`
          )
        },
        if (!is.null(self$`levelName`)) {
          sprintf(
          '"levelName":
            "%s"
                    ',
          self$`levelName`
          )
        },
        if (!is.null(self$`surveyModeId`)) {
          sprintf(
          '"surveyModeId":
            %d
                    ',
          self$`surveyModeId`
          )
        },
        if (!is.null(self$`surveyModeName`)) {
          sprintf(
          '"surveyModeName":
            "%s"
                    ',
          self$`surveyModeName`
          )
        },
        if (!is.null(self$`variableDescription`)) {
          sprintf(
          '"variableDescription":
            "%s"
                    ',
          self$`variableDescription`
          )
        },
        if (!is.null(self$`variableId`)) {
          sprintf(
          '"variableId":
            %d
                    ',
          self$`variableId`
          )
        },
        if (!is.null(self$`variableName`)) {
          sprintf(
          '"variableName":
            "%s"
                    ',
          self$`variableName`
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
    #' Deserialize JSON string into an instance of RpmeVariable
    #'
    #' @description
    #' Deserialize JSON string into an instance of RpmeVariable
    #'
    #' @param input_json the JSON input
    #' @return the instance of RpmeVariable
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`dimensionId` <- this_object$`dimensionId`
      self$`dimensionName` <- this_object$`dimensionName`
      self$`levelId` <- this_object$`levelId`
      self$`levelName` <- this_object$`levelName`
      self$`surveyModeId` <- this_object$`surveyModeId`
      self$`surveyModeName` <- this_object$`surveyModeName`
      self$`variableDescription` <- this_object$`variableDescription`
      self$`variableId` <- this_object$`variableId`
      self$`variableName` <- this_object$`variableName`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to RpmeVariable
    #'
    #' @description
    #' Validate JSON input with respect to RpmeVariable and throw an exception if invalid
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
    #' @return String representation of RpmeVariable
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
# RpmeVariable$unlock()
#
## Below is an example to define the print function
# RpmeVariable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RpmeVariable$lock()

