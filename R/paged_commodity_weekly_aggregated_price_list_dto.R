#' Create a new PagedCommodityWeeklyAggregatedPriceListDTO
#'
#' @description
#' PagedCommodityWeeklyAggregatedPriceListDTO Class
#'
#' @docType class
#' @title PagedCommodityWeeklyAggregatedPriceListDTO
#' @description PagedCommodityWeeklyAggregatedPriceListDTO Class
#' @format An \code{R6Class} generator object
#' @field items The list of paged items list(\link{WeeklyAggregatedPrice}) [optional]
#' @field page The current page integer [optional]
#' @field totalItems The total number of items integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PagedCommodityWeeklyAggregatedPriceListDTO <- R6::R6Class(
  "PagedCommodityWeeklyAggregatedPriceListDTO",
  inherit = null<String, AnyType>,
  public = list(
    `items` = NULL,
    `page` = NULL,
    `totalItems` = NULL,
    `_field_list` = c("items", "page", "totalItems"),
    `additional_properties` = list(),
    #' Initialize a new PagedCommodityWeeklyAggregatedPriceListDTO class.
    #'
    #' @description
    #' Initialize a new PagedCommodityWeeklyAggregatedPriceListDTO class.
    #'
    #' @param items The list of paged items
    #' @param page The current page
    #' @param totalItems The total number of items
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`items` = NULL, `page` = NULL, `totalItems` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!is.null(`page`)) {
        if (!(is.numeric(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", `page`))
        }
        self$`page` <- `page`
      }
      if (!is.null(`totalItems`)) {
        if (!(is.numeric(`totalItems`) && length(`totalItems`) == 1)) {
          stop(paste("Error! Invalid data for `totalItems`. Must be an integer:", `totalItems`))
        }
        self$`totalItems` <- `totalItems`
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
    #' @return PagedCommodityWeeklyAggregatedPriceListDTO in JSON format
    #' @export
    toJSON = function() {
      PagedCommodityWeeklyAggregatedPriceListDTOObject <- list()
      if (!is.null(self$`items`)) {
        PagedCommodityWeeklyAggregatedPriceListDTOObject[["items"]] <-
          lapply(self$`items`, function(x) x$toJSON())
      }
      if (!is.null(self$`page`)) {
        PagedCommodityWeeklyAggregatedPriceListDTOObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`totalItems`)) {
        PagedCommodityWeeklyAggregatedPriceListDTOObject[["totalItems"]] <-
          self$`totalItems`
      }
      for (key in names(self$additional_properties)) {
        PagedCommodityWeeklyAggregatedPriceListDTOObject[[key]] <- self$additional_properties[[key]]
      }

      PagedCommodityWeeklyAggregatedPriceListDTOObject
    },
    #' Deserialize JSON string into an instance of PagedCommodityWeeklyAggregatedPriceListDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of PagedCommodityWeeklyAggregatedPriceListDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of PagedCommodityWeeklyAggregatedPriceListDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[WeeklyAggregatedPrice]", loadNamespace("DataBridgesAPIr"))
      }
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`totalItems`)) {
        self$`totalItems` <- this_object$`totalItems`
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
    #' @return PagedCommodityWeeklyAggregatedPriceListDTO in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`items`)) {
          sprintf(
          '"items":
          [%s]
',
          paste(sapply(self$`items`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`page`)) {
          sprintf(
          '"page":
            %d
                    ',
          self$`page`
          )
        },
        if (!is.null(self$`totalItems`)) {
          sprintf(
          '"totalItems":
            %d
                    ',
          self$`totalItems`
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
    #' Deserialize JSON string into an instance of PagedCommodityWeeklyAggregatedPriceListDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of PagedCommodityWeeklyAggregatedPriceListDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of PagedCommodityWeeklyAggregatedPriceListDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[WeeklyAggregatedPrice]", loadNamespace("DataBridgesAPIr"))
      self$`page` <- this_object$`page`
      self$`totalItems` <- this_object$`totalItems`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to PagedCommodityWeeklyAggregatedPriceListDTO
    #'
    #' @description
    #' Validate JSON input with respect to PagedCommodityWeeklyAggregatedPriceListDTO and throw an exception if invalid
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
    #' @return String representation of PagedCommodityWeeklyAggregatedPriceListDTO
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
# PagedCommodityWeeklyAggregatedPriceListDTO$unlock()
#
## Below is an example to define the print function
# PagedCommodityWeeklyAggregatedPriceListDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PagedCommodityWeeklyAggregatedPriceListDTO$lock()

