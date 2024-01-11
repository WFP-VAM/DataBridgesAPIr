#' Create a new SurveyListDTO
#'
#' @description
#' SurveyListDTO Class
#'
#' @docType class
#' @title SurveyListDTO
#' @description SurveyListDTO Class
#' @format An \code{R6Class} generator object
#' @field adm0Code The internal code of the country where the survey has taken place integer [optional]
#' @field baseData The link to the JSON data reshaped on the base XLSForm character [optional]
#' @field baseXlsFormName The name of the base XLSForm used to build the XLSForm character [optional]
#' @field countryName The name of the country where the survey has taken place character [optional]
#' @field iso3Alpha3 The ISO3 alpha code of the country where the survey has taken place character [optional]
#' @field originalCsvFile The link to download the original CSV file character [optional]
#' @field surveyCreateDate The date when the survey has been uploaded in the Data Bridges platform character [optional]
#' @field surveyEndDate The date when the survey has ended character [optional]
#' @field surveyID The Id of the Survey integer [optional]
#' @field surveyOriginalFilename The filename of the survey CSV file character [optional]
#' @field surveyStartDate The date when the survey has started character [optional]
#' @field surveyStatusID The Id of the Survey status integer [optional]
#' @field surveyValidationReport The detailed report on the validation performed on the survey schema character [optional]
#' @field userName The name of the user that has uploaded the survey data character [optional]
#' @field xlsFormName The name of the XLSForm used to collect data character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SurveyListDTO <- R6::R6Class(
  "SurveyListDTO",
  inherit = null<String, AnyType>,
  public = list(
    `adm0Code` = NULL,
    `baseData` = NULL,
    `baseXlsFormName` = NULL,
    `countryName` = NULL,
    `iso3Alpha3` = NULL,
    `originalCsvFile` = NULL,
    `surveyCreateDate` = NULL,
    `surveyEndDate` = NULL,
    `surveyID` = NULL,
    `surveyOriginalFilename` = NULL,
    `surveyStartDate` = NULL,
    `surveyStatusID` = NULL,
    `surveyValidationReport` = NULL,
    `userName` = NULL,
    `xlsFormName` = NULL,
    `_field_list` = c("adm0Code", "baseData", "baseXlsFormName", "countryName", "iso3Alpha3", "originalCsvFile", "surveyCreateDate", "surveyEndDate", "surveyID", "surveyOriginalFilename", "surveyStartDate", "surveyStatusID", "surveyValidationReport", "userName", "xlsFormName"),
    `additional_properties` = list(),
    #' Initialize a new SurveyListDTO class.
    #'
    #' @description
    #' Initialize a new SurveyListDTO class.
    #'
    #' @param adm0Code The internal code of the country where the survey has taken place
    #' @param baseData The link to the JSON data reshaped on the base XLSForm
    #' @param baseXlsFormName The name of the base XLSForm used to build the XLSForm
    #' @param countryName The name of the country where the survey has taken place
    #' @param iso3Alpha3 The ISO3 alpha code of the country where the survey has taken place
    #' @param originalCsvFile The link to download the original CSV file
    #' @param surveyCreateDate The date when the survey has been uploaded in the Data Bridges platform
    #' @param surveyEndDate The date when the survey has ended
    #' @param surveyID The Id of the Survey
    #' @param surveyOriginalFilename The filename of the survey CSV file
    #' @param surveyStartDate The date when the survey has started
    #' @param surveyStatusID The Id of the Survey status
    #' @param surveyValidationReport The detailed report on the validation performed on the survey schema
    #' @param userName The name of the user that has uploaded the survey data
    #' @param xlsFormName The name of the XLSForm used to collect data
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`adm0Code` = NULL, `baseData` = NULL, `baseXlsFormName` = NULL, `countryName` = NULL, `iso3Alpha3` = NULL, `originalCsvFile` = NULL, `surveyCreateDate` = NULL, `surveyEndDate` = NULL, `surveyID` = NULL, `surveyOriginalFilename` = NULL, `surveyStartDate` = NULL, `surveyStatusID` = NULL, `surveyValidationReport` = NULL, `userName` = NULL, `xlsFormName` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`adm0Code`)) {
        if (!(is.numeric(`adm0Code`) && length(`adm0Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm0Code`. Must be an integer:", `adm0Code`))
        }
        self$`adm0Code` <- `adm0Code`
      }
      if (!is.null(`baseData`)) {
        if (!(is.character(`baseData`) && length(`baseData`) == 1)) {
          stop(paste("Error! Invalid data for `baseData`. Must be a string:", `baseData`))
        }
        self$`baseData` <- `baseData`
      }
      if (!is.null(`baseXlsFormName`)) {
        if (!(is.character(`baseXlsFormName`) && length(`baseXlsFormName`) == 1)) {
          stop(paste("Error! Invalid data for `baseXlsFormName`. Must be a string:", `baseXlsFormName`))
        }
        self$`baseXlsFormName` <- `baseXlsFormName`
      }
      if (!is.null(`countryName`)) {
        if (!(is.character(`countryName`) && length(`countryName`) == 1)) {
          stop(paste("Error! Invalid data for `countryName`. Must be a string:", `countryName`))
        }
        self$`countryName` <- `countryName`
      }
      if (!is.null(`iso3Alpha3`)) {
        if (!(is.character(`iso3Alpha3`) && length(`iso3Alpha3`) == 1)) {
          stop(paste("Error! Invalid data for `iso3Alpha3`. Must be a string:", `iso3Alpha3`))
        }
        self$`iso3Alpha3` <- `iso3Alpha3`
      }
      if (!is.null(`originalCsvFile`)) {
        if (!(is.character(`originalCsvFile`) && length(`originalCsvFile`) == 1)) {
          stop(paste("Error! Invalid data for `originalCsvFile`. Must be a string:", `originalCsvFile`))
        }
        self$`originalCsvFile` <- `originalCsvFile`
      }
      if (!is.null(`surveyCreateDate`)) {
        if (!is.character(`surveyCreateDate`)) {
          stop(paste("Error! Invalid data for `surveyCreateDate`. Must be a string:", `surveyCreateDate`))
        }
        self$`surveyCreateDate` <- `surveyCreateDate`
      }
      if (!is.null(`surveyEndDate`)) {
        if (!is.character(`surveyEndDate`)) {
          stop(paste("Error! Invalid data for `surveyEndDate`. Must be a string:", `surveyEndDate`))
        }
        self$`surveyEndDate` <- `surveyEndDate`
      }
      if (!is.null(`surveyID`)) {
        if (!(is.numeric(`surveyID`) && length(`surveyID`) == 1)) {
          stop(paste("Error! Invalid data for `surveyID`. Must be an integer:", `surveyID`))
        }
        self$`surveyID` <- `surveyID`
      }
      if (!is.null(`surveyOriginalFilename`)) {
        if (!(is.character(`surveyOriginalFilename`) && length(`surveyOriginalFilename`) == 1)) {
          stop(paste("Error! Invalid data for `surveyOriginalFilename`. Must be a string:", `surveyOriginalFilename`))
        }
        self$`surveyOriginalFilename` <- `surveyOriginalFilename`
      }
      if (!is.null(`surveyStartDate`)) {
        if (!is.character(`surveyStartDate`)) {
          stop(paste("Error! Invalid data for `surveyStartDate`. Must be a string:", `surveyStartDate`))
        }
        self$`surveyStartDate` <- `surveyStartDate`
      }
      if (!is.null(`surveyStatusID`)) {
        if (!(is.numeric(`surveyStatusID`) && length(`surveyStatusID`) == 1)) {
          stop(paste("Error! Invalid data for `surveyStatusID`. Must be an integer:", `surveyStatusID`))
        }
        self$`surveyStatusID` <- `surveyStatusID`
      }
      if (!is.null(`surveyValidationReport`)) {
        if (!(is.character(`surveyValidationReport`) && length(`surveyValidationReport`) == 1)) {
          stop(paste("Error! Invalid data for `surveyValidationReport`. Must be a string:", `surveyValidationReport`))
        }
        self$`surveyValidationReport` <- `surveyValidationReport`
      }
      if (!is.null(`userName`)) {
        if (!(is.character(`userName`) && length(`userName`) == 1)) {
          stop(paste("Error! Invalid data for `userName`. Must be a string:", `userName`))
        }
        self$`userName` <- `userName`
      }
      if (!is.null(`xlsFormName`)) {
        if (!(is.character(`xlsFormName`) && length(`xlsFormName`) == 1)) {
          stop(paste("Error! Invalid data for `xlsFormName`. Must be a string:", `xlsFormName`))
        }
        self$`xlsFormName` <- `xlsFormName`
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
    #' @return SurveyListDTO in JSON format
    #' @export
    toJSON = function() {
      SurveyListDTOObject <- list()
      if (!is.null(self$`adm0Code`)) {
        SurveyListDTOObject[["adm0Code"]] <-
          self$`adm0Code`
      }
      if (!is.null(self$`baseData`)) {
        SurveyListDTOObject[["baseData"]] <-
          self$`baseData`
      }
      if (!is.null(self$`baseXlsFormName`)) {
        SurveyListDTOObject[["baseXlsFormName"]] <-
          self$`baseXlsFormName`
      }
      if (!is.null(self$`countryName`)) {
        SurveyListDTOObject[["countryName"]] <-
          self$`countryName`
      }
      if (!is.null(self$`iso3Alpha3`)) {
        SurveyListDTOObject[["iso3Alpha3"]] <-
          self$`iso3Alpha3`
      }
      if (!is.null(self$`originalCsvFile`)) {
        SurveyListDTOObject[["originalCsvFile"]] <-
          self$`originalCsvFile`
      }
      if (!is.null(self$`surveyCreateDate`)) {
        SurveyListDTOObject[["surveyCreateDate"]] <-
          self$`surveyCreateDate`
      }
      if (!is.null(self$`surveyEndDate`)) {
        SurveyListDTOObject[["surveyEndDate"]] <-
          self$`surveyEndDate`
      }
      if (!is.null(self$`surveyID`)) {
        SurveyListDTOObject[["surveyID"]] <-
          self$`surveyID`
      }
      if (!is.null(self$`surveyOriginalFilename`)) {
        SurveyListDTOObject[["surveyOriginalFilename"]] <-
          self$`surveyOriginalFilename`
      }
      if (!is.null(self$`surveyStartDate`)) {
        SurveyListDTOObject[["surveyStartDate"]] <-
          self$`surveyStartDate`
      }
      if (!is.null(self$`surveyStatusID`)) {
        SurveyListDTOObject[["surveyStatusID"]] <-
          self$`surveyStatusID`
      }
      if (!is.null(self$`surveyValidationReport`)) {
        SurveyListDTOObject[["surveyValidationReport"]] <-
          self$`surveyValidationReport`
      }
      if (!is.null(self$`userName`)) {
        SurveyListDTOObject[["userName"]] <-
          self$`userName`
      }
      if (!is.null(self$`xlsFormName`)) {
        SurveyListDTOObject[["xlsFormName"]] <-
          self$`xlsFormName`
      }
      for (key in names(self$additional_properties)) {
        SurveyListDTOObject[[key]] <- self$additional_properties[[key]]
      }

      SurveyListDTOObject
    },
    #' Deserialize JSON string into an instance of SurveyListDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SurveyListDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SurveyListDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`adm0Code`)) {
        self$`adm0Code` <- this_object$`adm0Code`
      }
      if (!is.null(this_object$`baseData`)) {
        self$`baseData` <- this_object$`baseData`
      }
      if (!is.null(this_object$`baseXlsFormName`)) {
        self$`baseXlsFormName` <- this_object$`baseXlsFormName`
      }
      if (!is.null(this_object$`countryName`)) {
        self$`countryName` <- this_object$`countryName`
      }
      if (!is.null(this_object$`iso3Alpha3`)) {
        self$`iso3Alpha3` <- this_object$`iso3Alpha3`
      }
      if (!is.null(this_object$`originalCsvFile`)) {
        self$`originalCsvFile` <- this_object$`originalCsvFile`
      }
      if (!is.null(this_object$`surveyCreateDate`)) {
        self$`surveyCreateDate` <- this_object$`surveyCreateDate`
      }
      if (!is.null(this_object$`surveyEndDate`)) {
        self$`surveyEndDate` <- this_object$`surveyEndDate`
      }
      if (!is.null(this_object$`surveyID`)) {
        self$`surveyID` <- this_object$`surveyID`
      }
      if (!is.null(this_object$`surveyOriginalFilename`)) {
        self$`surveyOriginalFilename` <- this_object$`surveyOriginalFilename`
      }
      if (!is.null(this_object$`surveyStartDate`)) {
        self$`surveyStartDate` <- this_object$`surveyStartDate`
      }
      if (!is.null(this_object$`surveyStatusID`)) {
        self$`surveyStatusID` <- this_object$`surveyStatusID`
      }
      if (!is.null(this_object$`surveyValidationReport`)) {
        self$`surveyValidationReport` <- this_object$`surveyValidationReport`
      }
      if (!is.null(this_object$`userName`)) {
        self$`userName` <- this_object$`userName`
      }
      if (!is.null(this_object$`xlsFormName`)) {
        self$`xlsFormName` <- this_object$`xlsFormName`
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
    #' @return SurveyListDTO in JSON format
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
        if (!is.null(self$`baseData`)) {
          sprintf(
          '"baseData":
            "%s"
                    ',
          self$`baseData`
          )
        },
        if (!is.null(self$`baseXlsFormName`)) {
          sprintf(
          '"baseXlsFormName":
            "%s"
                    ',
          self$`baseXlsFormName`
          )
        },
        if (!is.null(self$`countryName`)) {
          sprintf(
          '"countryName":
            "%s"
                    ',
          self$`countryName`
          )
        },
        if (!is.null(self$`iso3Alpha3`)) {
          sprintf(
          '"iso3Alpha3":
            "%s"
                    ',
          self$`iso3Alpha3`
          )
        },
        if (!is.null(self$`originalCsvFile`)) {
          sprintf(
          '"originalCsvFile":
            "%s"
                    ',
          self$`originalCsvFile`
          )
        },
        if (!is.null(self$`surveyCreateDate`)) {
          sprintf(
          '"surveyCreateDate":
            "%s"
                    ',
          self$`surveyCreateDate`
          )
        },
        if (!is.null(self$`surveyEndDate`)) {
          sprintf(
          '"surveyEndDate":
            "%s"
                    ',
          self$`surveyEndDate`
          )
        },
        if (!is.null(self$`surveyID`)) {
          sprintf(
          '"surveyID":
            %d
                    ',
          self$`surveyID`
          )
        },
        if (!is.null(self$`surveyOriginalFilename`)) {
          sprintf(
          '"surveyOriginalFilename":
            "%s"
                    ',
          self$`surveyOriginalFilename`
          )
        },
        if (!is.null(self$`surveyStartDate`)) {
          sprintf(
          '"surveyStartDate":
            "%s"
                    ',
          self$`surveyStartDate`
          )
        },
        if (!is.null(self$`surveyStatusID`)) {
          sprintf(
          '"surveyStatusID":
            %d
                    ',
          self$`surveyStatusID`
          )
        },
        if (!is.null(self$`surveyValidationReport`)) {
          sprintf(
          '"surveyValidationReport":
            "%s"
                    ',
          self$`surveyValidationReport`
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
        if (!is.null(self$`xlsFormName`)) {
          sprintf(
          '"xlsFormName":
            "%s"
                    ',
          self$`xlsFormName`
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
    #' Deserialize JSON string into an instance of SurveyListDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SurveyListDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SurveyListDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`adm0Code` <- this_object$`adm0Code`
      self$`baseData` <- this_object$`baseData`
      self$`baseXlsFormName` <- this_object$`baseXlsFormName`
      self$`countryName` <- this_object$`countryName`
      self$`iso3Alpha3` <- this_object$`iso3Alpha3`
      self$`originalCsvFile` <- this_object$`originalCsvFile`
      self$`surveyCreateDate` <- this_object$`surveyCreateDate`
      self$`surveyEndDate` <- this_object$`surveyEndDate`
      self$`surveyID` <- this_object$`surveyID`
      self$`surveyOriginalFilename` <- this_object$`surveyOriginalFilename`
      self$`surveyStartDate` <- this_object$`surveyStartDate`
      self$`surveyStatusID` <- this_object$`surveyStatusID`
      self$`surveyValidationReport` <- this_object$`surveyValidationReport`
      self$`userName` <- this_object$`userName`
      self$`xlsFormName` <- this_object$`xlsFormName`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to SurveyListDTO
    #'
    #' @description
    #' Validate JSON input with respect to SurveyListDTO and throw an exception if invalid
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
    #' @return String representation of SurveyListDTO
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
      if (nchar(self$`surveyOriginalFilename`) > 256) {
        return(FALSE)
      }
      if (nchar(self$`surveyOriginalFilename`) < 0) {
        return(FALSE)
      }

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
      if (nchar(self$`surveyOriginalFilename`) > 256) {
        invalid_fields["surveyOriginalFilename"] <- "Invalid length for `surveyOriginalFilename`, must be smaller than or equal to 256."
      }
      if (nchar(self$`surveyOriginalFilename`) < 0) {
        invalid_fields["surveyOriginalFilename"] <- "Invalid length for `surveyOriginalFilename`, must be bigger than or equal to 0."
      }

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
# SurveyListDTO$unlock()
#
## Below is an example to define the print function
# SurveyListDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SurveyListDTO$lock()

