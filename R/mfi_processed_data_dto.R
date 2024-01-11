#' Create a new MFIProcessedDataDTO
#'
#' @description
#' MFIProcessedDataDTO Class
#'
#' @docType class
#' @title MFIProcessedDataDTO
#' @description MFIProcessedDataDTO Class
#' @format An \code{R6Class} generator object
#' @field adm0Code  integer [optional]
#' @field adm0Name  character [optional]
#' @field adm1Code  integer [optional]
#' @field adm1Name  character [optional]
#' @field adm2Code  integer [optional]
#' @field adm2Name  character [optional]
#' @field baseXlsFormID  integer [optional]
#' @field baseXlsFormName  character [optional]
#' @field dimensionID  integer [optional]
#' @field dimensionName  character [optional]
#' @field endDate  character [optional]
#' @field levelID  integer [optional]
#' @field levelName  character [optional]
#' @field marketID  integer [optional]
#' @field marketLatitude  numeric [optional]
#' @field marketLongitude  numeric [optional]
#' @field marketName  character [optional]
#' @field outputValue  numeric [optional]
#' @field regionalBureauID  integer [optional]
#' @field regionalBureauName  character [optional]
#' @field startDate The Id of the Survey status character [optional]
#' @field surveyID The Id of the Survey integer [optional]
#' @field tradersSampleSize  integer [optional]
#' @field variableID  integer [optional]
#' @field variableLabel  character [optional]
#' @field variableName  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MFIProcessedDataDTO <- R6::R6Class(
  "MFIProcessedDataDTO",
  inherit = null<String, AnyType>,
  public = list(
    `adm0Code` = NULL,
    `adm0Name` = NULL,
    `adm1Code` = NULL,
    `adm1Name` = NULL,
    `adm2Code` = NULL,
    `adm2Name` = NULL,
    `baseXlsFormID` = NULL,
    `baseXlsFormName` = NULL,
    `dimensionID` = NULL,
    `dimensionName` = NULL,
    `endDate` = NULL,
    `levelID` = NULL,
    `levelName` = NULL,
    `marketID` = NULL,
    `marketLatitude` = NULL,
    `marketLongitude` = NULL,
    `marketName` = NULL,
    `outputValue` = NULL,
    `regionalBureauID` = NULL,
    `regionalBureauName` = NULL,
    `startDate` = NULL,
    `surveyID` = NULL,
    `tradersSampleSize` = NULL,
    `variableID` = NULL,
    `variableLabel` = NULL,
    `variableName` = NULL,
    `_field_list` = c("adm0Code", "adm0Name", "adm1Code", "adm1Name", "adm2Code", "adm2Name", "baseXlsFormID", "baseXlsFormName", "dimensionID", "dimensionName", "endDate", "levelID", "levelName", "marketID", "marketLatitude", "marketLongitude", "marketName", "outputValue", "regionalBureauID", "regionalBureauName", "startDate", "surveyID", "tradersSampleSize", "variableID", "variableLabel", "variableName"),
    `additional_properties` = list(),
    #' Initialize a new MFIProcessedDataDTO class.
    #'
    #' @description
    #' Initialize a new MFIProcessedDataDTO class.
    #'
    #' @param adm0Code adm0Code
    #' @param adm0Name adm0Name
    #' @param adm1Code adm1Code
    #' @param adm1Name adm1Name
    #' @param adm2Code adm2Code
    #' @param adm2Name adm2Name
    #' @param baseXlsFormID baseXlsFormID
    #' @param baseXlsFormName baseXlsFormName
    #' @param dimensionID dimensionID
    #' @param dimensionName dimensionName
    #' @param endDate endDate
    #' @param levelID levelID
    #' @param levelName levelName
    #' @param marketID marketID
    #' @param marketLatitude marketLatitude
    #' @param marketLongitude marketLongitude
    #' @param marketName marketName
    #' @param outputValue outputValue
    #' @param regionalBureauID regionalBureauID
    #' @param regionalBureauName regionalBureauName
    #' @param startDate The Id of the Survey status
    #' @param surveyID The Id of the Survey
    #' @param tradersSampleSize tradersSampleSize
    #' @param variableID variableID
    #' @param variableLabel variableLabel
    #' @param variableName variableName
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`adm0Code` = NULL, `adm0Name` = NULL, `adm1Code` = NULL, `adm1Name` = NULL, `adm2Code` = NULL, `adm2Name` = NULL, `baseXlsFormID` = NULL, `baseXlsFormName` = NULL, `dimensionID` = NULL, `dimensionName` = NULL, `endDate` = NULL, `levelID` = NULL, `levelName` = NULL, `marketID` = NULL, `marketLatitude` = NULL, `marketLongitude` = NULL, `marketName` = NULL, `outputValue` = NULL, `regionalBureauID` = NULL, `regionalBureauName` = NULL, `startDate` = NULL, `surveyID` = NULL, `tradersSampleSize` = NULL, `variableID` = NULL, `variableLabel` = NULL, `variableName` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`adm0Code`)) {
        if (!(is.numeric(`adm0Code`) && length(`adm0Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm0Code`. Must be an integer:", `adm0Code`))
        }
        self$`adm0Code` <- `adm0Code`
      }
      if (!is.null(`adm0Name`)) {
        if (!(is.character(`adm0Name`) && length(`adm0Name`) == 1)) {
          stop(paste("Error! Invalid data for `adm0Name`. Must be a string:", `adm0Name`))
        }
        self$`adm0Name` <- `adm0Name`
      }
      if (!is.null(`adm1Code`)) {
        if (!(is.numeric(`adm1Code`) && length(`adm1Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm1Code`. Must be an integer:", `adm1Code`))
        }
        self$`adm1Code` <- `adm1Code`
      }
      if (!is.null(`adm1Name`)) {
        if (!(is.character(`adm1Name`) && length(`adm1Name`) == 1)) {
          stop(paste("Error! Invalid data for `adm1Name`. Must be a string:", `adm1Name`))
        }
        self$`adm1Name` <- `adm1Name`
      }
      if (!is.null(`adm2Code`)) {
        if (!(is.numeric(`adm2Code`) && length(`adm2Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm2Code`. Must be an integer:", `adm2Code`))
        }
        self$`adm2Code` <- `adm2Code`
      }
      if (!is.null(`adm2Name`)) {
        if (!(is.character(`adm2Name`) && length(`adm2Name`) == 1)) {
          stop(paste("Error! Invalid data for `adm2Name`. Must be a string:", `adm2Name`))
        }
        self$`adm2Name` <- `adm2Name`
      }
      if (!is.null(`baseXlsFormID`)) {
        if (!(is.numeric(`baseXlsFormID`) && length(`baseXlsFormID`) == 1)) {
          stop(paste("Error! Invalid data for `baseXlsFormID`. Must be an integer:", `baseXlsFormID`))
        }
        self$`baseXlsFormID` <- `baseXlsFormID`
      }
      if (!is.null(`baseXlsFormName`)) {
        if (!(is.character(`baseXlsFormName`) && length(`baseXlsFormName`) == 1)) {
          stop(paste("Error! Invalid data for `baseXlsFormName`. Must be a string:", `baseXlsFormName`))
        }
        self$`baseXlsFormName` <- `baseXlsFormName`
      }
      if (!is.null(`dimensionID`)) {
        if (!(is.numeric(`dimensionID`) && length(`dimensionID`) == 1)) {
          stop(paste("Error! Invalid data for `dimensionID`. Must be an integer:", `dimensionID`))
        }
        self$`dimensionID` <- `dimensionID`
      }
      if (!is.null(`dimensionName`)) {
        if (!(is.character(`dimensionName`) && length(`dimensionName`) == 1)) {
          stop(paste("Error! Invalid data for `dimensionName`. Must be a string:", `dimensionName`))
        }
        self$`dimensionName` <- `dimensionName`
      }
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`levelID`)) {
        if (!(is.numeric(`levelID`) && length(`levelID`) == 1)) {
          stop(paste("Error! Invalid data for `levelID`. Must be an integer:", `levelID`))
        }
        self$`levelID` <- `levelID`
      }
      if (!is.null(`levelName`)) {
        if (!(is.character(`levelName`) && length(`levelName`) == 1)) {
          stop(paste("Error! Invalid data for `levelName`. Must be a string:", `levelName`))
        }
        self$`levelName` <- `levelName`
      }
      if (!is.null(`marketID`)) {
        if (!(is.numeric(`marketID`) && length(`marketID`) == 1)) {
          stop(paste("Error! Invalid data for `marketID`. Must be an integer:", `marketID`))
        }
        self$`marketID` <- `marketID`
      }
      if (!is.null(`marketLatitude`)) {
        if (!(is.numeric(`marketLatitude`) && length(`marketLatitude`) == 1)) {
          stop(paste("Error! Invalid data for `marketLatitude`. Must be a number:", `marketLatitude`))
        }
        self$`marketLatitude` <- `marketLatitude`
      }
      if (!is.null(`marketLongitude`)) {
        if (!(is.numeric(`marketLongitude`) && length(`marketLongitude`) == 1)) {
          stop(paste("Error! Invalid data for `marketLongitude`. Must be a number:", `marketLongitude`))
        }
        self$`marketLongitude` <- `marketLongitude`
      }
      if (!is.null(`marketName`)) {
        if (!(is.character(`marketName`) && length(`marketName`) == 1)) {
          stop(paste("Error! Invalid data for `marketName`. Must be a string:", `marketName`))
        }
        self$`marketName` <- `marketName`
      }
      if (!is.null(`outputValue`)) {
        if (!(is.numeric(`outputValue`) && length(`outputValue`) == 1)) {
          stop(paste("Error! Invalid data for `outputValue`. Must be a number:", `outputValue`))
        }
        self$`outputValue` <- `outputValue`
      }
      if (!is.null(`regionalBureauID`)) {
        if (!(is.numeric(`regionalBureauID`) && length(`regionalBureauID`) == 1)) {
          stop(paste("Error! Invalid data for `regionalBureauID`. Must be an integer:", `regionalBureauID`))
        }
        self$`regionalBureauID` <- `regionalBureauID`
      }
      if (!is.null(`regionalBureauName`)) {
        if (!(is.character(`regionalBureauName`) && length(`regionalBureauName`) == 1)) {
          stop(paste("Error! Invalid data for `regionalBureauName`. Must be a string:", `regionalBureauName`))
        }
        self$`regionalBureauName` <- `regionalBureauName`
      }
      if (!is.null(`startDate`)) {
        if (!is.character(`startDate`)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`surveyID`)) {
        if (!(is.numeric(`surveyID`) && length(`surveyID`) == 1)) {
          stop(paste("Error! Invalid data for `surveyID`. Must be an integer:", `surveyID`))
        }
        self$`surveyID` <- `surveyID`
      }
      if (!is.null(`tradersSampleSize`)) {
        if (!(is.numeric(`tradersSampleSize`) && length(`tradersSampleSize`) == 1)) {
          stop(paste("Error! Invalid data for `tradersSampleSize`. Must be an integer:", `tradersSampleSize`))
        }
        self$`tradersSampleSize` <- `tradersSampleSize`
      }
      if (!is.null(`variableID`)) {
        if (!(is.numeric(`variableID`) && length(`variableID`) == 1)) {
          stop(paste("Error! Invalid data for `variableID`. Must be an integer:", `variableID`))
        }
        self$`variableID` <- `variableID`
      }
      if (!is.null(`variableLabel`)) {
        if (!(is.character(`variableLabel`) && length(`variableLabel`) == 1)) {
          stop(paste("Error! Invalid data for `variableLabel`. Must be a string:", `variableLabel`))
        }
        self$`variableLabel` <- `variableLabel`
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
    #' @return MFIProcessedDataDTO in JSON format
    #' @export
    toJSON = function() {
      MFIProcessedDataDTOObject <- list()
      if (!is.null(self$`adm0Code`)) {
        MFIProcessedDataDTOObject[["adm0Code"]] <-
          self$`adm0Code`
      }
      if (!is.null(self$`adm0Name`)) {
        MFIProcessedDataDTOObject[["adm0Name"]] <-
          self$`adm0Name`
      }
      if (!is.null(self$`adm1Code`)) {
        MFIProcessedDataDTOObject[["adm1Code"]] <-
          self$`adm1Code`
      }
      if (!is.null(self$`adm1Name`)) {
        MFIProcessedDataDTOObject[["adm1Name"]] <-
          self$`adm1Name`
      }
      if (!is.null(self$`adm2Code`)) {
        MFIProcessedDataDTOObject[["adm2Code"]] <-
          self$`adm2Code`
      }
      if (!is.null(self$`adm2Name`)) {
        MFIProcessedDataDTOObject[["adm2Name"]] <-
          self$`adm2Name`
      }
      if (!is.null(self$`baseXlsFormID`)) {
        MFIProcessedDataDTOObject[["baseXlsFormID"]] <-
          self$`baseXlsFormID`
      }
      if (!is.null(self$`baseXlsFormName`)) {
        MFIProcessedDataDTOObject[["baseXlsFormName"]] <-
          self$`baseXlsFormName`
      }
      if (!is.null(self$`dimensionID`)) {
        MFIProcessedDataDTOObject[["dimensionID"]] <-
          self$`dimensionID`
      }
      if (!is.null(self$`dimensionName`)) {
        MFIProcessedDataDTOObject[["dimensionName"]] <-
          self$`dimensionName`
      }
      if (!is.null(self$`endDate`)) {
        MFIProcessedDataDTOObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`levelID`)) {
        MFIProcessedDataDTOObject[["levelID"]] <-
          self$`levelID`
      }
      if (!is.null(self$`levelName`)) {
        MFIProcessedDataDTOObject[["levelName"]] <-
          self$`levelName`
      }
      if (!is.null(self$`marketID`)) {
        MFIProcessedDataDTOObject[["marketID"]] <-
          self$`marketID`
      }
      if (!is.null(self$`marketLatitude`)) {
        MFIProcessedDataDTOObject[["marketLatitude"]] <-
          self$`marketLatitude`
      }
      if (!is.null(self$`marketLongitude`)) {
        MFIProcessedDataDTOObject[["marketLongitude"]] <-
          self$`marketLongitude`
      }
      if (!is.null(self$`marketName`)) {
        MFIProcessedDataDTOObject[["marketName"]] <-
          self$`marketName`
      }
      if (!is.null(self$`outputValue`)) {
        MFIProcessedDataDTOObject[["outputValue"]] <-
          self$`outputValue`
      }
      if (!is.null(self$`regionalBureauID`)) {
        MFIProcessedDataDTOObject[["regionalBureauID"]] <-
          self$`regionalBureauID`
      }
      if (!is.null(self$`regionalBureauName`)) {
        MFIProcessedDataDTOObject[["regionalBureauName"]] <-
          self$`regionalBureauName`
      }
      if (!is.null(self$`startDate`)) {
        MFIProcessedDataDTOObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`surveyID`)) {
        MFIProcessedDataDTOObject[["surveyID"]] <-
          self$`surveyID`
      }
      if (!is.null(self$`tradersSampleSize`)) {
        MFIProcessedDataDTOObject[["tradersSampleSize"]] <-
          self$`tradersSampleSize`
      }
      if (!is.null(self$`variableID`)) {
        MFIProcessedDataDTOObject[["variableID"]] <-
          self$`variableID`
      }
      if (!is.null(self$`variableLabel`)) {
        MFIProcessedDataDTOObject[["variableLabel"]] <-
          self$`variableLabel`
      }
      if (!is.null(self$`variableName`)) {
        MFIProcessedDataDTOObject[["variableName"]] <-
          self$`variableName`
      }
      for (key in names(self$additional_properties)) {
        MFIProcessedDataDTOObject[[key]] <- self$additional_properties[[key]]
      }

      MFIProcessedDataDTOObject
    },
    #' Deserialize JSON string into an instance of MFIProcessedDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of MFIProcessedDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of MFIProcessedDataDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`adm0Code`)) {
        self$`adm0Code` <- this_object$`adm0Code`
      }
      if (!is.null(this_object$`adm0Name`)) {
        self$`adm0Name` <- this_object$`adm0Name`
      }
      if (!is.null(this_object$`adm1Code`)) {
        self$`adm1Code` <- this_object$`adm1Code`
      }
      if (!is.null(this_object$`adm1Name`)) {
        self$`adm1Name` <- this_object$`adm1Name`
      }
      if (!is.null(this_object$`adm2Code`)) {
        self$`adm2Code` <- this_object$`adm2Code`
      }
      if (!is.null(this_object$`adm2Name`)) {
        self$`adm2Name` <- this_object$`adm2Name`
      }
      if (!is.null(this_object$`baseXlsFormID`)) {
        self$`baseXlsFormID` <- this_object$`baseXlsFormID`
      }
      if (!is.null(this_object$`baseXlsFormName`)) {
        self$`baseXlsFormName` <- this_object$`baseXlsFormName`
      }
      if (!is.null(this_object$`dimensionID`)) {
        self$`dimensionID` <- this_object$`dimensionID`
      }
      if (!is.null(this_object$`dimensionName`)) {
        self$`dimensionName` <- this_object$`dimensionName`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`levelID`)) {
        self$`levelID` <- this_object$`levelID`
      }
      if (!is.null(this_object$`levelName`)) {
        self$`levelName` <- this_object$`levelName`
      }
      if (!is.null(this_object$`marketID`)) {
        self$`marketID` <- this_object$`marketID`
      }
      if (!is.null(this_object$`marketLatitude`)) {
        self$`marketLatitude` <- this_object$`marketLatitude`
      }
      if (!is.null(this_object$`marketLongitude`)) {
        self$`marketLongitude` <- this_object$`marketLongitude`
      }
      if (!is.null(this_object$`marketName`)) {
        self$`marketName` <- this_object$`marketName`
      }
      if (!is.null(this_object$`outputValue`)) {
        self$`outputValue` <- this_object$`outputValue`
      }
      if (!is.null(this_object$`regionalBureauID`)) {
        self$`regionalBureauID` <- this_object$`regionalBureauID`
      }
      if (!is.null(this_object$`regionalBureauName`)) {
        self$`regionalBureauName` <- this_object$`regionalBureauName`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`surveyID`)) {
        self$`surveyID` <- this_object$`surveyID`
      }
      if (!is.null(this_object$`tradersSampleSize`)) {
        self$`tradersSampleSize` <- this_object$`tradersSampleSize`
      }
      if (!is.null(this_object$`variableID`)) {
        self$`variableID` <- this_object$`variableID`
      }
      if (!is.null(this_object$`variableLabel`)) {
        self$`variableLabel` <- this_object$`variableLabel`
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
    #' @return MFIProcessedDataDTO in JSON format
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
        if (!is.null(self$`adm0Name`)) {
          sprintf(
          '"adm0Name":
            "%s"
                    ',
          self$`adm0Name`
          )
        },
        if (!is.null(self$`adm1Code`)) {
          sprintf(
          '"adm1Code":
            %d
                    ',
          self$`adm1Code`
          )
        },
        if (!is.null(self$`adm1Name`)) {
          sprintf(
          '"adm1Name":
            "%s"
                    ',
          self$`adm1Name`
          )
        },
        if (!is.null(self$`adm2Code`)) {
          sprintf(
          '"adm2Code":
            %d
                    ',
          self$`adm2Code`
          )
        },
        if (!is.null(self$`adm2Name`)) {
          sprintf(
          '"adm2Name":
            "%s"
                    ',
          self$`adm2Name`
          )
        },
        if (!is.null(self$`baseXlsFormID`)) {
          sprintf(
          '"baseXlsFormID":
            %d
                    ',
          self$`baseXlsFormID`
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
        if (!is.null(self$`dimensionID`)) {
          sprintf(
          '"dimensionID":
            %d
                    ',
          self$`dimensionID`
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
        if (!is.null(self$`endDate`)) {
          sprintf(
          '"endDate":
            "%s"
                    ',
          self$`endDate`
          )
        },
        if (!is.null(self$`levelID`)) {
          sprintf(
          '"levelID":
            %d
                    ',
          self$`levelID`
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
        if (!is.null(self$`marketID`)) {
          sprintf(
          '"marketID":
            %d
                    ',
          self$`marketID`
          )
        },
        if (!is.null(self$`marketLatitude`)) {
          sprintf(
          '"marketLatitude":
            %d
                    ',
          self$`marketLatitude`
          )
        },
        if (!is.null(self$`marketLongitude`)) {
          sprintf(
          '"marketLongitude":
            %d
                    ',
          self$`marketLongitude`
          )
        },
        if (!is.null(self$`marketName`)) {
          sprintf(
          '"marketName":
            "%s"
                    ',
          self$`marketName`
          )
        },
        if (!is.null(self$`outputValue`)) {
          sprintf(
          '"outputValue":
            %d
                    ',
          self$`outputValue`
          )
        },
        if (!is.null(self$`regionalBureauID`)) {
          sprintf(
          '"regionalBureauID":
            %d
                    ',
          self$`regionalBureauID`
          )
        },
        if (!is.null(self$`regionalBureauName`)) {
          sprintf(
          '"regionalBureauName":
            "%s"
                    ',
          self$`regionalBureauName`
          )
        },
        if (!is.null(self$`startDate`)) {
          sprintf(
          '"startDate":
            "%s"
                    ',
          self$`startDate`
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
        if (!is.null(self$`tradersSampleSize`)) {
          sprintf(
          '"tradersSampleSize":
            %d
                    ',
          self$`tradersSampleSize`
          )
        },
        if (!is.null(self$`variableID`)) {
          sprintf(
          '"variableID":
            %d
                    ',
          self$`variableID`
          )
        },
        if (!is.null(self$`variableLabel`)) {
          sprintf(
          '"variableLabel":
            "%s"
                    ',
          self$`variableLabel`
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
    #' Deserialize JSON string into an instance of MFIProcessedDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of MFIProcessedDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of MFIProcessedDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`adm0Code` <- this_object$`adm0Code`
      self$`adm0Name` <- this_object$`adm0Name`
      self$`adm1Code` <- this_object$`adm1Code`
      self$`adm1Name` <- this_object$`adm1Name`
      self$`adm2Code` <- this_object$`adm2Code`
      self$`adm2Name` <- this_object$`adm2Name`
      self$`baseXlsFormID` <- this_object$`baseXlsFormID`
      self$`baseXlsFormName` <- this_object$`baseXlsFormName`
      self$`dimensionID` <- this_object$`dimensionID`
      self$`dimensionName` <- this_object$`dimensionName`
      self$`endDate` <- this_object$`endDate`
      self$`levelID` <- this_object$`levelID`
      self$`levelName` <- this_object$`levelName`
      self$`marketID` <- this_object$`marketID`
      self$`marketLatitude` <- this_object$`marketLatitude`
      self$`marketLongitude` <- this_object$`marketLongitude`
      self$`marketName` <- this_object$`marketName`
      self$`outputValue` <- this_object$`outputValue`
      self$`regionalBureauID` <- this_object$`regionalBureauID`
      self$`regionalBureauName` <- this_object$`regionalBureauName`
      self$`startDate` <- this_object$`startDate`
      self$`surveyID` <- this_object$`surveyID`
      self$`tradersSampleSize` <- this_object$`tradersSampleSize`
      self$`variableID` <- this_object$`variableID`
      self$`variableLabel` <- this_object$`variableLabel`
      self$`variableName` <- this_object$`variableName`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to MFIProcessedDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to MFIProcessedDataDTO and throw an exception if invalid
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
    #' @return String representation of MFIProcessedDataDTO
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
# MFIProcessedDataDTO$unlock()
#
## Below is an example to define the print function
# MFIProcessedDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MFIProcessedDataDTO$lock()

