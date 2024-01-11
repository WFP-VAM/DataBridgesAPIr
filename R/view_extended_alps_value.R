#' Create a new ViewExtendedAlpsValue
#'
#' @description
#' ViewExtendedAlpsValue Class
#'
#' @docType class
#' @title ViewExtendedAlpsValue
#' @description ViewExtendedAlpsValue Class
#' @format An \code{R6Class} generator object
#' @field adm0Code  integer [optional]
#' @field analysisValueEstimatedPrice  numeric [optional]
#' @field analysisValuePewiValue  numeric [optional]
#' @field analysisValuePriceFlag  character [optional]
#' @field commodityID  integer [optional]
#' @field commodityName  character [optional]
#' @field commodityPriceDate  character [optional]
#' @field commodityPriceDateMonth  integer [optional]
#' @field commodityPriceDateWeek  integer [optional]
#' @field commodityPriceDateYear  integer [optional]
#' @field commodityUnitID  integer [optional]
#' @field commodityUnitName  character [optional]
#' @field countryName  character [optional]
#' @field currencyID  integer [optional]
#' @field currencyName  character [optional]
#' @field marketID  integer [optional]
#' @field marketName  character [optional]
#' @field priceTypeID  integer [optional]
#' @field priceTypeName  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ViewExtendedAlpsValue <- R6::R6Class(
  "ViewExtendedAlpsValue",
  inherit = null<String, AnyType>,
  public = list(
    `adm0Code` = NULL,
    `analysisValueEstimatedPrice` = NULL,
    `analysisValuePewiValue` = NULL,
    `analysisValuePriceFlag` = NULL,
    `commodityID` = NULL,
    `commodityName` = NULL,
    `commodityPriceDate` = NULL,
    `commodityPriceDateMonth` = NULL,
    `commodityPriceDateWeek` = NULL,
    `commodityPriceDateYear` = NULL,
    `commodityUnitID` = NULL,
    `commodityUnitName` = NULL,
    `countryName` = NULL,
    `currencyID` = NULL,
    `currencyName` = NULL,
    `marketID` = NULL,
    `marketName` = NULL,
    `priceTypeID` = NULL,
    `priceTypeName` = NULL,
    `_field_list` = c("adm0Code", "analysisValueEstimatedPrice", "analysisValuePewiValue", "analysisValuePriceFlag", "commodityID", "commodityName", "commodityPriceDate", "commodityPriceDateMonth", "commodityPriceDateWeek", "commodityPriceDateYear", "commodityUnitID", "commodityUnitName", "countryName", "currencyID", "currencyName", "marketID", "marketName", "priceTypeID", "priceTypeName"),
    `additional_properties` = list(),
    #' Initialize a new ViewExtendedAlpsValue class.
    #'
    #' @description
    #' Initialize a new ViewExtendedAlpsValue class.
    #'
    #' @param adm0Code adm0Code
    #' @param analysisValueEstimatedPrice analysisValueEstimatedPrice
    #' @param analysisValuePewiValue analysisValuePewiValue
    #' @param analysisValuePriceFlag analysisValuePriceFlag
    #' @param commodityID commodityID
    #' @param commodityName commodityName
    #' @param commodityPriceDate commodityPriceDate
    #' @param commodityPriceDateMonth commodityPriceDateMonth
    #' @param commodityPriceDateWeek commodityPriceDateWeek
    #' @param commodityPriceDateYear commodityPriceDateYear
    #' @param commodityUnitID commodityUnitID
    #' @param commodityUnitName commodityUnitName
    #' @param countryName countryName
    #' @param currencyID currencyID
    #' @param currencyName currencyName
    #' @param marketID marketID
    #' @param marketName marketName
    #' @param priceTypeID priceTypeID
    #' @param priceTypeName priceTypeName
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`adm0Code` = NULL, `analysisValueEstimatedPrice` = NULL, `analysisValuePewiValue` = NULL, `analysisValuePriceFlag` = NULL, `commodityID` = NULL, `commodityName` = NULL, `commodityPriceDate` = NULL, `commodityPriceDateMonth` = NULL, `commodityPriceDateWeek` = NULL, `commodityPriceDateYear` = NULL, `commodityUnitID` = NULL, `commodityUnitName` = NULL, `countryName` = NULL, `currencyID` = NULL, `currencyName` = NULL, `marketID` = NULL, `marketName` = NULL, `priceTypeID` = NULL, `priceTypeName` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`adm0Code`)) {
        if (!(is.numeric(`adm0Code`) && length(`adm0Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm0Code`. Must be an integer:", `adm0Code`))
        }
        self$`adm0Code` <- `adm0Code`
      }
      if (!is.null(`analysisValueEstimatedPrice`)) {
        if (!(is.numeric(`analysisValueEstimatedPrice`) && length(`analysisValueEstimatedPrice`) == 1)) {
          stop(paste("Error! Invalid data for `analysisValueEstimatedPrice`. Must be a number:", `analysisValueEstimatedPrice`))
        }
        self$`analysisValueEstimatedPrice` <- `analysisValueEstimatedPrice`
      }
      if (!is.null(`analysisValuePewiValue`)) {
        if (!(is.numeric(`analysisValuePewiValue`) && length(`analysisValuePewiValue`) == 1)) {
          stop(paste("Error! Invalid data for `analysisValuePewiValue`. Must be a number:", `analysisValuePewiValue`))
        }
        self$`analysisValuePewiValue` <- `analysisValuePewiValue`
      }
      if (!is.null(`analysisValuePriceFlag`)) {
        if (!(is.character(`analysisValuePriceFlag`) && length(`analysisValuePriceFlag`) == 1)) {
          stop(paste("Error! Invalid data for `analysisValuePriceFlag`. Must be a string:", `analysisValuePriceFlag`))
        }
        self$`analysisValuePriceFlag` <- `analysisValuePriceFlag`
      }
      if (!is.null(`commodityID`)) {
        if (!(is.numeric(`commodityID`) && length(`commodityID`) == 1)) {
          stop(paste("Error! Invalid data for `commodityID`. Must be an integer:", `commodityID`))
        }
        self$`commodityID` <- `commodityID`
      }
      if (!is.null(`commodityName`)) {
        if (!(is.character(`commodityName`) && length(`commodityName`) == 1)) {
          stop(paste("Error! Invalid data for `commodityName`. Must be a string:", `commodityName`))
        }
        self$`commodityName` <- `commodityName`
      }
      if (!is.null(`commodityPriceDate`)) {
        if (!is.character(`commodityPriceDate`)) {
          stop(paste("Error! Invalid data for `commodityPriceDate`. Must be a string:", `commodityPriceDate`))
        }
        self$`commodityPriceDate` <- `commodityPriceDate`
      }
      if (!is.null(`commodityPriceDateMonth`)) {
        if (!(is.numeric(`commodityPriceDateMonth`) && length(`commodityPriceDateMonth`) == 1)) {
          stop(paste("Error! Invalid data for `commodityPriceDateMonth`. Must be an integer:", `commodityPriceDateMonth`))
        }
        self$`commodityPriceDateMonth` <- `commodityPriceDateMonth`
      }
      if (!is.null(`commodityPriceDateWeek`)) {
        if (!(is.numeric(`commodityPriceDateWeek`) && length(`commodityPriceDateWeek`) == 1)) {
          stop(paste("Error! Invalid data for `commodityPriceDateWeek`. Must be an integer:", `commodityPriceDateWeek`))
        }
        self$`commodityPriceDateWeek` <- `commodityPriceDateWeek`
      }
      if (!is.null(`commodityPriceDateYear`)) {
        if (!(is.numeric(`commodityPriceDateYear`) && length(`commodityPriceDateYear`) == 1)) {
          stop(paste("Error! Invalid data for `commodityPriceDateYear`. Must be an integer:", `commodityPriceDateYear`))
        }
        self$`commodityPriceDateYear` <- `commodityPriceDateYear`
      }
      if (!is.null(`commodityUnitID`)) {
        if (!(is.numeric(`commodityUnitID`) && length(`commodityUnitID`) == 1)) {
          stop(paste("Error! Invalid data for `commodityUnitID`. Must be an integer:", `commodityUnitID`))
        }
        self$`commodityUnitID` <- `commodityUnitID`
      }
      if (!is.null(`commodityUnitName`)) {
        if (!(is.character(`commodityUnitName`) && length(`commodityUnitName`) == 1)) {
          stop(paste("Error! Invalid data for `commodityUnitName`. Must be a string:", `commodityUnitName`))
        }
        self$`commodityUnitName` <- `commodityUnitName`
      }
      if (!is.null(`countryName`)) {
        if (!(is.character(`countryName`) && length(`countryName`) == 1)) {
          stop(paste("Error! Invalid data for `countryName`. Must be a string:", `countryName`))
        }
        self$`countryName` <- `countryName`
      }
      if (!is.null(`currencyID`)) {
        if (!(is.numeric(`currencyID`) && length(`currencyID`) == 1)) {
          stop(paste("Error! Invalid data for `currencyID`. Must be an integer:", `currencyID`))
        }
        self$`currencyID` <- `currencyID`
      }
      if (!is.null(`currencyName`)) {
        if (!(is.character(`currencyName`) && length(`currencyName`) == 1)) {
          stop(paste("Error! Invalid data for `currencyName`. Must be a string:", `currencyName`))
        }
        self$`currencyName` <- `currencyName`
      }
      if (!is.null(`marketID`)) {
        if (!(is.numeric(`marketID`) && length(`marketID`) == 1)) {
          stop(paste("Error! Invalid data for `marketID`. Must be an integer:", `marketID`))
        }
        self$`marketID` <- `marketID`
      }
      if (!is.null(`marketName`)) {
        if (!(is.character(`marketName`) && length(`marketName`) == 1)) {
          stop(paste("Error! Invalid data for `marketName`. Must be a string:", `marketName`))
        }
        self$`marketName` <- `marketName`
      }
      if (!is.null(`priceTypeID`)) {
        if (!(is.numeric(`priceTypeID`) && length(`priceTypeID`) == 1)) {
          stop(paste("Error! Invalid data for `priceTypeID`. Must be an integer:", `priceTypeID`))
        }
        self$`priceTypeID` <- `priceTypeID`
      }
      if (!is.null(`priceTypeName`)) {
        if (!(is.character(`priceTypeName`) && length(`priceTypeName`) == 1)) {
          stop(paste("Error! Invalid data for `priceTypeName`. Must be a string:", `priceTypeName`))
        }
        self$`priceTypeName` <- `priceTypeName`
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
    #' @return ViewExtendedAlpsValue in JSON format
    #' @export
    toJSON = function() {
      ViewExtendedAlpsValueObject <- list()
      if (!is.null(self$`adm0Code`)) {
        ViewExtendedAlpsValueObject[["adm0Code"]] <-
          self$`adm0Code`
      }
      if (!is.null(self$`analysisValueEstimatedPrice`)) {
        ViewExtendedAlpsValueObject[["analysisValueEstimatedPrice"]] <-
          self$`analysisValueEstimatedPrice`
      }
      if (!is.null(self$`analysisValuePewiValue`)) {
        ViewExtendedAlpsValueObject[["analysisValuePewiValue"]] <-
          self$`analysisValuePewiValue`
      }
      if (!is.null(self$`analysisValuePriceFlag`)) {
        ViewExtendedAlpsValueObject[["analysisValuePriceFlag"]] <-
          self$`analysisValuePriceFlag`
      }
      if (!is.null(self$`commodityID`)) {
        ViewExtendedAlpsValueObject[["commodityID"]] <-
          self$`commodityID`
      }
      if (!is.null(self$`commodityName`)) {
        ViewExtendedAlpsValueObject[["commodityName"]] <-
          self$`commodityName`
      }
      if (!is.null(self$`commodityPriceDate`)) {
        ViewExtendedAlpsValueObject[["commodityPriceDate"]] <-
          self$`commodityPriceDate`
      }
      if (!is.null(self$`commodityPriceDateMonth`)) {
        ViewExtendedAlpsValueObject[["commodityPriceDateMonth"]] <-
          self$`commodityPriceDateMonth`
      }
      if (!is.null(self$`commodityPriceDateWeek`)) {
        ViewExtendedAlpsValueObject[["commodityPriceDateWeek"]] <-
          self$`commodityPriceDateWeek`
      }
      if (!is.null(self$`commodityPriceDateYear`)) {
        ViewExtendedAlpsValueObject[["commodityPriceDateYear"]] <-
          self$`commodityPriceDateYear`
      }
      if (!is.null(self$`commodityUnitID`)) {
        ViewExtendedAlpsValueObject[["commodityUnitID"]] <-
          self$`commodityUnitID`
      }
      if (!is.null(self$`commodityUnitName`)) {
        ViewExtendedAlpsValueObject[["commodityUnitName"]] <-
          self$`commodityUnitName`
      }
      if (!is.null(self$`countryName`)) {
        ViewExtendedAlpsValueObject[["countryName"]] <-
          self$`countryName`
      }
      if (!is.null(self$`currencyID`)) {
        ViewExtendedAlpsValueObject[["currencyID"]] <-
          self$`currencyID`
      }
      if (!is.null(self$`currencyName`)) {
        ViewExtendedAlpsValueObject[["currencyName"]] <-
          self$`currencyName`
      }
      if (!is.null(self$`marketID`)) {
        ViewExtendedAlpsValueObject[["marketID"]] <-
          self$`marketID`
      }
      if (!is.null(self$`marketName`)) {
        ViewExtendedAlpsValueObject[["marketName"]] <-
          self$`marketName`
      }
      if (!is.null(self$`priceTypeID`)) {
        ViewExtendedAlpsValueObject[["priceTypeID"]] <-
          self$`priceTypeID`
      }
      if (!is.null(self$`priceTypeName`)) {
        ViewExtendedAlpsValueObject[["priceTypeName"]] <-
          self$`priceTypeName`
      }
      for (key in names(self$additional_properties)) {
        ViewExtendedAlpsValueObject[[key]] <- self$additional_properties[[key]]
      }

      ViewExtendedAlpsValueObject
    },
    #' Deserialize JSON string into an instance of ViewExtendedAlpsValue
    #'
    #' @description
    #' Deserialize JSON string into an instance of ViewExtendedAlpsValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of ViewExtendedAlpsValue
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`adm0Code`)) {
        self$`adm0Code` <- this_object$`adm0Code`
      }
      if (!is.null(this_object$`analysisValueEstimatedPrice`)) {
        self$`analysisValueEstimatedPrice` <- this_object$`analysisValueEstimatedPrice`
      }
      if (!is.null(this_object$`analysisValuePewiValue`)) {
        self$`analysisValuePewiValue` <- this_object$`analysisValuePewiValue`
      }
      if (!is.null(this_object$`analysisValuePriceFlag`)) {
        self$`analysisValuePriceFlag` <- this_object$`analysisValuePriceFlag`
      }
      if (!is.null(this_object$`commodityID`)) {
        self$`commodityID` <- this_object$`commodityID`
      }
      if (!is.null(this_object$`commodityName`)) {
        self$`commodityName` <- this_object$`commodityName`
      }
      if (!is.null(this_object$`commodityPriceDate`)) {
        self$`commodityPriceDate` <- this_object$`commodityPriceDate`
      }
      if (!is.null(this_object$`commodityPriceDateMonth`)) {
        self$`commodityPriceDateMonth` <- this_object$`commodityPriceDateMonth`
      }
      if (!is.null(this_object$`commodityPriceDateWeek`)) {
        self$`commodityPriceDateWeek` <- this_object$`commodityPriceDateWeek`
      }
      if (!is.null(this_object$`commodityPriceDateYear`)) {
        self$`commodityPriceDateYear` <- this_object$`commodityPriceDateYear`
      }
      if (!is.null(this_object$`commodityUnitID`)) {
        self$`commodityUnitID` <- this_object$`commodityUnitID`
      }
      if (!is.null(this_object$`commodityUnitName`)) {
        self$`commodityUnitName` <- this_object$`commodityUnitName`
      }
      if (!is.null(this_object$`countryName`)) {
        self$`countryName` <- this_object$`countryName`
      }
      if (!is.null(this_object$`currencyID`)) {
        self$`currencyID` <- this_object$`currencyID`
      }
      if (!is.null(this_object$`currencyName`)) {
        self$`currencyName` <- this_object$`currencyName`
      }
      if (!is.null(this_object$`marketID`)) {
        self$`marketID` <- this_object$`marketID`
      }
      if (!is.null(this_object$`marketName`)) {
        self$`marketName` <- this_object$`marketName`
      }
      if (!is.null(this_object$`priceTypeID`)) {
        self$`priceTypeID` <- this_object$`priceTypeID`
      }
      if (!is.null(this_object$`priceTypeName`)) {
        self$`priceTypeName` <- this_object$`priceTypeName`
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
    #' @return ViewExtendedAlpsValue in JSON format
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
        if (!is.null(self$`analysisValueEstimatedPrice`)) {
          sprintf(
          '"analysisValueEstimatedPrice":
            %d
                    ',
          self$`analysisValueEstimatedPrice`
          )
        },
        if (!is.null(self$`analysisValuePewiValue`)) {
          sprintf(
          '"analysisValuePewiValue":
            %d
                    ',
          self$`analysisValuePewiValue`
          )
        },
        if (!is.null(self$`analysisValuePriceFlag`)) {
          sprintf(
          '"analysisValuePriceFlag":
            "%s"
                    ',
          self$`analysisValuePriceFlag`
          )
        },
        if (!is.null(self$`commodityID`)) {
          sprintf(
          '"commodityID":
            %d
                    ',
          self$`commodityID`
          )
        },
        if (!is.null(self$`commodityName`)) {
          sprintf(
          '"commodityName":
            "%s"
                    ',
          self$`commodityName`
          )
        },
        if (!is.null(self$`commodityPriceDate`)) {
          sprintf(
          '"commodityPriceDate":
            "%s"
                    ',
          self$`commodityPriceDate`
          )
        },
        if (!is.null(self$`commodityPriceDateMonth`)) {
          sprintf(
          '"commodityPriceDateMonth":
            %d
                    ',
          self$`commodityPriceDateMonth`
          )
        },
        if (!is.null(self$`commodityPriceDateWeek`)) {
          sprintf(
          '"commodityPriceDateWeek":
            %d
                    ',
          self$`commodityPriceDateWeek`
          )
        },
        if (!is.null(self$`commodityPriceDateYear`)) {
          sprintf(
          '"commodityPriceDateYear":
            %d
                    ',
          self$`commodityPriceDateYear`
          )
        },
        if (!is.null(self$`commodityUnitID`)) {
          sprintf(
          '"commodityUnitID":
            %d
                    ',
          self$`commodityUnitID`
          )
        },
        if (!is.null(self$`commodityUnitName`)) {
          sprintf(
          '"commodityUnitName":
            "%s"
                    ',
          self$`commodityUnitName`
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
        if (!is.null(self$`currencyID`)) {
          sprintf(
          '"currencyID":
            %d
                    ',
          self$`currencyID`
          )
        },
        if (!is.null(self$`currencyName`)) {
          sprintf(
          '"currencyName":
            "%s"
                    ',
          self$`currencyName`
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
        if (!is.null(self$`marketName`)) {
          sprintf(
          '"marketName":
            "%s"
                    ',
          self$`marketName`
          )
        },
        if (!is.null(self$`priceTypeID`)) {
          sprintf(
          '"priceTypeID":
            %d
                    ',
          self$`priceTypeID`
          )
        },
        if (!is.null(self$`priceTypeName`)) {
          sprintf(
          '"priceTypeName":
            "%s"
                    ',
          self$`priceTypeName`
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
    #' Deserialize JSON string into an instance of ViewExtendedAlpsValue
    #'
    #' @description
    #' Deserialize JSON string into an instance of ViewExtendedAlpsValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of ViewExtendedAlpsValue
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`adm0Code` <- this_object$`adm0Code`
      self$`analysisValueEstimatedPrice` <- this_object$`analysisValueEstimatedPrice`
      self$`analysisValuePewiValue` <- this_object$`analysisValuePewiValue`
      self$`analysisValuePriceFlag` <- this_object$`analysisValuePriceFlag`
      self$`commodityID` <- this_object$`commodityID`
      self$`commodityName` <- this_object$`commodityName`
      self$`commodityPriceDate` <- this_object$`commodityPriceDate`
      self$`commodityPriceDateMonth` <- this_object$`commodityPriceDateMonth`
      self$`commodityPriceDateWeek` <- this_object$`commodityPriceDateWeek`
      self$`commodityPriceDateYear` <- this_object$`commodityPriceDateYear`
      self$`commodityUnitID` <- this_object$`commodityUnitID`
      self$`commodityUnitName` <- this_object$`commodityUnitName`
      self$`countryName` <- this_object$`countryName`
      self$`currencyID` <- this_object$`currencyID`
      self$`currencyName` <- this_object$`currencyName`
      self$`marketID` <- this_object$`marketID`
      self$`marketName` <- this_object$`marketName`
      self$`priceTypeID` <- this_object$`priceTypeID`
      self$`priceTypeName` <- this_object$`priceTypeName`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ViewExtendedAlpsValue
    #'
    #' @description
    #' Validate JSON input with respect to ViewExtendedAlpsValue and throw an exception if invalid
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
    #' @return String representation of ViewExtendedAlpsValue
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
# ViewExtendedAlpsValue$unlock()
#
## Below is an example to define the print function
# ViewExtendedAlpsValue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ViewExtendedAlpsValue$lock()

