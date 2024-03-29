#' Create a new CommodityProcessingDTO
#'
#' @description
#' CommodityProcessingDTO Class
#'
#' @docType class
#' @title CommodityProcessingDTO
#' @description CommodityProcessingDTO Class
#' @format An \code{R6Class} generator object
#' @field id The internal ID of the commodity integer [optional]
#' @field name The name of the process character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CommodityProcessingDTO <- R6::R6Class(
  "CommodityProcessingDTO",
  inherit = null<String, AnyType>,
  public = list(
    `id` = NULL,
    `name` = NULL,
    `_field_list` = c("id", "name"),
    `additional_properties` = list(),
    #' Initialize a new CommodityProcessingDTO class.
    #'
    #' @description
    #' Initialize a new CommodityProcessingDTO class.
    #'
    #' @param id The internal ID of the commodity
    #' @param name The name of the process
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `name` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return CommodityProcessingDTO in JSON format
    #' @export
    toJSON = function() {
      CommodityProcessingDTOObject <- list()
      if (!is.null(self$`id`)) {
        CommodityProcessingDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CommodityProcessingDTOObject[["name"]] <-
          self$`name`
      }
      for (key in names(self$additional_properties)) {
        CommodityProcessingDTOObject[[key]] <- self$additional_properties[[key]]
      }

      CommodityProcessingDTOObject
    },
    #' Deserialize JSON string into an instance of CommodityProcessingDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CommodityProcessingDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CommodityProcessingDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
    #' @return CommodityProcessingDTO in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
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
    #' Deserialize JSON string into an instance of CommodityProcessingDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CommodityProcessingDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CommodityProcessingDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to CommodityProcessingDTO
    #'
    #' @description
    #' Validate JSON input with respect to CommodityProcessingDTO and throw an exception if invalid
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
    #' @return String representation of CommodityProcessingDTO
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
# CommodityProcessingDTO$unlock()
#
## Below is an example to define the print function
# CommodityProcessingDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CommodityProcessingDTO$lock()

