#' Create a new UsdIndirectQuotationPagedResult
#'
#' @description
#' UsdIndirectQuotationPagedResult Class
#'
#' @docType class
#' @title UsdIndirectQuotationPagedResult
#' @description UsdIndirectQuotationPagedResult Class
#' @format An \code{R6Class} generator object
#' @field items  list(\link{UsdIndirectQuotation}) [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsdIndirectQuotationPagedResult <- R6::R6Class(
  "UsdIndirectQuotationPagedResult",
  inherit = null<String, AnyType>,
  public = list(
    `items` = NULL,
    `_field_list` = c("items"),
    `additional_properties` = list(),
    #' Initialize a new UsdIndirectQuotationPagedResult class.
    #'
    #' @description
    #' Initialize a new UsdIndirectQuotationPagedResult class.
    #'
    #' @param items items
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`items` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
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
    #' @return UsdIndirectQuotationPagedResult in JSON format
    #' @export
    toJSON = function() {
      UsdIndirectQuotationPagedResultObject <- list()
      if (!is.null(self$`items`)) {
        UsdIndirectQuotationPagedResultObject[["items"]] <-
          lapply(self$`items`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        UsdIndirectQuotationPagedResultObject[[key]] <- self$additional_properties[[key]]
      }

      UsdIndirectQuotationPagedResultObject
    },
    #' Deserialize JSON string into an instance of UsdIndirectQuotationPagedResult
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsdIndirectQuotationPagedResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsdIndirectQuotationPagedResult
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[UsdIndirectQuotation]", loadNamespace("DataBridgesAPIr"))
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
    #' @return UsdIndirectQuotationPagedResult in JSON format
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
    #' Deserialize JSON string into an instance of UsdIndirectQuotationPagedResult
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsdIndirectQuotationPagedResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsdIndirectQuotationPagedResult
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[UsdIndirectQuotation]", loadNamespace("DataBridgesAPIr"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UsdIndirectQuotationPagedResult
    #'
    #' @description
    #' Validate JSON input with respect to UsdIndirectQuotationPagedResult and throw an exception if invalid
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
    #' @return String representation of UsdIndirectQuotationPagedResult
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
# UsdIndirectQuotationPagedResult$unlock()
#
## Below is an example to define the print function
# UsdIndirectQuotationPagedResult$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UsdIndirectQuotationPagedResult$lock()

