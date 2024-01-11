#' Create a new ViewExtendedAggregatedPrice
#'
#' @description
#' ViewExtendedAggregatedPrice Class
#'
#' @docType class
#' @title ViewExtendedAggregatedPrice
#' @description ViewExtendedAggregatedPrice Class
#' @format An \code{R6Class} generator object
#' @field adm0Code  integer [optional]
#' @field commodityDateMonth  integer [optional]
#' @field commodityDateWeek  integer [optional]
#' @field commodityDateYear  integer [optional]
#' @field commodityID  integer [optional]
#' @field commodityName  character [optional]
#' @field commodityPrice  numeric [optional]
#' @field commodityPriceDate  character [optional]
#' @field commodityPriceFlag  character [optional]
#' @field commodityPriceObservations  integer [optional]
#' @field commodityPriceSourceName  character [optional]
#' @field commodityUnitID  integer [optional]
#' @field commodityUnitName  character [optional]
#' @field countryISO3  character [optional]
#' @field countryName  character [optional]
#' @field currencyID  integer [optional]
#' @field currencyName  character [optional]
#' @field marketID  integer [optional]
#' @field marketName  character [optional]
#' @field originalFrequency  character [optional]
#' @field priceTypeID  integer [optional]
#' @field priceTypeName  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ViewExtendedAggregatedPrice <- R6::R6Class(
  "ViewExtendedAggregatedPrice",
  inherit = null<String, AnyType>,
  public = list(
    `adm0Code` = NULL,
    `commodityDateMonth` = NULL,
    `commodityDateWeek` = NULL,
    `commodityDateYear` = NULL,
    `commodityID` = NULL,
    `commodityName` = NULL,
    `commodityPrice` = NULL,
    `commodityPriceDate` = NULL,
    `commodityPriceFlag` = NULL,
    `commodityPriceObservations` = NULL,
    `commodityPriceSourceName` = NULL,
    `commodityUnitID` = NULL,
    `commodityUnitName` = NULL,
    `countryISO3` = NULL,
    `countryName` = NULL,
    `currencyID` = NULL,
    `currencyName` = NULL,
    `marketID` = NULL,
    `marketName` = NULL,
    `originalFrequency` = NULL,
    `priceTypeID` = NULL,
    `priceTypeName` = NULL,
    `_field_list` = c("adm0Code", "commodityDateMonth", "commodityDateWeek", "commodityDateYear", "commodityID", "commodityName", "commodityPrice", "commodityPriceDate", "commodityPriceFlag", "commodityPriceObservations", "commodityPriceSourceName", "commodityUnitID", "commodityUnitName", "countryISO3", "countryName", "currencyID", "currencyName", "marketID", "marketName", "originalFrequency", "priceTypeID", "priceTypeName"),
    `additional_properties` = list(),
    #' Initialize a new ViewExtendedAggregatedPrice class.
    #'
    #' @description
    #' Initialize a new ViewExtendedAggregatedPrice class.
    #'
    #' @param adm0Code adm0Code
    #' @param commodityDateMonth commodityDateMonth
    #' @param commodityDateWeek commodityDateWeek
    #' @param commodityDateYear commodityDateYear
    #' @param commodityID commodityID
    #' @param commodityName commodityName
    #' @param commodityPrice commodityPrice
    #' @param commodityPriceDate commodityPriceDate
    #' @param commodityPriceFlag commodityPriceFlag
    #' @param commodityPriceObservations commodityPriceObservations
    #' @param commodityPriceSourceName commodityPriceSourceName
    #' @param commodityUnitID commodityUnitID
    #' @param commodityUnitName commodityUnitName
    #' @param countryISO3 countryISO3
    #' @param countryName countryName
    #' @param currencyID currencyID
    #' @param currencyName currencyName
    #' @param marketID marketID
    #' @param marketName marketName
    #' @param originalFrequency originalFrequency
    #' @param priceTypeID priceTypeID
    #' @param priceTypeName priceTypeName
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`adm0Code` = NULL, `commodityDateMonth` = NULL, `commodityDateWeek` = NULL, `commodityDateYear` = NULL, `commodityID` = NULL, `commodityName` = NULL, `commodityPrice` = NULL, `commodityPriceDate` = NULL, `commodityPriceFlag` = NULL, `commodityPriceObservations` = NULL, `commodityPriceSourceName` = NULL, `commodityUnitID` = NULL, `commodityUnitName` = NULL, `countryISO3` = NULL, `countryName` = NULL, `currencyID` = NULL, `currencyName` = NULL, `marketID` = NULL, `marketName` = NULL, `originalFrequency` = NULL, `priceTypeID` = NULL, `priceTypeName` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`adm0Code`)) {
        if (!(is.numeric(`adm0Code`) && length(`adm0Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm0Code`. Must be an integer:", `adm0Code`))
        }
        self$`adm0Code` <- `adm0Code`
      }
      if (!is.null(`commodityDateMonth`)) {
        if (!(is.numeric(`commodityDateMonth`) && length(`commodityDateMonth`) == 1)) {
          stop(paste("Error! Invalid data for `commodityDateMonth`. Must be an integer:", `commodityDateMonth`))
        }
        self$`commodityDateMonth` <- `commodityDateMonth`
      }
      if (!is.null(`commodityDateWeek`)) {
        if (!(is.numeric(`commodityDateWeek`) && length(`commodityDateWeek`) == 1)) {
          stop(paste("Error! Invalid data for `commodityDateWeek`. Must be an integer:", `commodityDateWeek`))
        }
        self$`commodityDateWeek` <- `commodityDateWeek`
      }
      if (!is.null(`commodityDateYear`)) {
        if (!(is.numeric(`commodityDateYear`) && length(`commodityDateYear`) == 1)) {
          stop(paste("Error! Invalid data for `commodityDateYear`. Must be an integer:", `commodityDateYear`))
        }
        self$`commodityDateYear` <- `commodityDateYear`
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
      if (!is.null(`commodityPrice`)) {
        if (!(is.numeric(`commodityPrice`) && length(`commodityPrice`) == 1)) {
          stop(paste("Error! Invalid data for `commodityPrice`. Must be a number:", `commodityPrice`))
        }
        self$`commodityPrice` <- `commodityPrice`
      }
      if (!is.null(`commodityPriceDate`)) {
        if (!is.character(`commodityPriceDate`)) {
          stop(paste("Error! Invalid data for `commodityPriceDate`. Must be a string:", `commodityPriceDate`))
        }
        self$`commodityPriceDate` <- `commodityPriceDate`
      }
      if (!is.null(`commodityPriceFlag`)) {
        if (!(is.character(`commodityPriceFlag`) && length(`commodityPriceFlag`) == 1)) {
          stop(paste("Error! Invalid data for `commodityPriceFlag`. Must be a string:", `commodityPriceFlag`))
        }
        self$`commodityPriceFlag` <- `commodityPriceFlag`
      }
      if (!is.null(`commodityPriceObservations`)) {
        if (!(is.numeric(`commodityPriceObservations`) && length(`commodityPriceObservations`) == 1)) {
          stop(paste("Error! Invalid data for `commodityPriceObservations`. Must be an integer:", `commodityPriceObservations`))
        }
        self$`commodityPriceObservations` <- `commodityPriceObservations`
      }
      if (!is.null(`commodityPriceSourceName`)) {
        if (!(is.character(`commodityPriceSourceName`) && length(`commodityPriceSourceName`) == 1)) {
          stop(paste("Error! Invalid data for `commodityPriceSourceName`. Must be a string:", `commodityPriceSourceName`))
        }
        self$`commodityPriceSourceName` <- `commodityPriceSourceName`
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
      if (!is.null(`countryISO3`)) {
        if (!(is.character(`countryISO3`) && length(`countryISO3`) == 1)) {
          stop(paste("Error! Invalid data for `countryISO3`. Must be a string:", `countryISO3`))
        }
        self$`countryISO3` <- `countryISO3`
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
      if (!is.null(`originalFrequency`)) {
        if (!(is.character(`originalFrequency`) && length(`originalFrequency`) == 1)) {
          stop(paste("Error! Invalid data for `originalFrequency`. Must be a string:", `originalFrequency`))
        }
        self$`originalFrequency` <- `originalFrequency`
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
    #' @return ViewExtendedAggregatedPrice in JSON format
    #' @export
    toJSON = function() {
      ViewExtendedAggregatedPriceObject <- list()
      if (!is.null(self$`adm0Code`)) {
        ViewExtendedAggregatedPriceObject[["adm0Code"]] <-
          self$`adm0Code`
      }
      if (!is.null(self$`commodityDateMonth`)) {
        ViewExtendedAggregatedPriceObject[["commodityDateMonth"]] <-
          self$`commodityDateMonth`
      }
      if (!is.null(self$`commodityDateWeek`)) {
        ViewExtendedAggregatedPriceObject[["commodityDateWeek"]] <-
          self$`commodityDateWeek`
      }
      if (!is.null(self$`commodityDateYear`)) {
        ViewExtendedAggregatedPriceObject[["commodityDateYear"]] <-
          self$`commodityDateYear`
      }
      if (!is.null(self$`commodityID`)) {
        ViewExtendedAggregatedPriceObject[["commodityID"]] <-
          self$`commodityID`
      }
      if (!is.null(self$`commodityName`)) {
        ViewExtendedAggregatedPriceObject[["commodityName"]] <-
          self$`commodityName`
      }
      if (!is.null(self$`commodityPrice`)) {
        ViewExtendedAggregatedPriceObject[["commodityPrice"]] <-
          self$`commodityPrice`
      }
      if (!is.null(self$`commodityPriceDate`)) {
        ViewExtendedAggregatedPriceObject[["commodityPriceDate"]] <-
          self$`commodityPriceDate`
      }
      if (!is.null(self$`commodityPriceFlag`)) {
        ViewExtendedAggregatedPriceObject[["commodityPriceFlag"]] <-
          self$`commodityPriceFlag`
      }
      if (!is.null(self$`commodityPriceObservations`)) {
        ViewExtendedAggregatedPriceObject[["commodityPriceObservations"]] <-
          self$`commodityPriceObservations`
      }
      if (!is.null(self$`commodityPriceSourceName`)) {
        ViewExtendedAggregatedPriceObject[["commodityPriceSourceName"]] <-
          self$`commodityPriceSourceName`
      }
      if (!is.null(self$`commodityUnitID`)) {
        ViewExtendedAggregatedPriceObject[["commodityUnitID"]] <-
          self$`commodityUnitID`
      }
      if (!is.null(self$`commodityUnitName`)) {
        ViewExtendedAggregatedPriceObject[["commodityUnitName"]] <-
          self$`commodityUnitName`
      }
      if (!is.null(self$`countryISO3`)) {
        ViewExtendedAggregatedPriceObject[["countryISO3"]] <-
          self$`countryISO3`
      }
      if (!is.null(self$`countryName`)) {
        ViewExtendedAggregatedPriceObject[["countryName"]] <-
          self$`countryName`
      }
      if (!is.null(self$`currencyID`)) {
        ViewExtendedAggregatedPriceObject[["currencyID"]] <-
          self$`currencyID`
      }
      if (!is.null(self$`currencyName`)) {
        ViewExtendedAggregatedPriceObject[["currencyName"]] <-
          self$`currencyName`
      }
      if (!is.null(self$`marketID`)) {
        ViewExtendedAggregatedPriceObject[["marketID"]] <-
          self$`marketID`
      }
      if (!is.null(self$`marketName`)) {
        ViewExtendedAggregatedPriceObject[["marketName"]] <-
          self$`marketName`
      }
      if (!is.null(self$`originalFrequency`)) {
        ViewExtendedAggregatedPriceObject[["originalFrequency"]] <-
          self$`originalFrequency`
      }
      if (!is.null(self$`priceTypeID`)) {
        ViewExtendedAggregatedPriceObject[["priceTypeID"]] <-
          self$`priceTypeID`
      }
      if (!is.null(self$`priceTypeName`)) {
        ViewExtendedAggregatedPriceObject[["priceTypeName"]] <-
          self$`priceTypeName`
      }
      for (key in names(self$additional_properties)) {
        ViewExtendedAggregatedPriceObject[[key]] <- self$additional_properties[[key]]
      }

      ViewExtendedAggregatedPriceObject
    },
    #' Deserialize JSON string into an instance of ViewExtendedAggregatedPrice
    #'
    #' @description
    #' Deserialize JSON string into an instance of ViewExtendedAggregatedPrice
    #'
    #' @param input_json the JSON input
    #' @return the instance of ViewExtendedAggregatedPrice
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`adm0Code`)) {
        self$`adm0Code` <- this_object$`adm0Code`
      }
      if (!is.null(this_object$`commodityDateMonth`)) {
        self$`commodityDateMonth` <- this_object$`commodityDateMonth`
      }
      if (!is.null(this_object$`commodityDateWeek`)) {
        self$`commodityDateWeek` <- this_object$`commodityDateWeek`
      }
      if (!is.null(this_object$`commodityDateYear`)) {
        self$`commodityDateYear` <- this_object$`commodityDateYear`
      }
      if (!is.null(this_object$`commodityID`)) {
        self$`commodityID` <- this_object$`commodityID`
      }
      if (!is.null(this_object$`commodityName`)) {
        self$`commodityName` <- this_object$`commodityName`
      }
      if (!is.null(this_object$`commodityPrice`)) {
        self$`commodityPrice` <- this_object$`commodityPrice`
      }
      if (!is.null(this_object$`commodityPriceDate`)) {
        self$`commodityPriceDate` <- this_object$`commodityPriceDate`
      }
      if (!is.null(this_object$`commodityPriceFlag`)) {
        self$`commodityPriceFlag` <- this_object$`commodityPriceFlag`
      }
      if (!is.null(this_object$`commodityPriceObservations`)) {
        self$`commodityPriceObservations` <- this_object$`commodityPriceObservations`
      }
      if (!is.null(this_object$`commodityPriceSourceName`)) {
        self$`commodityPriceSourceName` <- this_object$`commodityPriceSourceName`
      }
      if (!is.null(this_object$`commodityUnitID`)) {
        self$`commodityUnitID` <- this_object$`commodityUnitID`
      }
      if (!is.null(this_object$`commodityUnitName`)) {
        self$`commodityUnitName` <- this_object$`commodityUnitName`
      }
      if (!is.null(this_object$`countryISO3`)) {
        self$`countryISO3` <- this_object$`countryISO3`
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
      if (!is.null(this_object$`originalFrequency`)) {
        self$`originalFrequency` <- this_object$`originalFrequency`
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
    #' @return ViewExtendedAggregatedPrice in JSON format
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
        if (!is.null(self$`commodityDateMonth`)) {
          sprintf(
          '"commodityDateMonth":
            %d
                    ',
          self$`commodityDateMonth`
          )
        },
        if (!is.null(self$`commodityDateWeek`)) {
          sprintf(
          '"commodityDateWeek":
            %d
                    ',
          self$`commodityDateWeek`
          )
        },
        if (!is.null(self$`commodityDateYear`)) {
          sprintf(
          '"commodityDateYear":
            %d
                    ',
          self$`commodityDateYear`
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
        if (!is.null(self$`commodityPrice`)) {
          sprintf(
          '"commodityPrice":
            %d
                    ',
          self$`commodityPrice`
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
        if (!is.null(self$`commodityPriceFlag`)) {
          sprintf(
          '"commodityPriceFlag":
            "%s"
                    ',
          self$`commodityPriceFlag`
          )
        },
        if (!is.null(self$`commodityPriceObservations`)) {
          sprintf(
          '"commodityPriceObservations":
            %d
                    ',
          self$`commodityPriceObservations`
          )
        },
        if (!is.null(self$`commodityPriceSourceName`)) {
          sprintf(
          '"commodityPriceSourceName":
            "%s"
                    ',
          self$`commodityPriceSourceName`
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
        if (!is.null(self$`countryISO3`)) {
          sprintf(
          '"countryISO3":
            "%s"
                    ',
          self$`countryISO3`
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
        if (!is.null(self$`originalFrequency`)) {
          sprintf(
          '"originalFrequency":
            "%s"
                    ',
          self$`originalFrequency`
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
    #' Deserialize JSON string into an instance of ViewExtendedAggregatedPrice
    #'
    #' @description
    #' Deserialize JSON string into an instance of ViewExtendedAggregatedPrice
    #'
    #' @param input_json the JSON input
    #' @return the instance of ViewExtendedAggregatedPrice
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`adm0Code` <- this_object$`adm0Code`
      self$`commodityDateMonth` <- this_object$`commodityDateMonth`
      self$`commodityDateWeek` <- this_object$`commodityDateWeek`
      self$`commodityDateYear` <- this_object$`commodityDateYear`
      self$`commodityID` <- this_object$`commodityID`
      self$`commodityName` <- this_object$`commodityName`
      self$`commodityPrice` <- this_object$`commodityPrice`
      self$`commodityPriceDate` <- this_object$`commodityPriceDate`
      self$`commodityPriceFlag` <- this_object$`commodityPriceFlag`
      self$`commodityPriceObservations` <- this_object$`commodityPriceObservations`
      self$`commodityPriceSourceName` <- this_object$`commodityPriceSourceName`
      self$`commodityUnitID` <- this_object$`commodityUnitID`
      self$`commodityUnitName` <- this_object$`commodityUnitName`
      self$`countryISO3` <- this_object$`countryISO3`
      self$`countryName` <- this_object$`countryName`
      self$`currencyID` <- this_object$`currencyID`
      self$`currencyName` <- this_object$`currencyName`
      self$`marketID` <- this_object$`marketID`
      self$`marketName` <- this_object$`marketName`
      self$`originalFrequency` <- this_object$`originalFrequency`
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
    #' Validate JSON input with respect to ViewExtendedAggregatedPrice
    #'
    #' @description
    #' Validate JSON input with respect to ViewExtendedAggregatedPrice and throw an exception if invalid
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
    #' @return String representation of ViewExtendedAggregatedPrice
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
# ViewExtendedAggregatedPrice$unlock()
#
## Below is an example to define the print function
# ViewExtendedAggregatedPrice$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ViewExtendedAggregatedPrice$lock()

