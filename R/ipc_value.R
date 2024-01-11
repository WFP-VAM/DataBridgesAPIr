#' Create a new IpcValue
#'
#' @description
#' IpcValue Class
#'
#' @docType class
#' @title IpcValue
#' @description IpcValue Class
#' @format An \code{R6Class} generator object
#' @field ipcAnalysedPercentage  numeric [optional]
#' @field ipcAnalysedPopulation  integer [optional]
#' @field ipcAnalysisComment  character [optional]
#' @field ipcAreaName  character [optional]
#' @field ipcCountryName  character [optional]
#' @field ipcCreateDate  character [optional]
#' @field ipcDataSource  character [optional]
#' @field ipcDataType  character [optional]
#' @field ipcId  integer [optional]
#' @field ipcIsLatestValue  character [optional]
#' @field ipcPhase3Percentage  numeric [optional]
#' @field ipcPhase3Population  integer [optional]
#' @field ipcPhase4Percentage  numeric [optional]
#' @field ipcPhase4Population  integer [optional]
#' @field ipcPhase5Percentage  numeric [optional]
#' @field ipcPhase5Population  integer [optional]
#' @field ipcReferencePeriod  character [optional]
#' @field ipcUpdateDate  character [optional]
#' @field ipcYear  integer [optional]
#' @field iso3Alpha3  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IpcValue <- R6::R6Class(
  "IpcValue",
  inherit = null<String, AnyType>,
  public = list(
    `ipcAnalysedPercentage` = NULL,
    `ipcAnalysedPopulation` = NULL,
    `ipcAnalysisComment` = NULL,
    `ipcAreaName` = NULL,
    `ipcCountryName` = NULL,
    `ipcCreateDate` = NULL,
    `ipcDataSource` = NULL,
    `ipcDataType` = NULL,
    `ipcId` = NULL,
    `ipcIsLatestValue` = NULL,
    `ipcPhase3Percentage` = NULL,
    `ipcPhase3Population` = NULL,
    `ipcPhase4Percentage` = NULL,
    `ipcPhase4Population` = NULL,
    `ipcPhase5Percentage` = NULL,
    `ipcPhase5Population` = NULL,
    `ipcReferencePeriod` = NULL,
    `ipcUpdateDate` = NULL,
    `ipcYear` = NULL,
    `iso3Alpha3` = NULL,
    `_field_list` = c("ipcAnalysedPercentage", "ipcAnalysedPopulation", "ipcAnalysisComment", "ipcAreaName", "ipcCountryName", "ipcCreateDate", "ipcDataSource", "ipcDataType", "ipcId", "ipcIsLatestValue", "ipcPhase3Percentage", "ipcPhase3Population", "ipcPhase4Percentage", "ipcPhase4Population", "ipcPhase5Percentage", "ipcPhase5Population", "ipcReferencePeriod", "ipcUpdateDate", "ipcYear", "iso3Alpha3"),
    `additional_properties` = list(),
    #' Initialize a new IpcValue class.
    #'
    #' @description
    #' Initialize a new IpcValue class.
    #'
    #' @param ipcAnalysedPercentage ipcAnalysedPercentage
    #' @param ipcAnalysedPopulation ipcAnalysedPopulation
    #' @param ipcAnalysisComment ipcAnalysisComment
    #' @param ipcAreaName ipcAreaName
    #' @param ipcCountryName ipcCountryName
    #' @param ipcCreateDate ipcCreateDate
    #' @param ipcDataSource ipcDataSource
    #' @param ipcDataType ipcDataType
    #' @param ipcId ipcId
    #' @param ipcIsLatestValue ipcIsLatestValue
    #' @param ipcPhase3Percentage ipcPhase3Percentage
    #' @param ipcPhase3Population ipcPhase3Population
    #' @param ipcPhase4Percentage ipcPhase4Percentage
    #' @param ipcPhase4Population ipcPhase4Population
    #' @param ipcPhase5Percentage ipcPhase5Percentage
    #' @param ipcPhase5Population ipcPhase5Population
    #' @param ipcReferencePeriod ipcReferencePeriod
    #' @param ipcUpdateDate ipcUpdateDate
    #' @param ipcYear ipcYear
    #' @param iso3Alpha3 iso3Alpha3
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`ipcAnalysedPercentage` = NULL, `ipcAnalysedPopulation` = NULL, `ipcAnalysisComment` = NULL, `ipcAreaName` = NULL, `ipcCountryName` = NULL, `ipcCreateDate` = NULL, `ipcDataSource` = NULL, `ipcDataType` = NULL, `ipcId` = NULL, `ipcIsLatestValue` = NULL, `ipcPhase3Percentage` = NULL, `ipcPhase3Population` = NULL, `ipcPhase4Percentage` = NULL, `ipcPhase4Population` = NULL, `ipcPhase5Percentage` = NULL, `ipcPhase5Population` = NULL, `ipcReferencePeriod` = NULL, `ipcUpdateDate` = NULL, `ipcYear` = NULL, `iso3Alpha3` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`ipcAnalysedPercentage`)) {
        if (!(is.numeric(`ipcAnalysedPercentage`) && length(`ipcAnalysedPercentage`) == 1)) {
          stop(paste("Error! Invalid data for `ipcAnalysedPercentage`. Must be a number:", `ipcAnalysedPercentage`))
        }
        self$`ipcAnalysedPercentage` <- `ipcAnalysedPercentage`
      }
      if (!is.null(`ipcAnalysedPopulation`)) {
        if (!(is.numeric(`ipcAnalysedPopulation`) && length(`ipcAnalysedPopulation`) == 1)) {
          stop(paste("Error! Invalid data for `ipcAnalysedPopulation`. Must be an integer:", `ipcAnalysedPopulation`))
        }
        self$`ipcAnalysedPopulation` <- `ipcAnalysedPopulation`
      }
      if (!is.null(`ipcAnalysisComment`)) {
        if (!(is.character(`ipcAnalysisComment`) && length(`ipcAnalysisComment`) == 1)) {
          stop(paste("Error! Invalid data for `ipcAnalysisComment`. Must be a string:", `ipcAnalysisComment`))
        }
        self$`ipcAnalysisComment` <- `ipcAnalysisComment`
      }
      if (!is.null(`ipcAreaName`)) {
        if (!(is.character(`ipcAreaName`) && length(`ipcAreaName`) == 1)) {
          stop(paste("Error! Invalid data for `ipcAreaName`. Must be a string:", `ipcAreaName`))
        }
        self$`ipcAreaName` <- `ipcAreaName`
      }
      if (!is.null(`ipcCountryName`)) {
        if (!(is.character(`ipcCountryName`) && length(`ipcCountryName`) == 1)) {
          stop(paste("Error! Invalid data for `ipcCountryName`. Must be a string:", `ipcCountryName`))
        }
        self$`ipcCountryName` <- `ipcCountryName`
      }
      if (!is.null(`ipcCreateDate`)) {
        if (!is.character(`ipcCreateDate`)) {
          stop(paste("Error! Invalid data for `ipcCreateDate`. Must be a string:", `ipcCreateDate`))
        }
        self$`ipcCreateDate` <- `ipcCreateDate`
      }
      if (!is.null(`ipcDataSource`)) {
        if (!(is.character(`ipcDataSource`) && length(`ipcDataSource`) == 1)) {
          stop(paste("Error! Invalid data for `ipcDataSource`. Must be a string:", `ipcDataSource`))
        }
        self$`ipcDataSource` <- `ipcDataSource`
      }
      if (!is.null(`ipcDataType`)) {
        if (!(is.character(`ipcDataType`) && length(`ipcDataType`) == 1)) {
          stop(paste("Error! Invalid data for `ipcDataType`. Must be a string:", `ipcDataType`))
        }
        self$`ipcDataType` <- `ipcDataType`
      }
      if (!is.null(`ipcId`)) {
        if (!(is.numeric(`ipcId`) && length(`ipcId`) == 1)) {
          stop(paste("Error! Invalid data for `ipcId`. Must be an integer:", `ipcId`))
        }
        self$`ipcId` <- `ipcId`
      }
      if (!is.null(`ipcIsLatestValue`)) {
        if (!(is.logical(`ipcIsLatestValue`) && length(`ipcIsLatestValue`) == 1)) {
          stop(paste("Error! Invalid data for `ipcIsLatestValue`. Must be a boolean:", `ipcIsLatestValue`))
        }
        self$`ipcIsLatestValue` <- `ipcIsLatestValue`
      }
      if (!is.null(`ipcPhase3Percentage`)) {
        if (!(is.numeric(`ipcPhase3Percentage`) && length(`ipcPhase3Percentage`) == 1)) {
          stop(paste("Error! Invalid data for `ipcPhase3Percentage`. Must be a number:", `ipcPhase3Percentage`))
        }
        self$`ipcPhase3Percentage` <- `ipcPhase3Percentage`
      }
      if (!is.null(`ipcPhase3Population`)) {
        if (!(is.numeric(`ipcPhase3Population`) && length(`ipcPhase3Population`) == 1)) {
          stop(paste("Error! Invalid data for `ipcPhase3Population`. Must be an integer:", `ipcPhase3Population`))
        }
        self$`ipcPhase3Population` <- `ipcPhase3Population`
      }
      if (!is.null(`ipcPhase4Percentage`)) {
        if (!(is.numeric(`ipcPhase4Percentage`) && length(`ipcPhase4Percentage`) == 1)) {
          stop(paste("Error! Invalid data for `ipcPhase4Percentage`. Must be a number:", `ipcPhase4Percentage`))
        }
        self$`ipcPhase4Percentage` <- `ipcPhase4Percentage`
      }
      if (!is.null(`ipcPhase4Population`)) {
        if (!(is.numeric(`ipcPhase4Population`) && length(`ipcPhase4Population`) == 1)) {
          stop(paste("Error! Invalid data for `ipcPhase4Population`. Must be an integer:", `ipcPhase4Population`))
        }
        self$`ipcPhase4Population` <- `ipcPhase4Population`
      }
      if (!is.null(`ipcPhase5Percentage`)) {
        if (!(is.numeric(`ipcPhase5Percentage`) && length(`ipcPhase5Percentage`) == 1)) {
          stop(paste("Error! Invalid data for `ipcPhase5Percentage`. Must be a number:", `ipcPhase5Percentage`))
        }
        self$`ipcPhase5Percentage` <- `ipcPhase5Percentage`
      }
      if (!is.null(`ipcPhase5Population`)) {
        if (!(is.numeric(`ipcPhase5Population`) && length(`ipcPhase5Population`) == 1)) {
          stop(paste("Error! Invalid data for `ipcPhase5Population`. Must be an integer:", `ipcPhase5Population`))
        }
        self$`ipcPhase5Population` <- `ipcPhase5Population`
      }
      if (!is.null(`ipcReferencePeriod`)) {
        if (!(is.character(`ipcReferencePeriod`) && length(`ipcReferencePeriod`) == 1)) {
          stop(paste("Error! Invalid data for `ipcReferencePeriod`. Must be a string:", `ipcReferencePeriod`))
        }
        self$`ipcReferencePeriod` <- `ipcReferencePeriod`
      }
      if (!is.null(`ipcUpdateDate`)) {
        if (!is.character(`ipcUpdateDate`)) {
          stop(paste("Error! Invalid data for `ipcUpdateDate`. Must be a string:", `ipcUpdateDate`))
        }
        self$`ipcUpdateDate` <- `ipcUpdateDate`
      }
      if (!is.null(`ipcYear`)) {
        if (!(is.numeric(`ipcYear`) && length(`ipcYear`) == 1)) {
          stop(paste("Error! Invalid data for `ipcYear`. Must be an integer:", `ipcYear`))
        }
        self$`ipcYear` <- `ipcYear`
      }
      if (!is.null(`iso3Alpha3`)) {
        if (!(is.character(`iso3Alpha3`) && length(`iso3Alpha3`) == 1)) {
          stop(paste("Error! Invalid data for `iso3Alpha3`. Must be a string:", `iso3Alpha3`))
        }
        self$`iso3Alpha3` <- `iso3Alpha3`
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
    #' @return IpcValue in JSON format
    #' @export
    toJSON = function() {
      IpcValueObject <- list()
      if (!is.null(self$`ipcAnalysedPercentage`)) {
        IpcValueObject[["ipcAnalysedPercentage"]] <-
          self$`ipcAnalysedPercentage`
      }
      if (!is.null(self$`ipcAnalysedPopulation`)) {
        IpcValueObject[["ipcAnalysedPopulation"]] <-
          self$`ipcAnalysedPopulation`
      }
      if (!is.null(self$`ipcAnalysisComment`)) {
        IpcValueObject[["ipcAnalysisComment"]] <-
          self$`ipcAnalysisComment`
      }
      if (!is.null(self$`ipcAreaName`)) {
        IpcValueObject[["ipcAreaName"]] <-
          self$`ipcAreaName`
      }
      if (!is.null(self$`ipcCountryName`)) {
        IpcValueObject[["ipcCountryName"]] <-
          self$`ipcCountryName`
      }
      if (!is.null(self$`ipcCreateDate`)) {
        IpcValueObject[["ipcCreateDate"]] <-
          self$`ipcCreateDate`
      }
      if (!is.null(self$`ipcDataSource`)) {
        IpcValueObject[["ipcDataSource"]] <-
          self$`ipcDataSource`
      }
      if (!is.null(self$`ipcDataType`)) {
        IpcValueObject[["ipcDataType"]] <-
          self$`ipcDataType`
      }
      if (!is.null(self$`ipcId`)) {
        IpcValueObject[["ipcId"]] <-
          self$`ipcId`
      }
      if (!is.null(self$`ipcIsLatestValue`)) {
        IpcValueObject[["ipcIsLatestValue"]] <-
          self$`ipcIsLatestValue`
      }
      if (!is.null(self$`ipcPhase3Percentage`)) {
        IpcValueObject[["ipcPhase3Percentage"]] <-
          self$`ipcPhase3Percentage`
      }
      if (!is.null(self$`ipcPhase3Population`)) {
        IpcValueObject[["ipcPhase3Population"]] <-
          self$`ipcPhase3Population`
      }
      if (!is.null(self$`ipcPhase4Percentage`)) {
        IpcValueObject[["ipcPhase4Percentage"]] <-
          self$`ipcPhase4Percentage`
      }
      if (!is.null(self$`ipcPhase4Population`)) {
        IpcValueObject[["ipcPhase4Population"]] <-
          self$`ipcPhase4Population`
      }
      if (!is.null(self$`ipcPhase5Percentage`)) {
        IpcValueObject[["ipcPhase5Percentage"]] <-
          self$`ipcPhase5Percentage`
      }
      if (!is.null(self$`ipcPhase5Population`)) {
        IpcValueObject[["ipcPhase5Population"]] <-
          self$`ipcPhase5Population`
      }
      if (!is.null(self$`ipcReferencePeriod`)) {
        IpcValueObject[["ipcReferencePeriod"]] <-
          self$`ipcReferencePeriod`
      }
      if (!is.null(self$`ipcUpdateDate`)) {
        IpcValueObject[["ipcUpdateDate"]] <-
          self$`ipcUpdateDate`
      }
      if (!is.null(self$`ipcYear`)) {
        IpcValueObject[["ipcYear"]] <-
          self$`ipcYear`
      }
      if (!is.null(self$`iso3Alpha3`)) {
        IpcValueObject[["iso3Alpha3"]] <-
          self$`iso3Alpha3`
      }
      for (key in names(self$additional_properties)) {
        IpcValueObject[[key]] <- self$additional_properties[[key]]
      }

      IpcValueObject
    },
    #' Deserialize JSON string into an instance of IpcValue
    #'
    #' @description
    #' Deserialize JSON string into an instance of IpcValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of IpcValue
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ipcAnalysedPercentage`)) {
        self$`ipcAnalysedPercentage` <- this_object$`ipcAnalysedPercentage`
      }
      if (!is.null(this_object$`ipcAnalysedPopulation`)) {
        self$`ipcAnalysedPopulation` <- this_object$`ipcAnalysedPopulation`
      }
      if (!is.null(this_object$`ipcAnalysisComment`)) {
        self$`ipcAnalysisComment` <- this_object$`ipcAnalysisComment`
      }
      if (!is.null(this_object$`ipcAreaName`)) {
        self$`ipcAreaName` <- this_object$`ipcAreaName`
      }
      if (!is.null(this_object$`ipcCountryName`)) {
        self$`ipcCountryName` <- this_object$`ipcCountryName`
      }
      if (!is.null(this_object$`ipcCreateDate`)) {
        self$`ipcCreateDate` <- this_object$`ipcCreateDate`
      }
      if (!is.null(this_object$`ipcDataSource`)) {
        self$`ipcDataSource` <- this_object$`ipcDataSource`
      }
      if (!is.null(this_object$`ipcDataType`)) {
        self$`ipcDataType` <- this_object$`ipcDataType`
      }
      if (!is.null(this_object$`ipcId`)) {
        self$`ipcId` <- this_object$`ipcId`
      }
      if (!is.null(this_object$`ipcIsLatestValue`)) {
        self$`ipcIsLatestValue` <- this_object$`ipcIsLatestValue`
      }
      if (!is.null(this_object$`ipcPhase3Percentage`)) {
        self$`ipcPhase3Percentage` <- this_object$`ipcPhase3Percentage`
      }
      if (!is.null(this_object$`ipcPhase3Population`)) {
        self$`ipcPhase3Population` <- this_object$`ipcPhase3Population`
      }
      if (!is.null(this_object$`ipcPhase4Percentage`)) {
        self$`ipcPhase4Percentage` <- this_object$`ipcPhase4Percentage`
      }
      if (!is.null(this_object$`ipcPhase4Population`)) {
        self$`ipcPhase4Population` <- this_object$`ipcPhase4Population`
      }
      if (!is.null(this_object$`ipcPhase5Percentage`)) {
        self$`ipcPhase5Percentage` <- this_object$`ipcPhase5Percentage`
      }
      if (!is.null(this_object$`ipcPhase5Population`)) {
        self$`ipcPhase5Population` <- this_object$`ipcPhase5Population`
      }
      if (!is.null(this_object$`ipcReferencePeriod`)) {
        self$`ipcReferencePeriod` <- this_object$`ipcReferencePeriod`
      }
      if (!is.null(this_object$`ipcUpdateDate`)) {
        self$`ipcUpdateDate` <- this_object$`ipcUpdateDate`
      }
      if (!is.null(this_object$`ipcYear`)) {
        self$`ipcYear` <- this_object$`ipcYear`
      }
      if (!is.null(this_object$`iso3Alpha3`)) {
        self$`iso3Alpha3` <- this_object$`iso3Alpha3`
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
    #' @return IpcValue in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`ipcAnalysedPercentage`)) {
          sprintf(
          '"ipcAnalysedPercentage":
            %d
                    ',
          self$`ipcAnalysedPercentage`
          )
        },
        if (!is.null(self$`ipcAnalysedPopulation`)) {
          sprintf(
          '"ipcAnalysedPopulation":
            %d
                    ',
          self$`ipcAnalysedPopulation`
          )
        },
        if (!is.null(self$`ipcAnalysisComment`)) {
          sprintf(
          '"ipcAnalysisComment":
            "%s"
                    ',
          self$`ipcAnalysisComment`
          )
        },
        if (!is.null(self$`ipcAreaName`)) {
          sprintf(
          '"ipcAreaName":
            "%s"
                    ',
          self$`ipcAreaName`
          )
        },
        if (!is.null(self$`ipcCountryName`)) {
          sprintf(
          '"ipcCountryName":
            "%s"
                    ',
          self$`ipcCountryName`
          )
        },
        if (!is.null(self$`ipcCreateDate`)) {
          sprintf(
          '"ipcCreateDate":
            "%s"
                    ',
          self$`ipcCreateDate`
          )
        },
        if (!is.null(self$`ipcDataSource`)) {
          sprintf(
          '"ipcDataSource":
            "%s"
                    ',
          self$`ipcDataSource`
          )
        },
        if (!is.null(self$`ipcDataType`)) {
          sprintf(
          '"ipcDataType":
            "%s"
                    ',
          self$`ipcDataType`
          )
        },
        if (!is.null(self$`ipcId`)) {
          sprintf(
          '"ipcId":
            %d
                    ',
          self$`ipcId`
          )
        },
        if (!is.null(self$`ipcIsLatestValue`)) {
          sprintf(
          '"ipcIsLatestValue":
            %s
                    ',
          tolower(self$`ipcIsLatestValue`)
          )
        },
        if (!is.null(self$`ipcPhase3Percentage`)) {
          sprintf(
          '"ipcPhase3Percentage":
            %d
                    ',
          self$`ipcPhase3Percentage`
          )
        },
        if (!is.null(self$`ipcPhase3Population`)) {
          sprintf(
          '"ipcPhase3Population":
            %d
                    ',
          self$`ipcPhase3Population`
          )
        },
        if (!is.null(self$`ipcPhase4Percentage`)) {
          sprintf(
          '"ipcPhase4Percentage":
            %d
                    ',
          self$`ipcPhase4Percentage`
          )
        },
        if (!is.null(self$`ipcPhase4Population`)) {
          sprintf(
          '"ipcPhase4Population":
            %d
                    ',
          self$`ipcPhase4Population`
          )
        },
        if (!is.null(self$`ipcPhase5Percentage`)) {
          sprintf(
          '"ipcPhase5Percentage":
            %d
                    ',
          self$`ipcPhase5Percentage`
          )
        },
        if (!is.null(self$`ipcPhase5Population`)) {
          sprintf(
          '"ipcPhase5Population":
            %d
                    ',
          self$`ipcPhase5Population`
          )
        },
        if (!is.null(self$`ipcReferencePeriod`)) {
          sprintf(
          '"ipcReferencePeriod":
            "%s"
                    ',
          self$`ipcReferencePeriod`
          )
        },
        if (!is.null(self$`ipcUpdateDate`)) {
          sprintf(
          '"ipcUpdateDate":
            "%s"
                    ',
          self$`ipcUpdateDate`
          )
        },
        if (!is.null(self$`ipcYear`)) {
          sprintf(
          '"ipcYear":
            %d
                    ',
          self$`ipcYear`
          )
        },
        if (!is.null(self$`iso3Alpha3`)) {
          sprintf(
          '"iso3Alpha3":
            "%s"
                    ',
          self$`iso3Alpha3`
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
    #' Deserialize JSON string into an instance of IpcValue
    #'
    #' @description
    #' Deserialize JSON string into an instance of IpcValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of IpcValue
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ipcAnalysedPercentage` <- this_object$`ipcAnalysedPercentage`
      self$`ipcAnalysedPopulation` <- this_object$`ipcAnalysedPopulation`
      self$`ipcAnalysisComment` <- this_object$`ipcAnalysisComment`
      self$`ipcAreaName` <- this_object$`ipcAreaName`
      self$`ipcCountryName` <- this_object$`ipcCountryName`
      self$`ipcCreateDate` <- this_object$`ipcCreateDate`
      self$`ipcDataSource` <- this_object$`ipcDataSource`
      self$`ipcDataType` <- this_object$`ipcDataType`
      self$`ipcId` <- this_object$`ipcId`
      self$`ipcIsLatestValue` <- this_object$`ipcIsLatestValue`
      self$`ipcPhase3Percentage` <- this_object$`ipcPhase3Percentage`
      self$`ipcPhase3Population` <- this_object$`ipcPhase3Population`
      self$`ipcPhase4Percentage` <- this_object$`ipcPhase4Percentage`
      self$`ipcPhase4Population` <- this_object$`ipcPhase4Population`
      self$`ipcPhase5Percentage` <- this_object$`ipcPhase5Percentage`
      self$`ipcPhase5Population` <- this_object$`ipcPhase5Population`
      self$`ipcReferencePeriod` <- this_object$`ipcReferencePeriod`
      self$`ipcUpdateDate` <- this_object$`ipcUpdateDate`
      self$`ipcYear` <- this_object$`ipcYear`
      self$`iso3Alpha3` <- this_object$`iso3Alpha3`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to IpcValue
    #'
    #' @description
    #' Validate JSON input with respect to IpcValue and throw an exception if invalid
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
    #' @return String representation of IpcValue
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
      if (nchar(self$`ipcAreaName`) > 128) {
        return(FALSE)
      }
      if (nchar(self$`ipcAreaName`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`ipcCountryName`) > 128) {
        return(FALSE)
      }
      if (nchar(self$`ipcCountryName`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`ipcDataSource`) > 128) {
        return(FALSE)
      }
      if (nchar(self$`ipcDataSource`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`ipcDataType`) > 256) {
        return(FALSE)
      }
      if (nchar(self$`ipcDataType`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`ipcReferencePeriod`) > 256) {
        return(FALSE)
      }
      if (nchar(self$`ipcReferencePeriod`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`iso3Alpha3`) > 3) {
        return(FALSE)
      }
      if (nchar(self$`iso3Alpha3`) < 0) {
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
      if (nchar(self$`ipcAreaName`) > 128) {
        invalid_fields["ipcAreaName"] <- "Invalid length for `ipcAreaName`, must be smaller than or equal to 128."
      }
      if (nchar(self$`ipcAreaName`) < 0) {
        invalid_fields["ipcAreaName"] <- "Invalid length for `ipcAreaName`, must be bigger than or equal to 0."
      }

      if (nchar(self$`ipcCountryName`) > 128) {
        invalid_fields["ipcCountryName"] <- "Invalid length for `ipcCountryName`, must be smaller than or equal to 128."
      }
      if (nchar(self$`ipcCountryName`) < 0) {
        invalid_fields["ipcCountryName"] <- "Invalid length for `ipcCountryName`, must be bigger than or equal to 0."
      }

      if (nchar(self$`ipcDataSource`) > 128) {
        invalid_fields["ipcDataSource"] <- "Invalid length for `ipcDataSource`, must be smaller than or equal to 128."
      }
      if (nchar(self$`ipcDataSource`) < 0) {
        invalid_fields["ipcDataSource"] <- "Invalid length for `ipcDataSource`, must be bigger than or equal to 0."
      }

      if (nchar(self$`ipcDataType`) > 256) {
        invalid_fields["ipcDataType"] <- "Invalid length for `ipcDataType`, must be smaller than or equal to 256."
      }
      if (nchar(self$`ipcDataType`) < 0) {
        invalid_fields["ipcDataType"] <- "Invalid length for `ipcDataType`, must be bigger than or equal to 0."
      }

      if (nchar(self$`ipcReferencePeriod`) > 256) {
        invalid_fields["ipcReferencePeriod"] <- "Invalid length for `ipcReferencePeriod`, must be smaller than or equal to 256."
      }
      if (nchar(self$`ipcReferencePeriod`) < 0) {
        invalid_fields["ipcReferencePeriod"] <- "Invalid length for `ipcReferencePeriod`, must be bigger than or equal to 0."
      }

      if (nchar(self$`iso3Alpha3`) > 3) {
        invalid_fields["iso3Alpha3"] <- "Invalid length for `iso3Alpha3`, must be smaller than or equal to 3."
      }
      if (nchar(self$`iso3Alpha3`) < 0) {
        invalid_fields["iso3Alpha3"] <- "Invalid length for `iso3Alpha3`, must be bigger than or equal to 0."
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
# IpcValue$unlock()
#
## Below is an example to define the print function
# IpcValue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IpcValue$lock()

