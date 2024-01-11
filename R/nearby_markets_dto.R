#' Create a new NearbyMarketsDTO
#'
#' @description
#' NearbyMarketsDTO Class
#'
#' @docType class
#' @title NearbyMarketsDTO
#' @description NearbyMarketsDTO Class
#' @format An \code{R6Class} generator object
#' @field distance The distance in meters of the market from the provided point numeric [optional]
#' @field marketId The internal ID of the market integer [optional]
#' @field marketName The name of the market character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NearbyMarketsDTO <- R6::R6Class(
  "NearbyMarketsDTO",
  inherit = null<String, AnyType>,
  public = list(
    `distance` = NULL,
    `marketId` = NULL,
    `marketName` = NULL,
    `_field_list` = c("distance", "marketId", "marketName"),
    `additional_properties` = list(),
    #' Initialize a new NearbyMarketsDTO class.
    #'
    #' @description
    #' Initialize a new NearbyMarketsDTO class.
    #'
    #' @param distance The distance in meters of the market from the provided point
    #' @param marketId The internal ID of the market
    #' @param marketName The name of the market
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`distance` = NULL, `marketId` = NULL, `marketName` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
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
    #' @return NearbyMarketsDTO in JSON format
    #' @export
    toJSON = function() {
      NearbyMarketsDTOObject <- list()
      if (!is.null(self$`distance`)) {
        NearbyMarketsDTOObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`marketId`)) {
        NearbyMarketsDTOObject[["marketId"]] <-
          self$`marketId`
      }
      if (!is.null(self$`marketName`)) {
        NearbyMarketsDTOObject[["marketName"]] <-
          self$`marketName`
      }
      for (key in names(self$additional_properties)) {
        NearbyMarketsDTOObject[[key]] <- self$additional_properties[[key]]
      }

      NearbyMarketsDTOObject
    },
    #' Deserialize JSON string into an instance of NearbyMarketsDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of NearbyMarketsDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of NearbyMarketsDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`marketId`)) {
        self$`marketId` <- this_object$`marketId`
      }
      if (!is.null(this_object$`marketName`)) {
        self$`marketName` <- this_object$`marketName`
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
    #' @return NearbyMarketsDTO in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`distance`)) {
          sprintf(
          '"distance":
            %d
                    ',
          self$`distance`
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
    #' Deserialize JSON string into an instance of NearbyMarketsDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of NearbyMarketsDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of NearbyMarketsDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`distance` <- this_object$`distance`
      self$`marketId` <- this_object$`marketId`
      self$`marketName` <- this_object$`marketName`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to NearbyMarketsDTO
    #'
    #' @description
    #' Validate JSON input with respect to NearbyMarketsDTO and throw an exception if invalid
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
    #' @return String representation of NearbyMarketsDTO
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
# NearbyMarketsDTO$unlock()
#
## Below is an example to define the print function
# NearbyMarketsDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NearbyMarketsDTO$lock()

