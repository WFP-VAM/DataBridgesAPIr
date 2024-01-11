#' Create a new Geometry
#'
#' @description
#' Geometry Class
#'
#' @docType class
#' @title Geometry
#' @description Geometry Class
#' @format An \code{R6Class} generator object
#' @field area  numeric [optional]
#' @field boundary  \link{Geometry} [optional]
#' @field boundaryDimension  \link{Dimension} [optional]
#' @field centroid  \link{Point} [optional]
#' @field coordinate  \link{Coordinate} [optional]
#' @field coordinates  list(\link{Coordinate}) [optional]
#' @field dimension  \link{Dimension} [optional]
#' @field envelope  \link{Geometry} [optional]
#' @field envelopeInternal  \link{Envelope} [optional]
#' @field factory  \link{GeometryFactory} [optional]
#' @field geometryType  character [optional]
#' @field interiorPoint  \link{Point} [optional]
#' @field isEmpty  character [optional]
#' @field isRectangle  character [optional]
#' @field isSimple  character [optional]
#' @field isValid  character [optional]
#' @field length  numeric [optional]
#' @field numGeometries  integer [optional]
#' @field numPoints  integer [optional]
#' @field ogcGeometryType  \link{OgcGeometryType} [optional]
#' @field pointOnSurface  \link{Point} [optional]
#' @field precisionModel  \link{PrecisionModel} [optional]
#' @field srid  integer [optional]
#' @field userData  \link{AnyType} [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Geometry <- R6::R6Class(
  "Geometry",
  inherit = null<String, AnyType>,
  public = list(
    `area` = NULL,
    `boundary` = NULL,
    `boundaryDimension` = NULL,
    `centroid` = NULL,
    `coordinate` = NULL,
    `coordinates` = NULL,
    `dimension` = NULL,
    `envelope` = NULL,
    `envelopeInternal` = NULL,
    `factory` = NULL,
    `geometryType` = NULL,
    `interiorPoint` = NULL,
    `isEmpty` = NULL,
    `isRectangle` = NULL,
    `isSimple` = NULL,
    `isValid` = NULL,
    `length` = NULL,
    `numGeometries` = NULL,
    `numPoints` = NULL,
    `ogcGeometryType` = NULL,
    `pointOnSurface` = NULL,
    `precisionModel` = NULL,
    `srid` = NULL,
    `userData` = NULL,
    `_field_list` = c("area", "boundary", "boundaryDimension", "centroid", "coordinate", "coordinates", "dimension", "envelope", "envelopeInternal", "factory", "geometryType", "interiorPoint", "isEmpty", "isRectangle", "isSimple", "isValid", "length", "numGeometries", "numPoints", "ogcGeometryType", "pointOnSurface", "precisionModel", "srid", "userData"),
    `additional_properties` = list(),
    #' Initialize a new Geometry class.
    #'
    #' @description
    #' Initialize a new Geometry class.
    #'
    #' @param area area
    #' @param boundary boundary
    #' @param boundaryDimension boundaryDimension
    #' @param centroid centroid
    #' @param coordinate coordinate
    #' @param coordinates coordinates
    #' @param dimension dimension
    #' @param envelope envelope
    #' @param envelopeInternal envelopeInternal
    #' @param factory factory
    #' @param geometryType geometryType
    #' @param interiorPoint interiorPoint
    #' @param isEmpty isEmpty
    #' @param isRectangle isRectangle
    #' @param isSimple isSimple
    #' @param isValid isValid
    #' @param length length
    #' @param numGeometries numGeometries
    #' @param numPoints numPoints
    #' @param ogcGeometryType ogcGeometryType
    #' @param pointOnSurface pointOnSurface
    #' @param precisionModel precisionModel
    #' @param srid srid
    #' @param userData userData
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`area` = NULL, `boundary` = NULL, `boundaryDimension` = NULL, `centroid` = NULL, `coordinate` = NULL, `coordinates` = NULL, `dimension` = NULL, `envelope` = NULL, `envelopeInternal` = NULL, `factory` = NULL, `geometryType` = NULL, `interiorPoint` = NULL, `isEmpty` = NULL, `isRectangle` = NULL, `isSimple` = NULL, `isValid` = NULL, `length` = NULL, `numGeometries` = NULL, `numPoints` = NULL, `ogcGeometryType` = NULL, `pointOnSurface` = NULL, `precisionModel` = NULL, `srid` = NULL, `userData` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`area`)) {
        if (!(is.numeric(`area`) && length(`area`) == 1)) {
          stop(paste("Error! Invalid data for `area`. Must be a number:", `area`))
        }
        self$`area` <- `area`
      }
      if (!is.null(`boundary`)) {
        stopifnot(R6::is.R6(`boundary`))
        self$`boundary` <- `boundary`
      }
      if (!is.null(`boundaryDimension`)) {
        if (!(`boundaryDimension` %in% c())) {
          stop(paste("Error! \"", `boundaryDimension`, "\" cannot be assigned to `boundaryDimension`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`boundaryDimension`))
        self$`boundaryDimension` <- `boundaryDimension`
      }
      if (!is.null(`centroid`)) {
        stopifnot(R6::is.R6(`centroid`))
        self$`centroid` <- `centroid`
      }
      if (!is.null(`coordinate`)) {
        stopifnot(R6::is.R6(`coordinate`))
        self$`coordinate` <- `coordinate`
      }
      if (!is.null(`coordinates`)) {
        stopifnot(is.vector(`coordinates`), length(`coordinates`) != 0)
        sapply(`coordinates`, function(x) stopifnot(R6::is.R6(x)))
        self$`coordinates` <- `coordinates`
      }
      if (!is.null(`dimension`)) {
        if (!(`dimension` %in% c())) {
          stop(paste("Error! \"", `dimension`, "\" cannot be assigned to `dimension`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`dimension`))
        self$`dimension` <- `dimension`
      }
      if (!is.null(`envelope`)) {
        stopifnot(R6::is.R6(`envelope`))
        self$`envelope` <- `envelope`
      }
      if (!is.null(`envelopeInternal`)) {
        stopifnot(R6::is.R6(`envelopeInternal`))
        self$`envelopeInternal` <- `envelopeInternal`
      }
      if (!is.null(`factory`)) {
        stopifnot(R6::is.R6(`factory`))
        self$`factory` <- `factory`
      }
      if (!is.null(`geometryType`)) {
        if (!(is.character(`geometryType`) && length(`geometryType`) == 1)) {
          stop(paste("Error! Invalid data for `geometryType`. Must be a string:", `geometryType`))
        }
        self$`geometryType` <- `geometryType`
      }
      if (!is.null(`interiorPoint`)) {
        stopifnot(R6::is.R6(`interiorPoint`))
        self$`interiorPoint` <- `interiorPoint`
      }
      if (!is.null(`isEmpty`)) {
        if (!(is.logical(`isEmpty`) && length(`isEmpty`) == 1)) {
          stop(paste("Error! Invalid data for `isEmpty`. Must be a boolean:", `isEmpty`))
        }
        self$`isEmpty` <- `isEmpty`
      }
      if (!is.null(`isRectangle`)) {
        if (!(is.logical(`isRectangle`) && length(`isRectangle`) == 1)) {
          stop(paste("Error! Invalid data for `isRectangle`. Must be a boolean:", `isRectangle`))
        }
        self$`isRectangle` <- `isRectangle`
      }
      if (!is.null(`isSimple`)) {
        if (!(is.logical(`isSimple`) && length(`isSimple`) == 1)) {
          stop(paste("Error! Invalid data for `isSimple`. Must be a boolean:", `isSimple`))
        }
        self$`isSimple` <- `isSimple`
      }
      if (!is.null(`isValid`)) {
        if (!(is.logical(`isValid`) && length(`isValid`) == 1)) {
          stop(paste("Error! Invalid data for `isValid`. Must be a boolean:", `isValid`))
        }
        self$`isValid` <- `isValid`
      }
      if (!is.null(`length`)) {
        if (!(is.numeric(`length`) && length(`length`) == 1)) {
          stop(paste("Error! Invalid data for `length`. Must be a number:", `length`))
        }
        self$`length` <- `length`
      }
      if (!is.null(`numGeometries`)) {
        if (!(is.numeric(`numGeometries`) && length(`numGeometries`) == 1)) {
          stop(paste("Error! Invalid data for `numGeometries`. Must be an integer:", `numGeometries`))
        }
        self$`numGeometries` <- `numGeometries`
      }
      if (!is.null(`numPoints`)) {
        if (!(is.numeric(`numPoints`) && length(`numPoints`) == 1)) {
          stop(paste("Error! Invalid data for `numPoints`. Must be an integer:", `numPoints`))
        }
        self$`numPoints` <- `numPoints`
      }
      if (!is.null(`ogcGeometryType`)) {
        if (!(`ogcGeometryType` %in% c())) {
          stop(paste("Error! \"", `ogcGeometryType`, "\" cannot be assigned to `ogcGeometryType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`ogcGeometryType`))
        self$`ogcGeometryType` <- `ogcGeometryType`
      }
      if (!is.null(`pointOnSurface`)) {
        stopifnot(R6::is.R6(`pointOnSurface`))
        self$`pointOnSurface` <- `pointOnSurface`
      }
      if (!is.null(`precisionModel`)) {
        stopifnot(R6::is.R6(`precisionModel`))
        self$`precisionModel` <- `precisionModel`
      }
      if (!is.null(`srid`)) {
        if (!(is.numeric(`srid`) && length(`srid`) == 1)) {
          stop(paste("Error! Invalid data for `srid`. Must be an integer:", `srid`))
        }
        self$`srid` <- `srid`
      }
      if (!is.null(`userData`)) {
        stopifnot(R6::is.R6(`userData`))
        self$`userData` <- `userData`
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
    #' @return Geometry in JSON format
    #' @export
    toJSON = function() {
      GeometryObject <- list()
      if (!is.null(self$`area`)) {
        GeometryObject[["area"]] <-
          self$`area`
      }
      if (!is.null(self$`boundary`)) {
        GeometryObject[["boundary"]] <-
          self$`boundary`$toJSON()
      }
      if (!is.null(self$`boundaryDimension`)) {
        GeometryObject[["boundaryDimension"]] <-
          self$`boundaryDimension`$toJSON()
      }
      if (!is.null(self$`centroid`)) {
        GeometryObject[["centroid"]] <-
          self$`centroid`$toJSON()
      }
      if (!is.null(self$`coordinate`)) {
        GeometryObject[["coordinate"]] <-
          self$`coordinate`$toJSON()
      }
      if (!is.null(self$`coordinates`)) {
        GeometryObject[["coordinates"]] <-
          lapply(self$`coordinates`, function(x) x$toJSON())
      }
      if (!is.null(self$`dimension`)) {
        GeometryObject[["dimension"]] <-
          self$`dimension`$toJSON()
      }
      if (!is.null(self$`envelope`)) {
        GeometryObject[["envelope"]] <-
          self$`envelope`$toJSON()
      }
      if (!is.null(self$`envelopeInternal`)) {
        GeometryObject[["envelopeInternal"]] <-
          self$`envelopeInternal`$toJSON()
      }
      if (!is.null(self$`factory`)) {
        GeometryObject[["factory"]] <-
          self$`factory`$toJSON()
      }
      if (!is.null(self$`geometryType`)) {
        GeometryObject[["geometryType"]] <-
          self$`geometryType`
      }
      if (!is.null(self$`interiorPoint`)) {
        GeometryObject[["interiorPoint"]] <-
          self$`interiorPoint`$toJSON()
      }
      if (!is.null(self$`isEmpty`)) {
        GeometryObject[["isEmpty"]] <-
          self$`isEmpty`
      }
      if (!is.null(self$`isRectangle`)) {
        GeometryObject[["isRectangle"]] <-
          self$`isRectangle`
      }
      if (!is.null(self$`isSimple`)) {
        GeometryObject[["isSimple"]] <-
          self$`isSimple`
      }
      if (!is.null(self$`isValid`)) {
        GeometryObject[["isValid"]] <-
          self$`isValid`
      }
      if (!is.null(self$`length`)) {
        GeometryObject[["length"]] <-
          self$`length`
      }
      if (!is.null(self$`numGeometries`)) {
        GeometryObject[["numGeometries"]] <-
          self$`numGeometries`
      }
      if (!is.null(self$`numPoints`)) {
        GeometryObject[["numPoints"]] <-
          self$`numPoints`
      }
      if (!is.null(self$`ogcGeometryType`)) {
        GeometryObject[["ogcGeometryType"]] <-
          self$`ogcGeometryType`$toJSON()
      }
      if (!is.null(self$`pointOnSurface`)) {
        GeometryObject[["pointOnSurface"]] <-
          self$`pointOnSurface`$toJSON()
      }
      if (!is.null(self$`precisionModel`)) {
        GeometryObject[["precisionModel"]] <-
          self$`precisionModel`$toJSON()
      }
      if (!is.null(self$`srid`)) {
        GeometryObject[["srid"]] <-
          self$`srid`
      }
      if (!is.null(self$`userData`)) {
        GeometryObject[["userData"]] <-
          self$`userData`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        GeometryObject[[key]] <- self$additional_properties[[key]]
      }

      GeometryObject
    },
    #' Deserialize JSON string into an instance of Geometry
    #'
    #' @description
    #' Deserialize JSON string into an instance of Geometry
    #'
    #' @param input_json the JSON input
    #' @return the instance of Geometry
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`area`)) {
        self$`area` <- this_object$`area`
      }
      if (!is.null(this_object$`boundary`)) {
        `boundary_object` <- Geometry$new()
        `boundary_object`$fromJSON(jsonlite::toJSON(this_object$`boundary`, auto_unbox = TRUE, digits = NA))
        self$`boundary` <- `boundary_object`
      }
      if (!is.null(this_object$`boundaryDimension`)) {
        `boundarydimension_object` <- Dimension$new()
        `boundarydimension_object`$fromJSON(jsonlite::toJSON(this_object$`boundaryDimension`, auto_unbox = TRUE, digits = NA))
        self$`boundaryDimension` <- `boundarydimension_object`
      }
      if (!is.null(this_object$`centroid`)) {
        `centroid_object` <- Point$new()
        `centroid_object`$fromJSON(jsonlite::toJSON(this_object$`centroid`, auto_unbox = TRUE, digits = NA))
        self$`centroid` <- `centroid_object`
      }
      if (!is.null(this_object$`coordinate`)) {
        `coordinate_object` <- Coordinate$new()
        `coordinate_object`$fromJSON(jsonlite::toJSON(this_object$`coordinate`, auto_unbox = TRUE, digits = NA))
        self$`coordinate` <- `coordinate_object`
      }
      if (!is.null(this_object$`coordinates`)) {
        self$`coordinates` <- ApiClient$new()$deserializeObj(this_object$`coordinates`, "array[Coordinate]", loadNamespace("DataBridgesAPIr"))
      }
      if (!is.null(this_object$`dimension`)) {
        `dimension_object` <- Dimension$new()
        `dimension_object`$fromJSON(jsonlite::toJSON(this_object$`dimension`, auto_unbox = TRUE, digits = NA))
        self$`dimension` <- `dimension_object`
      }
      if (!is.null(this_object$`envelope`)) {
        `envelope_object` <- Geometry$new()
        `envelope_object`$fromJSON(jsonlite::toJSON(this_object$`envelope`, auto_unbox = TRUE, digits = NA))
        self$`envelope` <- `envelope_object`
      }
      if (!is.null(this_object$`envelopeInternal`)) {
        `envelopeinternal_object` <- Envelope$new()
        `envelopeinternal_object`$fromJSON(jsonlite::toJSON(this_object$`envelopeInternal`, auto_unbox = TRUE, digits = NA))
        self$`envelopeInternal` <- `envelopeinternal_object`
      }
      if (!is.null(this_object$`factory`)) {
        `factory_object` <- GeometryFactory$new()
        `factory_object`$fromJSON(jsonlite::toJSON(this_object$`factory`, auto_unbox = TRUE, digits = NA))
        self$`factory` <- `factory_object`
      }
      if (!is.null(this_object$`geometryType`)) {
        self$`geometryType` <- this_object$`geometryType`
      }
      if (!is.null(this_object$`interiorPoint`)) {
        `interiorpoint_object` <- Point$new()
        `interiorpoint_object`$fromJSON(jsonlite::toJSON(this_object$`interiorPoint`, auto_unbox = TRUE, digits = NA))
        self$`interiorPoint` <- `interiorpoint_object`
      }
      if (!is.null(this_object$`isEmpty`)) {
        self$`isEmpty` <- this_object$`isEmpty`
      }
      if (!is.null(this_object$`isRectangle`)) {
        self$`isRectangle` <- this_object$`isRectangle`
      }
      if (!is.null(this_object$`isSimple`)) {
        self$`isSimple` <- this_object$`isSimple`
      }
      if (!is.null(this_object$`isValid`)) {
        self$`isValid` <- this_object$`isValid`
      }
      if (!is.null(this_object$`length`)) {
        self$`length` <- this_object$`length`
      }
      if (!is.null(this_object$`numGeometries`)) {
        self$`numGeometries` <- this_object$`numGeometries`
      }
      if (!is.null(this_object$`numPoints`)) {
        self$`numPoints` <- this_object$`numPoints`
      }
      if (!is.null(this_object$`ogcGeometryType`)) {
        `ogcgeometrytype_object` <- OgcGeometryType$new()
        `ogcgeometrytype_object`$fromJSON(jsonlite::toJSON(this_object$`ogcGeometryType`, auto_unbox = TRUE, digits = NA))
        self$`ogcGeometryType` <- `ogcgeometrytype_object`
      }
      if (!is.null(this_object$`pointOnSurface`)) {
        `pointonsurface_object` <- Point$new()
        `pointonsurface_object`$fromJSON(jsonlite::toJSON(this_object$`pointOnSurface`, auto_unbox = TRUE, digits = NA))
        self$`pointOnSurface` <- `pointonsurface_object`
      }
      if (!is.null(this_object$`precisionModel`)) {
        `precisionmodel_object` <- PrecisionModel$new()
        `precisionmodel_object`$fromJSON(jsonlite::toJSON(this_object$`precisionModel`, auto_unbox = TRUE, digits = NA))
        self$`precisionModel` <- `precisionmodel_object`
      }
      if (!is.null(this_object$`srid`)) {
        self$`srid` <- this_object$`srid`
      }
      if (!is.null(this_object$`userData`)) {
        `userdata_object` <- AnyType$new()
        `userdata_object`$fromJSON(jsonlite::toJSON(this_object$`userData`, auto_unbox = TRUE, digits = NA))
        self$`userData` <- `userdata_object`
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
    #' @return Geometry in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`area`)) {
          sprintf(
          '"area":
            %d
                    ',
          self$`area`
          )
        },
        if (!is.null(self$`boundary`)) {
          sprintf(
          '"boundary":
          %s
          ',
          jsonlite::toJSON(self$`boundary`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`boundaryDimension`)) {
          sprintf(
          '"boundaryDimension":
          %s
          ',
          jsonlite::toJSON(self$`boundaryDimension`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`centroid`)) {
          sprintf(
          '"centroid":
          %s
          ',
          jsonlite::toJSON(self$`centroid`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`coordinate`)) {
          sprintf(
          '"coordinate":
          %s
          ',
          jsonlite::toJSON(self$`coordinate`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`coordinates`)) {
          sprintf(
          '"coordinates":
          [%s]
',
          paste(sapply(self$`coordinates`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`dimension`)) {
          sprintf(
          '"dimension":
          %s
          ',
          jsonlite::toJSON(self$`dimension`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`envelope`)) {
          sprintf(
          '"envelope":
          %s
          ',
          jsonlite::toJSON(self$`envelope`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`envelopeInternal`)) {
          sprintf(
          '"envelopeInternal":
          %s
          ',
          jsonlite::toJSON(self$`envelopeInternal`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`factory`)) {
          sprintf(
          '"factory":
          %s
          ',
          jsonlite::toJSON(self$`factory`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`geometryType`)) {
          sprintf(
          '"geometryType":
            "%s"
                    ',
          self$`geometryType`
          )
        },
        if (!is.null(self$`interiorPoint`)) {
          sprintf(
          '"interiorPoint":
          %s
          ',
          jsonlite::toJSON(self$`interiorPoint`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`isEmpty`)) {
          sprintf(
          '"isEmpty":
            %s
                    ',
          tolower(self$`isEmpty`)
          )
        },
        if (!is.null(self$`isRectangle`)) {
          sprintf(
          '"isRectangle":
            %s
                    ',
          tolower(self$`isRectangle`)
          )
        },
        if (!is.null(self$`isSimple`)) {
          sprintf(
          '"isSimple":
            %s
                    ',
          tolower(self$`isSimple`)
          )
        },
        if (!is.null(self$`isValid`)) {
          sprintf(
          '"isValid":
            %s
                    ',
          tolower(self$`isValid`)
          )
        },
        if (!is.null(self$`length`)) {
          sprintf(
          '"length":
            %d
                    ',
          self$`length`
          )
        },
        if (!is.null(self$`numGeometries`)) {
          sprintf(
          '"numGeometries":
            %d
                    ',
          self$`numGeometries`
          )
        },
        if (!is.null(self$`numPoints`)) {
          sprintf(
          '"numPoints":
            %d
                    ',
          self$`numPoints`
          )
        },
        if (!is.null(self$`ogcGeometryType`)) {
          sprintf(
          '"ogcGeometryType":
          %s
          ',
          jsonlite::toJSON(self$`ogcGeometryType`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`pointOnSurface`)) {
          sprintf(
          '"pointOnSurface":
          %s
          ',
          jsonlite::toJSON(self$`pointOnSurface`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`precisionModel`)) {
          sprintf(
          '"precisionModel":
          %s
          ',
          jsonlite::toJSON(self$`precisionModel`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`srid`)) {
          sprintf(
          '"srid":
            %d
                    ',
          self$`srid`
          )
        },
        if (!is.null(self$`userData`)) {
          sprintf(
          '"userData":
          %s
          ',
          jsonlite::toJSON(self$`userData`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of Geometry
    #'
    #' @description
    #' Deserialize JSON string into an instance of Geometry
    #'
    #' @param input_json the JSON input
    #' @return the instance of Geometry
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`area` <- this_object$`area`
      self$`boundary` <- Geometry$new()$fromJSON(jsonlite::toJSON(this_object$`boundary`, auto_unbox = TRUE, digits = NA))
      self$`boundaryDimension` <- Dimension$new()$fromJSON(jsonlite::toJSON(this_object$`boundaryDimension`, auto_unbox = TRUE, digits = NA))
      self$`centroid` <- Point$new()$fromJSON(jsonlite::toJSON(this_object$`centroid`, auto_unbox = TRUE, digits = NA))
      self$`coordinate` <- Coordinate$new()$fromJSON(jsonlite::toJSON(this_object$`coordinate`, auto_unbox = TRUE, digits = NA))
      self$`coordinates` <- ApiClient$new()$deserializeObj(this_object$`coordinates`, "array[Coordinate]", loadNamespace("DataBridgesAPIr"))
      self$`dimension` <- Dimension$new()$fromJSON(jsonlite::toJSON(this_object$`dimension`, auto_unbox = TRUE, digits = NA))
      self$`envelope` <- Geometry$new()$fromJSON(jsonlite::toJSON(this_object$`envelope`, auto_unbox = TRUE, digits = NA))
      self$`envelopeInternal` <- Envelope$new()$fromJSON(jsonlite::toJSON(this_object$`envelopeInternal`, auto_unbox = TRUE, digits = NA))
      self$`factory` <- GeometryFactory$new()$fromJSON(jsonlite::toJSON(this_object$`factory`, auto_unbox = TRUE, digits = NA))
      self$`geometryType` <- this_object$`geometryType`
      self$`interiorPoint` <- Point$new()$fromJSON(jsonlite::toJSON(this_object$`interiorPoint`, auto_unbox = TRUE, digits = NA))
      self$`isEmpty` <- this_object$`isEmpty`
      self$`isRectangle` <- this_object$`isRectangle`
      self$`isSimple` <- this_object$`isSimple`
      self$`isValid` <- this_object$`isValid`
      self$`length` <- this_object$`length`
      self$`numGeometries` <- this_object$`numGeometries`
      self$`numPoints` <- this_object$`numPoints`
      self$`ogcGeometryType` <- OgcGeometryType$new()$fromJSON(jsonlite::toJSON(this_object$`ogcGeometryType`, auto_unbox = TRUE, digits = NA))
      self$`pointOnSurface` <- Point$new()$fromJSON(jsonlite::toJSON(this_object$`pointOnSurface`, auto_unbox = TRUE, digits = NA))
      self$`precisionModel` <- PrecisionModel$new()$fromJSON(jsonlite::toJSON(this_object$`precisionModel`, auto_unbox = TRUE, digits = NA))
      self$`srid` <- this_object$`srid`
      self$`userData` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`userData`, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Geometry
    #'
    #' @description
    #' Validate JSON input with respect to Geometry and throw an exception if invalid
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
    #' @return String representation of Geometry
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
# Geometry$unlock()
#
## Below is an example to define the print function
# Geometry$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Geometry$lock()

