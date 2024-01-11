#' Create a new ProblemDetails
#'
#' @description
#' ProblemDetails Class
#'
#' @docType class
#' @title ProblemDetails
#' @description ProblemDetails Class
#' @format An \code{R6Class} generator object
#' @field detail  character [optional]
#' @field instance  character [optional]
#' @field status  integer [optional]
#' @field title  character [optional]
#' @field type  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProblemDetails <- R6::R6Class(
  "ProblemDetails",
  inherit = null<String, AnyType>,
  public = list(
    `detail` = NULL,
    `instance` = NULL,
    `status` = NULL,
    `title` = NULL,
    `type` = NULL,
    `_field_list` = c("detail", "instance", "status", "title", "type"),
    `additional_properties` = list(),
    #' Initialize a new ProblemDetails class.
    #'
    #' @description
    #' Initialize a new ProblemDetails class.
    #'
    #' @param detail detail
    #' @param instance instance
    #' @param status status
    #' @param title title
    #' @param type type
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`detail` = NULL, `instance` = NULL, `status` = NULL, `title` = NULL, `type` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`detail`)) {
        if (!(is.character(`detail`) && length(`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", `detail`))
        }
        self$`detail` <- `detail`
      }
      if (!is.null(`instance`)) {
        if (!(is.character(`instance`) && length(`instance`) == 1)) {
          stop(paste("Error! Invalid data for `instance`. Must be a string:", `instance`))
        }
        self$`instance` <- `instance`
      }
      if (!is.null(`status`)) {
        if (!(is.numeric(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be an integer:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return ProblemDetails in JSON format
    #' @export
    toJSON = function() {
      ProblemDetailsObject <- list()
      if (!is.null(self$`detail`)) {
        ProblemDetailsObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`instance`)) {
        ProblemDetailsObject[["instance"]] <-
          self$`instance`
      }
      if (!is.null(self$`status`)) {
        ProblemDetailsObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        ProblemDetailsObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`type`)) {
        ProblemDetailsObject[["type"]] <-
          self$`type`
      }
      for (key in names(self$additional_properties)) {
        ProblemDetailsObject[[key]] <- self$additional_properties[[key]]
      }

      ProblemDetailsObject
    },
    #' Deserialize JSON string into an instance of ProblemDetails
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProblemDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProblemDetails
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      if (!is.null(this_object$`instance`)) {
        self$`instance` <- this_object$`instance`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
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
    #' @return ProblemDetails in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`detail`)) {
          sprintf(
          '"detail":
            "%s"
                    ',
          self$`detail`
          )
        },
        if (!is.null(self$`instance`)) {
          sprintf(
          '"instance":
            "%s"
                    ',
          self$`instance`
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            %d
                    ',
          self$`status`
          )
        },
        if (!is.null(self$`title`)) {
          sprintf(
          '"title":
            "%s"
                    ',
          self$`title`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
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
    #' Deserialize JSON string into an instance of ProblemDetails
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProblemDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProblemDetails
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detail` <- this_object$`detail`
      self$`instance` <- this_object$`instance`
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`type` <- this_object$`type`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ProblemDetails
    #'
    #' @description
    #' Validate JSON input with respect to ProblemDetails and throw an exception if invalid
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
    #' @return String representation of ProblemDetails
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
# ProblemDetails$unlock()
#
## Below is an example to define the print function
# ProblemDetails$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProblemDetails$lock()

