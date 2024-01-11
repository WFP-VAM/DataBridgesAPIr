#' Create a new CommodityPriceDTO
#'
#' @description
#' CommodityPriceDTO Class
#'
#' @docType class
#' @title CommodityPriceDTO
#' @description CommodityPriceDTO Class
#' @format An \code{R6Class} generator object
#' @field adm0Code  integer [optional]
#' @field commodityId  integer [optional]
#' @field commodityName  character [optional]
#' @field commodityPrice  numeric [optional]
#' @field commodityPriceDate  character [optional]
#' @field commodityPriceDateDay  integer [optional]
#' @field commodityPriceDateMonth  integer [optional]
#' @field commodityPriceDateWeek  integer [optional]
#' @field commodityPriceDateYear  integer [optional]
#' @field commodityPriceFlag  character [optional]
#' @field commodityPriceInsertDate  character [optional]
#' @field commodityPriceMetadata  \link{AnyType} [optional]
#' @field commodityPriceObservations  integer [optional]
#' @field commodityPriceSourceName  character [optional]
#' @field commodityUnitId  integer [optional]
#' @field countryISO3  character [optional]
#' @field countryName  character [optional]
#' @field currencyId  integer [optional]
#' @field currencyName  character [optional]
#' @field id The internal ID of the commodity integer [optional]
#' @field marketId  integer [optional]
#' @field marketName  character [optional]
#' @field originalFrequency  character [optional]
#' @field priceTypeId  integer [optional]
#' @field priceTypeName  character [optional]
#' @field unitName  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CommodityPriceDTO <- R6::R6Class(
  "CommodityPriceDTO",
  inherit = null<String, AnyType>,
  public = list(
    `adm0Code` = NULL,
    `commodityId` = NULL,
    `commodityName` = NULL,
    `commodityPrice` = NULL,
    `commodityPriceDate` = NULL,
    `commodityPriceDateDay` = NULL,
    `commodityPriceDateMonth` = NULL,
    `commodityPriceDateWeek` = NULL,
    `commodityPriceDateYear` = NULL,
    `commodityPriceFlag` = NULL,
    `commodityPriceInsertDate` = NULL,
    `commodityPriceMetadata` = NULL,
    `commodityPriceObservations` = NULL,
    `commodityPriceSourceName` = NULL,
    `commodityUnitId` = NULL,
    `countryISO3` = NULL,
    `countryName` = NULL,
    `currencyId` = NULL,
    `currencyName` = NULL,
    `id` = NULL,
    `marketId` = NULL,
    `marketName` = NULL,
    `originalFrequency` = NULL,
    `priceTypeId` = NULL,
    `priceTypeName` = NULL,
    `unitName` = NULL,
    `_field_list` = c("adm0Code", "commodityId", "commodityName", "commodityPrice", "commodityPriceDate", "commodityPriceDateDay", "commodityPriceDateMonth", "commodityPriceDateWeek", "commodityPriceDateYear", "commodityPriceFlag", "commodityPriceInsertDate", "commodityPriceMetadata", "commodityPriceObservations", "commodityPriceSourceName", "commodityUnitId", "countryISO3", "countryName", "currencyId", "currencyName", "id", "marketId", "marketName", "originalFrequency", "priceTypeId", "priceTypeName", "unitName"),
    `additional_properties` = list(),
    #' Initialize a new CommodityPriceDTO class.
    #'
    #' @description
    #' Initialize a new CommodityPriceDTO class.
    #'
    #' @param adm0Code adm0Code
    #' @param commodityId commodityId
    #' @param commodityName commodityName
    #' @param commodityPrice commodityPrice
    #' @param commodityPriceDate commodityPriceDate
    #' @param commodityPriceDateDay commodityPriceDateDay
    #' @param commodityPriceDateMonth commodityPriceDateMonth
    #' @param commodityPriceDateWeek commodityPriceDateWeek
    #' @param commodityPriceDateYear commodityPriceDateYear
    #' @param commodityPriceFlag commodityPriceFlag
    #' @param commodityPriceInsertDate commodityPriceInsertDate
    #' @param commodityPriceMetadata commodityPriceMetadata
    #' @param commodityPriceObservations commodityPriceObservations
    #' @param commodityPriceSourceName commodityPriceSourceName
    #' @param commodityUnitId commodityUnitId
    #' @param countryISO3 countryISO3
    #' @param countryName countryName
    #' @param currencyId currencyId
    #' @param currencyName currencyName
    #' @param id The internal ID of the commodity
    #' @param marketId marketId
    #' @param marketName marketName
    #' @param originalFrequency originalFrequency
    #' @param priceTypeId priceTypeId
    #' @param priceTypeName priceTypeName
    #' @param unitName unitName
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`adm0Code` = NULL, `commodityId` = NULL, `commodityName` = NULL, `commodityPrice` = NULL, `commodityPriceDate` = NULL, `commodityPriceDateDay` = NULL, `commodityPriceDateMonth` = NULL, `commodityPriceDateWeek` = NULL, `commodityPriceDateYear` = NULL, `commodityPriceFlag` = NULL, `commodityPriceInsertDate` = NULL, `commodityPriceMetadata` = NULL, `commodityPriceObservations` = NULL, `commodityPriceSourceName` = NULL, `commodityUnitId` = NULL, `countryISO3` = NULL, `countryName` = NULL, `currencyId` = NULL, `currencyName` = NULL, `id` = NULL, `marketId` = NULL, `marketName` = NULL, `originalFrequency` = NULL, `priceTypeId` = NULL, `priceTypeName` = NULL, `unitName` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`adm0Code`)) {
        if (!(is.numeric(`adm0Code`) && length(`adm0Code`) == 1)) {
          stop(paste("Error! Invalid data for `adm0Code`. Must be an integer:", `adm0Code`))
        }
        self$`adm0Code` <- `adm0Code`
      }
      if (!is.null(`commodityId`)) {
        if (!(is.numeric(`commodityId`) && length(`commodityId`) == 1)) {
          stop(paste("Error! Invalid data for `commodityId`. Must be an integer:", `commodityId`))
        }
        self$`commodityId` <- `commodityId`
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
      if (!is.null(`commodityPriceDateDay`)) {
        if (!(is.numeric(`commodityPriceDateDay`) && length(`commodityPriceDateDay`) == 1)) {
          stop(paste("Error! Invalid data for `commodityPriceDateDay`. Must be an integer:", `commodityPriceDateDay`))
        }
        self$`commodityPriceDateDay` <- `commodityPriceDateDay`
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
      if (!is.null(`commodityPriceFlag`)) {
        if (!(is.character(`commodityPriceFlag`) && length(`commodityPriceFlag`) == 1)) {
          stop(paste("Error! Invalid data for `commodityPriceFlag`. Must be a string:", `commodityPriceFlag`))
        }
        self$`commodityPriceFlag` <- `commodityPriceFlag`
      }
      if (!is.null(`commodityPriceInsertDate`)) {
        if (!is.character(`commodityPriceInsertDate`)) {
          stop(paste("Error! Invalid data for `commodityPriceInsertDate`. Must be a string:", `commodityPriceInsertDate`))
        }
        self$`commodityPriceInsertDate` <- `commodityPriceInsertDate`
      }
      if (!is.null(`commodityPriceMetadata`)) {
        stopifnot(R6::is.R6(`commodityPriceMetadata`))
        self$`commodityPriceMetadata` <- `commodityPriceMetadata`
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
      if (!is.null(`commodityUnitId`)) {
        if (!(is.numeric(`commodityUnitId`) && length(`commodityUnitId`) == 1)) {
          stop(paste("Error! Invalid data for `commodityUnitId`. Must be an integer:", `commodityUnitId`))
        }
        self$`commodityUnitId` <- `commodityUnitId`
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
      if (!is.null(`currencyId`)) {
        if (!(is.numeric(`currencyId`) && length(`currencyId`) == 1)) {
          stop(paste("Error! Invalid data for `currencyId`. Must be an integer:", `currencyId`))
        }
        self$`currencyId` <- `currencyId`
      }
      if (!is.null(`currencyName`)) {
        if (!(is.character(`currencyName`) && length(`currencyName`) == 1)) {
          stop(paste("Error! Invalid data for `currencyName`. Must be a string:", `currencyName`))
        }
        self$`currencyName` <- `currencyName`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`marketId`)) {
        if (!(is.numeric(`marketId`) && length(`marketId`) == 1)) {
          stop(paste("Error! Invalid data for `marketId`. Must be an integer:", `marketId`))
        }
        self$`marketId` <- `marketId`
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
      if (!is.null(`priceTypeId`)) {
        if (!(is.numeric(`priceTypeId`) && length(`priceTypeId`) == 1)) {
          stop(paste("Error! Invalid data for `priceTypeId`. Must be an integer:", `priceTypeId`))
        }
        self$`priceTypeId` <- `priceTypeId`
      }
      if (!is.null(`priceTypeName`)) {
        if (!(is.character(`priceTypeName`) && length(`priceTypeName`) == 1)) {
          stop(paste("Error! Invalid data for `priceTypeName`. Must be a string:", `priceTypeName`))
        }
        self$`priceTypeName` <- `priceTypeName`
      }
      if (!is.null(`unitName`)) {
        if (!(is.character(`unitName`) && length(`unitName`) == 1)) {
          stop(paste("Error! Invalid data for `unitName`. Must be a string:", `unitName`))
        }
        self$`unitName` <- `unitName`
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
    #' @return CommodityPriceDTO in JSON format
    #' @export
    toJSON = function() {
      CommodityPriceDTOObject <- list()
      if (!is.null(self$`adm0Code`)) {
        CommodityPriceDTOObject[["adm0Code"]] <-
          self$`adm0Code`
      }
      if (!is.null(self$`commodityId`)) {
        CommodityPriceDTOObject[["commodityId"]] <-
          self$`commodityId`
      }
      if (!is.null(self$`commodityName`)) {
        CommodityPriceDTOObject[["commodityName"]] <-
          self$`commodityName`
      }
      if (!is.null(self$`commodityPrice`)) {
        CommodityPriceDTOObject[["commodityPrice"]] <-
          self$`commodityPrice`
      }
      if (!is.null(self$`commodityPriceDate`)) {
        CommodityPriceDTOObject[["commodityPriceDate"]] <-
          self$`commodityPriceDate`
      }
      if (!is.null(self$`commodityPriceDateDay`)) {
        CommodityPriceDTOObject[["commodityPriceDateDay"]] <-
          self$`commodityPriceDateDay`
      }
      if (!is.null(self$`commodityPriceDateMonth`)) {
        CommodityPriceDTOObject[["commodityPriceDateMonth"]] <-
          self$`commodityPriceDateMonth`
      }
      if (!is.null(self$`commodityPriceDateWeek`)) {
        CommodityPriceDTOObject[["commodityPriceDateWeek"]] <-
          self$`commodityPriceDateWeek`
      }
      if (!is.null(self$`commodityPriceDateYear`)) {
        CommodityPriceDTOObject[["commodityPriceDateYear"]] <-
          self$`commodityPriceDateYear`
      }
      if (!is.null(self$`commodityPriceFlag`)) {
        CommodityPriceDTOObject[["commodityPriceFlag"]] <-
          self$`commodityPriceFlag`
      }
      if (!is.null(self$`commodityPriceInsertDate`)) {
        CommodityPriceDTOObject[["commodityPriceInsertDate"]] <-
          self$`commodityPriceInsertDate`
      }
      if (!is.null(self$`commodityPriceMetadata`)) {
        CommodityPriceDTOObject[["commodityPriceMetadata"]] <-
          self$`commodityPriceMetadata`$toJSON()
      }
      if (!is.null(self$`commodityPriceObservations`)) {
        CommodityPriceDTOObject[["commodityPriceObservations"]] <-
          self$`commodityPriceObservations`
      }
      if (!is.null(self$`commodityPriceSourceName`)) {
        CommodityPriceDTOObject[["commodityPriceSourceName"]] <-
          self$`commodityPriceSourceName`
      }
      if (!is.null(self$`commodityUnitId`)) {
        CommodityPriceDTOObject[["commodityUnitId"]] <-
          self$`commodityUnitId`
      }
      if (!is.null(self$`countryISO3`)) {
        CommodityPriceDTOObject[["countryISO3"]] <-
          self$`countryISO3`
      }
      if (!is.null(self$`countryName`)) {
        CommodityPriceDTOObject[["countryName"]] <-
          self$`countryName`
      }
      if (!is.null(self$`currencyId`)) {
        CommodityPriceDTOObject[["currencyId"]] <-
          self$`currencyId`
      }
      if (!is.null(self$`currencyName`)) {
        CommodityPriceDTOObject[["currencyName"]] <-
          self$`currencyName`
      }
      if (!is.null(self$`id`)) {
        CommodityPriceDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`marketId`)) {
        CommodityPriceDTOObject[["marketId"]] <-
          self$`marketId`
      }
      if (!is.null(self$`marketName`)) {
        CommodityPriceDTOObject[["marketName"]] <-
          self$`marketName`
      }
      if (!is.null(self$`originalFrequency`)) {
        CommodityPriceDTOObject[["originalFrequency"]] <-
          self$`originalFrequency`
      }
      if (!is.null(self$`priceTypeId`)) {
        CommodityPriceDTOObject[["priceTypeId"]] <-
          self$`priceTypeId`
      }
      if (!is.null(self$`priceTypeName`)) {
        CommodityPriceDTOObject[["priceTypeName"]] <-
          self$`priceTypeName`
      }
      if (!is.null(self$`unitName`)) {
        CommodityPriceDTOObject[["unitName"]] <-
          self$`unitName`
      }
      for (key in names(self$additional_properties)) {
        CommodityPriceDTOObject[[key]] <- self$additional_properties[[key]]
      }

      CommodityPriceDTOObject
    },
    #' Deserialize JSON string into an instance of CommodityPriceDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CommodityPriceDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CommodityPriceDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`adm0Code`)) {
        self$`adm0Code` <- this_object$`adm0Code`
      }
      if (!is.null(this_object$`commodityId`)) {
        self$`commodityId` <- this_object$`commodityId`
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
      if (!is.null(this_object$`commodityPriceDateDay`)) {
        self$`commodityPriceDateDay` <- this_object$`commodityPriceDateDay`
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
      if (!is.null(this_object$`commodityPriceFlag`)) {
        self$`commodityPriceFlag` <- this_object$`commodityPriceFlag`
      }
      if (!is.null(this_object$`commodityPriceInsertDate`)) {
        self$`commodityPriceInsertDate` <- this_object$`commodityPriceInsertDate`
      }
      if (!is.null(this_object$`commodityPriceMetadata`)) {
        `commoditypricemetadata_object` <- AnyType$new()
        `commoditypricemetadata_object`$fromJSON(jsonlite::toJSON(this_object$`commodityPriceMetadata`, auto_unbox = TRUE, digits = NA))
        self$`commodityPriceMetadata` <- `commoditypricemetadata_object`
      }
      if (!is.null(this_object$`commodityPriceObservations`)) {
        self$`commodityPriceObservations` <- this_object$`commodityPriceObservations`
      }
      if (!is.null(this_object$`commodityPriceSourceName`)) {
        self$`commodityPriceSourceName` <- this_object$`commodityPriceSourceName`
      }
      if (!is.null(this_object$`commodityUnitId`)) {
        self$`commodityUnitId` <- this_object$`commodityUnitId`
      }
      if (!is.null(this_object$`countryISO3`)) {
        self$`countryISO3` <- this_object$`countryISO3`
      }
      if (!is.null(this_object$`countryName`)) {
        self$`countryName` <- this_object$`countryName`
      }
      if (!is.null(this_object$`currencyId`)) {
        self$`currencyId` <- this_object$`currencyId`
      }
      if (!is.null(this_object$`currencyName`)) {
        self$`currencyName` <- this_object$`currencyName`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`marketId`)) {
        self$`marketId` <- this_object$`marketId`
      }
      if (!is.null(this_object$`marketName`)) {
        self$`marketName` <- this_object$`marketName`
      }
      if (!is.null(this_object$`originalFrequency`)) {
        self$`originalFrequency` <- this_object$`originalFrequency`
      }
      if (!is.null(this_object$`priceTypeId`)) {
        self$`priceTypeId` <- this_object$`priceTypeId`
      }
      if (!is.null(this_object$`priceTypeName`)) {
        self$`priceTypeName` <- this_object$`priceTypeName`
      }
      if (!is.null(this_object$`unitName`)) {
        self$`unitName` <- this_object$`unitName`
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
    #' @return CommodityPriceDTO in JSON format
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
        if (!is.null(self$`commodityId`)) {
          sprintf(
          '"commodityId":
            %d
                    ',
          self$`commodityId`
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
        if (!is.null(self$`commodityPriceDateDay`)) {
          sprintf(
          '"commodityPriceDateDay":
            %d
                    ',
          self$`commodityPriceDateDay`
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
        if (!is.null(self$`commodityPriceFlag`)) {
          sprintf(
          '"commodityPriceFlag":
            "%s"
                    ',
          self$`commodityPriceFlag`
          )
        },
        if (!is.null(self$`commodityPriceInsertDate`)) {
          sprintf(
          '"commodityPriceInsertDate":
            "%s"
                    ',
          self$`commodityPriceInsertDate`
          )
        },
        if (!is.null(self$`commodityPriceMetadata`)) {
          sprintf(
          '"commodityPriceMetadata":
          %s
          ',
          jsonlite::toJSON(self$`commodityPriceMetadata`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`commodityUnitId`)) {
          sprintf(
          '"commodityUnitId":
            %d
                    ',
          self$`commodityUnitId`
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
        if (!is.null(self$`currencyId`)) {
          sprintf(
          '"currencyId":
            %d
                    ',
          self$`currencyId`
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
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
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
        if (!is.null(self$`priceTypeId`)) {
          sprintf(
          '"priceTypeId":
            %d
                    ',
          self$`priceTypeId`
          )
        },
        if (!is.null(self$`priceTypeName`)) {
          sprintf(
          '"priceTypeName":
            "%s"
                    ',
          self$`priceTypeName`
          )
        },
        if (!is.null(self$`unitName`)) {
          sprintf(
          '"unitName":
            "%s"
                    ',
          self$`unitName`
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
    #' Deserialize JSON string into an instance of CommodityPriceDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CommodityPriceDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CommodityPriceDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`adm0Code` <- this_object$`adm0Code`
      self$`commodityId` <- this_object$`commodityId`
      self$`commodityName` <- this_object$`commodityName`
      self$`commodityPrice` <- this_object$`commodityPrice`
      self$`commodityPriceDate` <- this_object$`commodityPriceDate`
      self$`commodityPriceDateDay` <- this_object$`commodityPriceDateDay`
      self$`commodityPriceDateMonth` <- this_object$`commodityPriceDateMonth`
      self$`commodityPriceDateWeek` <- this_object$`commodityPriceDateWeek`
      self$`commodityPriceDateYear` <- this_object$`commodityPriceDateYear`
      self$`commodityPriceFlag` <- this_object$`commodityPriceFlag`
      self$`commodityPriceInsertDate` <- this_object$`commodityPriceInsertDate`
      self$`commodityPriceMetadata` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`commodityPriceMetadata`, auto_unbox = TRUE, digits = NA))
      self$`commodityPriceObservations` <- this_object$`commodityPriceObservations`
      self$`commodityPriceSourceName` <- this_object$`commodityPriceSourceName`
      self$`commodityUnitId` <- this_object$`commodityUnitId`
      self$`countryISO3` <- this_object$`countryISO3`
      self$`countryName` <- this_object$`countryName`
      self$`currencyId` <- this_object$`currencyId`
      self$`currencyName` <- this_object$`currencyName`
      self$`id` <- this_object$`id`
      self$`marketId` <- this_object$`marketId`
      self$`marketName` <- this_object$`marketName`
      self$`originalFrequency` <- this_object$`originalFrequency`
      self$`priceTypeId` <- this_object$`priceTypeId`
      self$`priceTypeName` <- this_object$`priceTypeName`
      self$`unitName` <- this_object$`unitName`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to CommodityPriceDTO
    #'
    #' @description
    #' Validate JSON input with respect to CommodityPriceDTO and throw an exception if invalid
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
    #' @return String representation of CommodityPriceDTO
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
# CommodityPriceDTO$unlock()
#
## Below is an example to define the print function
# CommodityPriceDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CommodityPriceDTO$lock()

