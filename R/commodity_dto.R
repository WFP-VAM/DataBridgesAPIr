#' Create a new CommodityDTO
#'
#' @description
#' CommodityDTO Class
#'
#' @docType class
#' @title CommodityDTO
#' @description CommodityDTO Class
#' @format An \code{R6Class} generator object
#' @field categoryId  integer [optional]
#' @field coicop2018 The COICOP 2018 definition character [optional]
#' @field createDate  character [optional]
#' @field id The internal ID of the commodity integer [optional]
#' @field name The name of the commodity character [optional]
#' @field parentId The internal parent ID of the commodity integer [optional]
#' @field processing  list(\link{CommodityProcessingDTO}) [optional]
#' @field qualities  list(\link{CommodityQualityDTO}) [optional]
#' @field supply  integer [optional]
#' @field updateDate  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CommodityDTO <- R6::R6Class(
  "CommodityDTO",
  inherit = null<String, AnyType>,
  public = list(
    `categoryId` = NULL,
    `coicop2018` = NULL,
    `createDate` = NULL,
    `id` = NULL,
    `name` = NULL,
    `parentId` = NULL,
    `processing` = NULL,
    `qualities` = NULL,
    `supply` = NULL,
    `updateDate` = NULL,
    `_field_list` = c("categoryId", "coicop2018", "createDate", "id", "name", "parentId", "processing", "qualities", "supply", "updateDate"),
    `additional_properties` = list(),
    #' Initialize a new CommodityDTO class.
    #'
    #' @description
    #' Initialize a new CommodityDTO class.
    #'
    #' @param categoryId categoryId
    #' @param coicop2018 The COICOP 2018 definition
    #' @param createDate createDate
    #' @param id The internal ID of the commodity
    #' @param name The name of the commodity
    #' @param parentId The internal parent ID of the commodity
    #' @param processing processing
    #' @param qualities qualities
    #' @param supply supply
    #' @param updateDate updateDate
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`categoryId` = NULL, `coicop2018` = NULL, `createDate` = NULL, `id` = NULL, `name` = NULL, `parentId` = NULL, `processing` = NULL, `qualities` = NULL, `supply` = NULL, `updateDate` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`categoryId`)) {
        if (!(is.numeric(`categoryId`) && length(`categoryId`) == 1)) {
          stop(paste("Error! Invalid data for `categoryId`. Must be an integer:", `categoryId`))
        }
        self$`categoryId` <- `categoryId`
      }
      if (!is.null(`coicop2018`)) {
        if (!(is.character(`coicop2018`) && length(`coicop2018`) == 1)) {
          stop(paste("Error! Invalid data for `coicop2018`. Must be a string:", `coicop2018`))
        }
        self$`coicop2018` <- `coicop2018`
      }
      if (!is.null(`createDate`)) {
        if (!is.character(`createDate`)) {
          stop(paste("Error! Invalid data for `createDate`. Must be a string:", `createDate`))
        }
        self$`createDate` <- `createDate`
      }
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
      if (!is.null(`parentId`)) {
        if (!(is.numeric(`parentId`) && length(`parentId`) == 1)) {
          stop(paste("Error! Invalid data for `parentId`. Must be an integer:", `parentId`))
        }
        self$`parentId` <- `parentId`
      }
      if (!is.null(`processing`)) {
        stopifnot(is.vector(`processing`), length(`processing`) != 0)
        sapply(`processing`, function(x) stopifnot(R6::is.R6(x)))
        self$`processing` <- `processing`
      }
      if (!is.null(`qualities`)) {
        stopifnot(is.vector(`qualities`), length(`qualities`) != 0)
        sapply(`qualities`, function(x) stopifnot(R6::is.R6(x)))
        self$`qualities` <- `qualities`
      }
      if (!is.null(`supply`)) {
        if (!(is.numeric(`supply`) && length(`supply`) == 1)) {
          stop(paste("Error! Invalid data for `supply`. Must be an integer:", `supply`))
        }
        self$`supply` <- `supply`
      }
      if (!is.null(`updateDate`)) {
        if (!is.character(`updateDate`)) {
          stop(paste("Error! Invalid data for `updateDate`. Must be a string:", `updateDate`))
        }
        self$`updateDate` <- `updateDate`
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
    #' @return CommodityDTO in JSON format
    #' @export
    toJSON = function() {
      CommodityDTOObject <- list()
      if (!is.null(self$`categoryId`)) {
        CommodityDTOObject[["categoryId"]] <-
          self$`categoryId`
      }
      if (!is.null(self$`coicop2018`)) {
        CommodityDTOObject[["coicop2018"]] <-
          self$`coicop2018`
      }
      if (!is.null(self$`createDate`)) {
        CommodityDTOObject[["createDate"]] <-
          self$`createDate`
      }
      if (!is.null(self$`id`)) {
        CommodityDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CommodityDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`parentId`)) {
        CommodityDTOObject[["parentId"]] <-
          self$`parentId`
      }
      if (!is.null(self$`processing`)) {
        CommodityDTOObject[["processing"]] <-
          lapply(self$`processing`, function(x) x$toJSON())
      }
      if (!is.null(self$`qualities`)) {
        CommodityDTOObject[["qualities"]] <-
          lapply(self$`qualities`, function(x) x$toJSON())
      }
      if (!is.null(self$`supply`)) {
        CommodityDTOObject[["supply"]] <-
          self$`supply`
      }
      if (!is.null(self$`updateDate`)) {
        CommodityDTOObject[["updateDate"]] <-
          self$`updateDate`
      }
      for (key in names(self$additional_properties)) {
        CommodityDTOObject[[key]] <- self$additional_properties[[key]]
      }

      CommodityDTOObject
    },
    #' Deserialize JSON string into an instance of CommodityDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CommodityDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CommodityDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`categoryId`)) {
        self$`categoryId` <- this_object$`categoryId`
      }
      if (!is.null(this_object$`coicop2018`)) {
        self$`coicop2018` <- this_object$`coicop2018`
      }
      if (!is.null(this_object$`createDate`)) {
        self$`createDate` <- this_object$`createDate`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`parentId`)) {
        self$`parentId` <- this_object$`parentId`
      }
      if (!is.null(this_object$`processing`)) {
        self$`processing` <- ApiClient$new()$deserializeObj(this_object$`processing`, "array[CommodityProcessingDTO]", loadNamespace("databridges"))
      }
      if (!is.null(this_object$`qualities`)) {
        self$`qualities` <- ApiClient$new()$deserializeObj(this_object$`qualities`, "array[CommodityQualityDTO]", loadNamespace("databridges"))
      }
      if (!is.null(this_object$`supply`)) {
        self$`supply` <- this_object$`supply`
      }
      if (!is.null(this_object$`updateDate`)) {
        self$`updateDate` <- this_object$`updateDate`
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
    #' @return CommodityDTO in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`categoryId`)) {
          sprintf(
          '"categoryId":
            %d
                    ',
          self$`categoryId`
          )
        },
        if (!is.null(self$`coicop2018`)) {
          sprintf(
          '"coicop2018":
            "%s"
                    ',
          self$`coicop2018`
          )
        },
        if (!is.null(self$`createDate`)) {
          sprintf(
          '"createDate":
            "%s"
                    ',
          self$`createDate`
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`parentId`)) {
          sprintf(
          '"parentId":
            %d
                    ',
          self$`parentId`
          )
        },
        if (!is.null(self$`processing`)) {
          sprintf(
          '"processing":
          [%s]
',
          paste(sapply(self$`processing`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`qualities`)) {
          sprintf(
          '"qualities":
          [%s]
',
          paste(sapply(self$`qualities`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`supply`)) {
          sprintf(
          '"supply":
            %d
                    ',
          self$`supply`
          )
        },
        if (!is.null(self$`updateDate`)) {
          sprintf(
          '"updateDate":
            "%s"
                    ',
          self$`updateDate`
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
    #' Deserialize JSON string into an instance of CommodityDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CommodityDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CommodityDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`categoryId` <- this_object$`categoryId`
      self$`coicop2018` <- this_object$`coicop2018`
      self$`createDate` <- this_object$`createDate`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`parentId` <- this_object$`parentId`
      self$`processing` <- ApiClient$new()$deserializeObj(this_object$`processing`, "array[CommodityProcessingDTO]", loadNamespace("databridges"))
      self$`qualities` <- ApiClient$new()$deserializeObj(this_object$`qualities`, "array[CommodityQualityDTO]", loadNamespace("databridges"))
      self$`supply` <- this_object$`supply`
      self$`updateDate` <- this_object$`updateDate`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to CommodityDTO
    #'
    #' @description
    #' Validate JSON input with respect to CommodityDTO and throw an exception if invalid
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
    #' @return String representation of CommodityDTO
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
# CommodityDTO$unlock()
#
## Below is an example to define the print function
# CommodityDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CommodityDTO$lock()

