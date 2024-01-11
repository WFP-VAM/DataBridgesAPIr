#' Create a new RpmeAssessment
#'
#' @description
#' RpmeAssessment Class
#'
#' @docType class
#' @title RpmeAssessment
#' @description RpmeAssessment Class
#' @format An \code{R6Class} generator object
#' @field adm0Code  integer [optional]
#' @field adm0CodeDOTS  character [optional]
#' @field adm1Code  integer [optional]
#' @field adm1CodeDOTS  character [optional]
#' @field adm2Code  integer [optional]
#' @field adm2CodeDOTS  character [optional]
#' @field assessmentDate  character [optional]
#' @field benSevCntrDev  character [optional]
#' @field beneficiariesScoreTbu  character [optional]
#' @field marketId  integer [optional]
#' @field nbBeneficiariesInterviewed  integer [optional]
#' @field outputValues  list(\link{RpmeOutputValues}) [optional]
#' @field priceScoreTbd  character [optional]
#' @field priceScoreTbu  character [optional]
#' @field sevCntrDev  character [optional]
#' @field shLatitude  numeric [optional]
#' @field shLongitude  numeric [optional]
#' @field shopId  integer [optional]
#' @field surveyId  integer [optional]
#' @field trdName  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RpmeAssessment <- R6::R6Class(
  "RpmeAssessment",
  inherit = null<String, AnyType>,
  public = list(
    `adm0Code` = NULL,
    `adm0CodeDOTS` = NULL,
    `adm1Code` = NULL,
    `adm1CodeDOTS` = NULL,
    `adm2Code` = NULL,
    `adm2CodeDOTS` = NULL,
    `assessmentDate` = NULL,
    `benSevCntrDev` = NULL,
    `beneficiariesScoreTbu` = NULL,
    `marketId` = NULL,
    `nbBeneficiariesInterviewed` = NULL,
    `outputValues` = NULL,
    `priceScoreTbd` = NULL,
    `priceScoreTbu` = NULL,
    `sevCntrDev` = NULL,
    `shLatitude` = NULL,
    `shLongitude` = NULL,
    `shopId` = NULL,
    `surveyId` = NULL,
    `trdName` = NULL,
    `_field_list` = c("adm0Code", "adm0CodeDOTS", "adm1Code", "adm1CodeDOTS", "adm2Code", "adm2CodeDOTS", "assessmentDate", "benSevCntrDev", "beneficiariesScoreTbu", "marketId", "nbBeneficiariesInterviewed", "outputValues", "priceScoreTbd", "priceScoreTbu", "sevCntrDev", "shLatitude", "shLongitude", "shopId", "surveyId", "trdName"),
    `additional_properties` = list(),
    #' Initialize a new RpmeAssessment class.
    #'
    #' @description
    #' Initialize a new RpmeAssessment class.
    #'
    #' @param adm0Code adm0Code
    #' @param adm0CodeDOTS adm0CodeDOTS
    #' @param adm1Code adm1Code
    #' @param adm1CodeDOTS adm1CodeDOTS
    #' @param adm2Code adm2Code
    #' @param adm2CodeDOTS adm2CodeDOTS
    #' @param assessmentDate assessmentDate
    #' @param benSevCntrDev benSevCntrDev
    #' @param beneficiariesScoreTbu beneficiariesScoreTbu
    #' @param marketId marketId
    #' @param nbBeneficiariesInterviewed nbBeneficiariesInterviewed
    #' @param outputValues outputValues
    #' @param priceScoreTbd priceScoreTbd
    #' @param priceScoreTbu priceScoreTbu
    #' @param sevCntrDev sevCntrDev
    #' @param shLatitude shLatitude
    #' @param shLongitude shLongitude
    #' @param shopId shopId
    #' @param surveyId surveyId
    #' @param trdName trdName
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`adm0Code` = NULL, `adm0CodeDOTS` = NULL, `adm1Code` = NULL, `adm1CodeDOTS` = NULL, `adm2Code` = NULL, `adm2CodeDOTS` = NULL, `assessmentDate` = NULL, `benSevCntrDev` = NULL, `beneficiariesScoreTbu` = NULL, `marketId` = NULL, `nbBeneficiariesInterviewed` = NULL, `outputValues` = NULL, `priceScoreTbd` = NULL, `priceScoreTbu` = NULL, `sevCntrDev` = NULL, `shLatitude` = NULL, `shLongitude` = NULL, `shopId` = NULL, `surveyId` = NULL, `trdName` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`adm0Code`)) {
        if (!(is.numeric(`adm0Code`) && length(`adm0Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm0Code`. Must be an integer:", `adm0Code`))
        }
        self$`adm0Code` <- `adm0Code`
      }
      if (!is.null(`adm0CodeDOTS`)) {
        if (!(is.character(`adm0CodeDOTS`) && length(`adm0CodeDOTS`) == 1)) {
          stop(paste("Error! Invalid data for `adm0CodeDOTS`. Must be a string:", `adm0CodeDOTS`))
        }
        self$`adm0CodeDOTS` <- `adm0CodeDOTS`
      }
      if (!is.null(`adm1Code`)) {
        if (!(is.numeric(`adm1Code`) && length(`adm1Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm1Code`. Must be an integer:", `adm1Code`))
        }
        self$`adm1Code` <- `adm1Code`
      }
      if (!is.null(`adm1CodeDOTS`)) {
        if (!(is.character(`adm1CodeDOTS`) && length(`adm1CodeDOTS`) == 1)) {
          stop(paste("Error! Invalid data for `adm1CodeDOTS`. Must be a string:", `adm1CodeDOTS`))
        }
        self$`adm1CodeDOTS` <- `adm1CodeDOTS`
      }
      if (!is.null(`adm2Code`)) {
        if (!(is.numeric(`adm2Code`) && length(`adm2Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm2Code`. Must be an integer:", `adm2Code`))
        }
        self$`adm2Code` <- `adm2Code`
      }
      if (!is.null(`adm2CodeDOTS`)) {
        if (!(is.character(`adm2CodeDOTS`) && length(`adm2CodeDOTS`) == 1)) {
          stop(paste("Error! Invalid data for `adm2CodeDOTS`. Must be a string:", `adm2CodeDOTS`))
        }
        self$`adm2CodeDOTS` <- `adm2CodeDOTS`
      }
      if (!is.null(`assessmentDate`)) {
        if (!is.character(`assessmentDate`)) {
          stop(paste("Error! Invalid data for `assessmentDate`. Must be a string:", `assessmentDate`))
        }
        self$`assessmentDate` <- `assessmentDate`
      }
      if (!is.null(`benSevCntrDev`)) {
        if (!(is.character(`benSevCntrDev`) && length(`benSevCntrDev`) == 1)) {
          stop(paste("Error! Invalid data for `benSevCntrDev`. Must be a string:", `benSevCntrDev`))
        }
        self$`benSevCntrDev` <- `benSevCntrDev`
      }
      if (!is.null(`beneficiariesScoreTbu`)) {
        if (!(is.logical(`beneficiariesScoreTbu`) && length(`beneficiariesScoreTbu`) == 1)) {
          stop(paste("Error! Invalid data for `beneficiariesScoreTbu`. Must be a boolean:", `beneficiariesScoreTbu`))
        }
        self$`beneficiariesScoreTbu` <- `beneficiariesScoreTbu`
      }
      if (!is.null(`marketId`)) {
        if (!(is.numeric(`marketId`) && length(`marketId`) == 1)) {
          stop(paste("Error! Invalid data for `marketId`. Must be an integer:", `marketId`))
        }
        self$`marketId` <- `marketId`
      }
      if (!is.null(`nbBeneficiariesInterviewed`)) {
        if (!(is.numeric(`nbBeneficiariesInterviewed`) && length(`nbBeneficiariesInterviewed`) == 1)) {
          stop(paste("Error! Invalid data for `nbBeneficiariesInterviewed`. Must be an integer:", `nbBeneficiariesInterviewed`))
        }
        self$`nbBeneficiariesInterviewed` <- `nbBeneficiariesInterviewed`
      }
      if (!is.null(`outputValues`)) {
        stopifnot(is.vector(`outputValues`), length(`outputValues`) != 0)
        sapply(`outputValues`, function(x) stopifnot(R6::is.R6(x)))
        self$`outputValues` <- `outputValues`
      }
      if (!is.null(`priceScoreTbd`)) {
        if (!(is.logical(`priceScoreTbd`) && length(`priceScoreTbd`) == 1)) {
          stop(paste("Error! Invalid data for `priceScoreTbd`. Must be a boolean:", `priceScoreTbd`))
        }
        self$`priceScoreTbd` <- `priceScoreTbd`
      }
      if (!is.null(`priceScoreTbu`)) {
        if (!(is.logical(`priceScoreTbu`) && length(`priceScoreTbu`) == 1)) {
          stop(paste("Error! Invalid data for `priceScoreTbu`. Must be a boolean:", `priceScoreTbu`))
        }
        self$`priceScoreTbu` <- `priceScoreTbu`
      }
      if (!is.null(`sevCntrDev`)) {
        if (!(is.character(`sevCntrDev`) && length(`sevCntrDev`) == 1)) {
          stop(paste("Error! Invalid data for `sevCntrDev`. Must be a string:", `sevCntrDev`))
        }
        self$`sevCntrDev` <- `sevCntrDev`
      }
      if (!is.null(`shLatitude`)) {
        if (!(is.numeric(`shLatitude`) && length(`shLatitude`) == 1)) {
          stop(paste("Error! Invalid data for `shLatitude`. Must be a number:", `shLatitude`))
        }
        self$`shLatitude` <- `shLatitude`
      }
      if (!is.null(`shLongitude`)) {
        if (!(is.numeric(`shLongitude`) && length(`shLongitude`) == 1)) {
          stop(paste("Error! Invalid data for `shLongitude`. Must be a number:", `shLongitude`))
        }
        self$`shLongitude` <- `shLongitude`
      }
      if (!is.null(`shopId`)) {
        if (!(is.numeric(`shopId`) && length(`shopId`) == 1)) {
          stop(paste("Error! Invalid data for `shopId`. Must be an integer:", `shopId`))
        }
        self$`shopId` <- `shopId`
      }
      if (!is.null(`surveyId`)) {
        if (!(is.numeric(`surveyId`) && length(`surveyId`) == 1)) {
          stop(paste("Error! Invalid data for `surveyId`. Must be an integer:", `surveyId`))
        }
        self$`surveyId` <- `surveyId`
      }
      if (!is.null(`trdName`)) {
        if (!(is.character(`trdName`) && length(`trdName`) == 1)) {
          stop(paste("Error! Invalid data for `trdName`. Must be a string:", `trdName`))
        }
        self$`trdName` <- `trdName`
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
    #' @return RpmeAssessment in JSON format
    #' @export
    toJSON = function() {
      RpmeAssessmentObject <- list()
      if (!is.null(self$`adm0Code`)) {
        RpmeAssessmentObject[["adm0Code"]] <-
          self$`adm0Code`
      }
      if (!is.null(self$`adm0CodeDOTS`)) {
        RpmeAssessmentObject[["adm0CodeDOTS"]] <-
          self$`adm0CodeDOTS`
      }
      if (!is.null(self$`adm1Code`)) {
        RpmeAssessmentObject[["adm1Code"]] <-
          self$`adm1Code`
      }
      if (!is.null(self$`adm1CodeDOTS`)) {
        RpmeAssessmentObject[["adm1CodeDOTS"]] <-
          self$`adm1CodeDOTS`
      }
      if (!is.null(self$`adm2Code`)) {
        RpmeAssessmentObject[["adm2Code"]] <-
          self$`adm2Code`
      }
      if (!is.null(self$`adm2CodeDOTS`)) {
        RpmeAssessmentObject[["adm2CodeDOTS"]] <-
          self$`adm2CodeDOTS`
      }
      if (!is.null(self$`assessmentDate`)) {
        RpmeAssessmentObject[["assessmentDate"]] <-
          self$`assessmentDate`
      }
      if (!is.null(self$`benSevCntrDev`)) {
        RpmeAssessmentObject[["benSevCntrDev"]] <-
          self$`benSevCntrDev`
      }
      if (!is.null(self$`beneficiariesScoreTbu`)) {
        RpmeAssessmentObject[["beneficiariesScoreTbu"]] <-
          self$`beneficiariesScoreTbu`
      }
      if (!is.null(self$`marketId`)) {
        RpmeAssessmentObject[["marketId"]] <-
          self$`marketId`
      }
      if (!is.null(self$`nbBeneficiariesInterviewed`)) {
        RpmeAssessmentObject[["nbBeneficiariesInterviewed"]] <-
          self$`nbBeneficiariesInterviewed`
      }
      if (!is.null(self$`outputValues`)) {
        RpmeAssessmentObject[["outputValues"]] <-
          lapply(self$`outputValues`, function(x) x$toJSON())
      }
      if (!is.null(self$`priceScoreTbd`)) {
        RpmeAssessmentObject[["priceScoreTbd"]] <-
          self$`priceScoreTbd`
      }
      if (!is.null(self$`priceScoreTbu`)) {
        RpmeAssessmentObject[["priceScoreTbu"]] <-
          self$`priceScoreTbu`
      }
      if (!is.null(self$`sevCntrDev`)) {
        RpmeAssessmentObject[["sevCntrDev"]] <-
          self$`sevCntrDev`
      }
      if (!is.null(self$`shLatitude`)) {
        RpmeAssessmentObject[["shLatitude"]] <-
          self$`shLatitude`
      }
      if (!is.null(self$`shLongitude`)) {
        RpmeAssessmentObject[["shLongitude"]] <-
          self$`shLongitude`
      }
      if (!is.null(self$`shopId`)) {
        RpmeAssessmentObject[["shopId"]] <-
          self$`shopId`
      }
      if (!is.null(self$`surveyId`)) {
        RpmeAssessmentObject[["surveyId"]] <-
          self$`surveyId`
      }
      if (!is.null(self$`trdName`)) {
        RpmeAssessmentObject[["trdName"]] <-
          self$`trdName`
      }
      for (key in names(self$additional_properties)) {
        RpmeAssessmentObject[[key]] <- self$additional_properties[[key]]
      }

      RpmeAssessmentObject
    },
    #' Deserialize JSON string into an instance of RpmeAssessment
    #'
    #' @description
    #' Deserialize JSON string into an instance of RpmeAssessment
    #'
    #' @param input_json the JSON input
    #' @return the instance of RpmeAssessment
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`adm0Code`)) {
        self$`adm0Code` <- this_object$`adm0Code`
      }
      if (!is.null(this_object$`adm0CodeDOTS`)) {
        self$`adm0CodeDOTS` <- this_object$`adm0CodeDOTS`
      }
      if (!is.null(this_object$`adm1Code`)) {
        self$`adm1Code` <- this_object$`adm1Code`
      }
      if (!is.null(this_object$`adm1CodeDOTS`)) {
        self$`adm1CodeDOTS` <- this_object$`adm1CodeDOTS`
      }
      if (!is.null(this_object$`adm2Code`)) {
        self$`adm2Code` <- this_object$`adm2Code`
      }
      if (!is.null(this_object$`adm2CodeDOTS`)) {
        self$`adm2CodeDOTS` <- this_object$`adm2CodeDOTS`
      }
      if (!is.null(this_object$`assessmentDate`)) {
        self$`assessmentDate` <- this_object$`assessmentDate`
      }
      if (!is.null(this_object$`benSevCntrDev`)) {
        self$`benSevCntrDev` <- this_object$`benSevCntrDev`
      }
      if (!is.null(this_object$`beneficiariesScoreTbu`)) {
        self$`beneficiariesScoreTbu` <- this_object$`beneficiariesScoreTbu`
      }
      if (!is.null(this_object$`marketId`)) {
        self$`marketId` <- this_object$`marketId`
      }
      if (!is.null(this_object$`nbBeneficiariesInterviewed`)) {
        self$`nbBeneficiariesInterviewed` <- this_object$`nbBeneficiariesInterviewed`
      }
      if (!is.null(this_object$`outputValues`)) {
        self$`outputValues` <- ApiClient$new()$deserializeObj(this_object$`outputValues`, "array[RpmeOutputValues]", loadNamespace("DataBridgesAPIr"))
      }
      if (!is.null(this_object$`priceScoreTbd`)) {
        self$`priceScoreTbd` <- this_object$`priceScoreTbd`
      }
      if (!is.null(this_object$`priceScoreTbu`)) {
        self$`priceScoreTbu` <- this_object$`priceScoreTbu`
      }
      if (!is.null(this_object$`sevCntrDev`)) {
        self$`sevCntrDev` <- this_object$`sevCntrDev`
      }
      if (!is.null(this_object$`shLatitude`)) {
        self$`shLatitude` <- this_object$`shLatitude`
      }
      if (!is.null(this_object$`shLongitude`)) {
        self$`shLongitude` <- this_object$`shLongitude`
      }
      if (!is.null(this_object$`shopId`)) {
        self$`shopId` <- this_object$`shopId`
      }
      if (!is.null(this_object$`surveyId`)) {
        self$`surveyId` <- this_object$`surveyId`
      }
      if (!is.null(this_object$`trdName`)) {
        self$`trdName` <- this_object$`trdName`
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
    #' @return RpmeAssessment in JSON format
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
        if (!is.null(self$`adm0CodeDOTS`)) {
          sprintf(
          '"adm0CodeDOTS":
            "%s"
                    ',
          self$`adm0CodeDOTS`
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
        if (!is.null(self$`adm1CodeDOTS`)) {
          sprintf(
          '"adm1CodeDOTS":
            "%s"
                    ',
          self$`adm1CodeDOTS`
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
        if (!is.null(self$`adm2CodeDOTS`)) {
          sprintf(
          '"adm2CodeDOTS":
            "%s"
                    ',
          self$`adm2CodeDOTS`
          )
        },
        if (!is.null(self$`assessmentDate`)) {
          sprintf(
          '"assessmentDate":
            "%s"
                    ',
          self$`assessmentDate`
          )
        },
        if (!is.null(self$`benSevCntrDev`)) {
          sprintf(
          '"benSevCntrDev":
            "%s"
                    ',
          self$`benSevCntrDev`
          )
        },
        if (!is.null(self$`beneficiariesScoreTbu`)) {
          sprintf(
          '"beneficiariesScoreTbu":
            %s
                    ',
          tolower(self$`beneficiariesScoreTbu`)
          )
        },
        if (!is.null(self$`marketId`)) {
          sprintf(
          '"marketId":
            %d
                    ',
          self$`marketId`
          )
        },
        if (!is.null(self$`nbBeneficiariesInterviewed`)) {
          sprintf(
          '"nbBeneficiariesInterviewed":
            %d
                    ',
          self$`nbBeneficiariesInterviewed`
          )
        },
        if (!is.null(self$`outputValues`)) {
          sprintf(
          '"outputValues":
          [%s]
',
          paste(sapply(self$`outputValues`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`priceScoreTbd`)) {
          sprintf(
          '"priceScoreTbd":
            %s
                    ',
          tolower(self$`priceScoreTbd`)
          )
        },
        if (!is.null(self$`priceScoreTbu`)) {
          sprintf(
          '"priceScoreTbu":
            %s
                    ',
          tolower(self$`priceScoreTbu`)
          )
        },
        if (!is.null(self$`sevCntrDev`)) {
          sprintf(
          '"sevCntrDev":
            "%s"
                    ',
          self$`sevCntrDev`
          )
        },
        if (!is.null(self$`shLatitude`)) {
          sprintf(
          '"shLatitude":
            %d
                    ',
          self$`shLatitude`
          )
        },
        if (!is.null(self$`shLongitude`)) {
          sprintf(
          '"shLongitude":
            %d
                    ',
          self$`shLongitude`
          )
        },
        if (!is.null(self$`shopId`)) {
          sprintf(
          '"shopId":
            %d
                    ',
          self$`shopId`
          )
        },
        if (!is.null(self$`surveyId`)) {
          sprintf(
          '"surveyId":
            %d
                    ',
          self$`surveyId`
          )
        },
        if (!is.null(self$`trdName`)) {
          sprintf(
          '"trdName":
            "%s"
                    ',
          self$`trdName`
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
    #' Deserialize JSON string into an instance of RpmeAssessment
    #'
    #' @description
    #' Deserialize JSON string into an instance of RpmeAssessment
    #'
    #' @param input_json the JSON input
    #' @return the instance of RpmeAssessment
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`adm0Code` <- this_object$`adm0Code`
      self$`adm0CodeDOTS` <- this_object$`adm0CodeDOTS`
      self$`adm1Code` <- this_object$`adm1Code`
      self$`adm1CodeDOTS` <- this_object$`adm1CodeDOTS`
      self$`adm2Code` <- this_object$`adm2Code`
      self$`adm2CodeDOTS` <- this_object$`adm2CodeDOTS`
      self$`assessmentDate` <- this_object$`assessmentDate`
      self$`benSevCntrDev` <- this_object$`benSevCntrDev`
      self$`beneficiariesScoreTbu` <- this_object$`beneficiariesScoreTbu`
      self$`marketId` <- this_object$`marketId`
      self$`nbBeneficiariesInterviewed` <- this_object$`nbBeneficiariesInterviewed`
      self$`outputValues` <- ApiClient$new()$deserializeObj(this_object$`outputValues`, "array[RpmeOutputValues]", loadNamespace("DataBridgesAPIr"))
      self$`priceScoreTbd` <- this_object$`priceScoreTbd`
      self$`priceScoreTbu` <- this_object$`priceScoreTbu`
      self$`sevCntrDev` <- this_object$`sevCntrDev`
      self$`shLatitude` <- this_object$`shLatitude`
      self$`shLongitude` <- this_object$`shLongitude`
      self$`shopId` <- this_object$`shopId`
      self$`surveyId` <- this_object$`surveyId`
      self$`trdName` <- this_object$`trdName`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to RpmeAssessment
    #'
    #' @description
    #' Validate JSON input with respect to RpmeAssessment and throw an exception if invalid
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
    #' @return String representation of RpmeAssessment
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
# RpmeAssessment$unlock()
#
## Below is an example to define the print function
# RpmeAssessment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RpmeAssessment$lock()

