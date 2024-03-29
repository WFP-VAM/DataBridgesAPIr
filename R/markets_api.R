#' VAM-Data-Bridges
#'
#' API Documentation of the **DataBridges** platform: https://databridges.vam.wfp.org/. For API discussions and details: #api-integration-vam-data-bridges on Slack, [Teams channel](https://teams.microsoft.com/l/team/19%3a4ca595f7681f4ffa8a86b7af58832e8d%40thread.skype/conversations?groupId=cbd1e508-c6e8-459d-96b7-6cac3039c42c&tenantId=462ad9ae-d7d9-4206-b874-71b1e079776f) **API Integration** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern
#'
#' The version of the OpenAPI document: 1.3.1
#' Contact: wfp.economicanalysis@wfp.org
#' Generated by: https://openapi-generator.tech
#'
#' @docType class
#' @title Markets operations
#' @description MarketsApi
#' @format An \code{R6Class} generator object
#' @field api_client Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ MarketsGeoJSONListGet } \emph{ Provide a list of geo referenced markets in a specific country }
#' [![Generic badge](https://img.shields.io/badge/Maturity\%20Level-Production\%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access\%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data\%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern
#'
#' \itemize{
#' \item \emph{ @param } adm0code integer
#' \item \emph{ @param } env Enum < [prod, dev] >
#' \item \emph{ @returnType } list( \link{IFeature} ) \cr
#'
#'
#' \item status code : 200 | Success
#'
#' \item return type : array[IFeature]
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Bad Request
#'
#' \item return type : array[BadRequestDTO]
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ MarketsListGet } \emph{ Get a complete list of markets in a country }
#' [![Generic badge](https://img.shields.io/badge/Maturity\%20Level-Production\%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access\%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data\%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern
#'
#' \itemize{
#' \item \emph{ @param } country_code character
#' \item \emph{ @param } page integer
#' \item \emph{ @param } format character
#' \item \emph{ @param } env Enum < [prod, dev] >
#'
#'
#' \item status code : 200 | Success
#'
#' \item return type : data.frame
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ MarketsMarketsAsCSVGet } \emph{ Get a complete list of markets in a country }
#' [![Generic badge](https://img.shields.io/badge/Maturity\%20Level-Production\%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access\%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data\%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern
#'
#' \itemize{
#' \item \emph{ @param } adm0code integer
#' \item \emph{ @param } local_names character
#' \item \emph{ @param } env Enum < [prod, dev] >
#'
#'
#' \item status code : 200 | Success
#'
#' \item return type : data.frame
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ MarketsNearbyMarketsGet } \emph{ Find markets near a given location by longitude and latitude within a 15Km distance }
#' [![Generic badge](https://img.shields.io/badge/Maturity\%20Level-Production\%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access\%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data\%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern
#'
#' \itemize{
#' \item \emph{ @param } adm0code integer
#' \item \emph{ @param } lat numeric
#' \item \emph{ @param } lng numeric
#' \item \emph{ @param } env Enum < [prod, dev] >
#' \item \emph{ @returnType } list( \link{NearbyMarketsDTO} ) \cr
#'
#'
#' \item status code : 200 | Success
#'
#' \item return type : array[NearbyMarketsDTO]
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Bad Request
#'
#' \item return type : array[BadRequestDTO]
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  MarketsGeoJSONListGet  ####################
#'
#' library(DataBridgesAPIr)
#' var_adm0code <- 56 # integer | The admin code of the country (Optional)
#' var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)
#'
#' #Provide a list of geo referenced markets in a specific country
#' api_instance <- MarketsApi$new()
#'
#' # Configure OAuth2 access token for authorization: default
#' api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$MarketsGeoJSONListGet(adm0code = var_adm0code, env = var_envdata_file = "result.txt")
#' result <- api_instance$MarketsGeoJSONListGet(adm0code = var_adm0code, env = var_env)
#' dput(result)
#'
#'
#' ####################  MarketsListGet  ####################
#'
#' library(DataBridgesAPIr)
#' var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code (Optional)
#' var_page <- 1 # integer | page number for paged results (Optional)
#' var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
#' var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)
#'
#' #Get a complete list of markets in a country
#' api_instance <- MarketsApi$new()
#'
#' # Configure OAuth2 access token for authorization: default
#' api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$MarketsListGet(country_code = var_country_code, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
#' result <- api_instance$MarketsListGet(country_code = var_country_code, page = var_page, format = var_format, env = var_env)
#' dput(result)
#'
#'
#' ####################  MarketsMarketsAsCSVGet  ####################
#'
#' library(DataBridgesAPIr)
#' var_adm0code <- 56 # integer | The admin code of the country (Optional)
#' var_local_names <- FALSE # character | If true the name of markets and regions will be localized if available (Optional)
#' var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)
#'
#' #Get a complete list of markets in a country
#' api_instance <- MarketsApi$new()
#'
#' # Configure OAuth2 access token for authorization: default
#' api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$MarketsMarketsAsCSVGet(adm0code = var_adm0code, local_names = var_local_names, env = var_envdata_file = "result.txt")
#' result <- api_instance$MarketsMarketsAsCSVGet(adm0code = var_adm0code, local_names = var_local_names, env = var_env)
#' dput(result)
#'
#'
#' ####################  MarketsNearbyMarketsGet  ####################
#'
#' library(DataBridgesAPIr)
#' var_adm0code <- 56 # integer | code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion (Optional)
#' var_lat <- 3.4 # numeric | latitude of the point that will be used to search for existing nearby markets. Geo-reference standard used for this coordinate is decimal (Optional)
#' var_lng <- 3.4 # numeric | longitude of the point that will be used to search for existing nearby markets.  Geo-reference standard used for this coordinate is decimal (Optional)
#' var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)
#'
#' #Find markets near a given location by longitude and latitude within a 15Km distance
#' api_instance <- MarketsApi$new()
#'
#' # Configure OAuth2 access token for authorization: default
#' api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$MarketsNearbyMarketsGet(adm0code = var_adm0code, lat = var_lat, lng = var_lng, env = var_envdata_file = "result.txt")
#' result <- api_instance$MarketsNearbyMarketsGet(adm0code = var_adm0code, lat = var_lat, lng = var_lng, env = var_env)
#' dput(result)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
MarketsApi <- R6::R6Class(
  "MarketsApi",
  public = list(
    api_client = NULL,
    #' Initialize a new MarketsApi.
    #'
    #' @description
    #' Initialize a new MarketsApi.
    #'
    #' @param api_client An instance of API client.
    #' @export
    initialize = function(api_client) {
      if (!missing(api_client)) {
        self$api_client <- api_client
      } else {
        self$api_client <- ApiClient$new()
      }
    },
    #' Provide a list of geo referenced markets in a specific country
    #'
    #' @description
    #' Provide a list of geo referenced markets in a specific country
    #'
    #' @param adm0code (optional) The admin code of the country
    #' @param env (optional) Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #' @return array[IFeature]
    #' @export
    MarketsGeoJSONListGet = function(adm0code = NULL, env = NULL, data_file = NULL, ...) {
      local_var_response <- self$MarketsGeoJSONListGetWithHttpInfo(adm0code, env, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        local_var_response$content
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        local_var_response
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        local_var_response
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        local_var_response
      }
    },
    #' Provide a list of geo referenced markets in a specific country
    #'
    #' @description
    #' Provide a list of geo referenced markets in a specific country
    #'
    #' @param adm0code (optional) The admin code of the country
    #' @param env (optional) Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #' @return API response (array[IFeature]) with additional information such as HTTP status code, headers
    #' @export
    MarketsGeoJSONListGetWithHttpInfo = function(adm0code = NULL, env = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE



      query_params[["adm0code"]] <- `adm0code`

      if (!(`env` %in% c("prod", "dev"))) {
        stop("Invalid value for env when calling MarketsApi$MarketsGeoJSONListGet. Must be [prod, dev].")
      }
      query_params[["env"]] <- `env`

      local_var_url_path <- "/Markets/GeoJSONList"
      # OAuth-related settings
      is_oauth <- TRUE
      oauth_scopes <- ""

      # The Accept request HTTP header
      local_var_accepts <- list("application/geo+json")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          write(local_var_resp$response, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$deserialize(local_var_resp$response, "array[IFeature]", loadNamespace("DataBridgesAPIr")),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        local_var_resp
      } else if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        local_var_resp
      }
    },
    #' Get a complete list of markets in a country
    #'
    #' @description
    #' Get a complete list of markets in a country
    #'
    #' @param country_code (optional) The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code
    #' @param page (optional) page number for paged results (default value: 1)
    #' @param format (optional) Output format: [JSON|CSV] Json is the default value (default value: "json")
    #' @param env (optional) Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #' @return data.frame
    #' @export
    MarketsListGet = function(country_code = NULL, page = 1, format = "json", env = NULL, data_file = NULL, ...) {
      local_var_response <- self$MarketsListGetWithHttpInfo(country_code, page, format, env, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        local_var_response$content
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        local_var_response
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        local_var_response
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        local_var_response
      }
    },
    #' Get a complete list of markets in a country
    #'
    #' @description
    #' Get a complete list of markets in a country
    #'
    #' @param country_code (optional) The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code
    #' @param page (optional) page number for paged results (default value: 1)
    #' @param format (optional) Output format: [JSON|CSV] Json is the default value (default value: "json")
    #' @param env (optional) Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #' @return API response (data.frame) with additional information such as HTTP status code, headers
    #' @export
    MarketsListGetWithHttpInfo = function(country_code = NULL, page = 1, format = "json", env = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE





      query_params[["countryCode"]] <- `country_code`

      query_params[["page"]] <- `page`

      query_params[["format"]] <- `format`

      if (!(`env` %in% c("prod", "dev"))) {
        stop("Invalid value for env when calling MarketsApi$MarketsListGet. Must be [prod, dev].")
      }
      query_params[["env"]] <- `env`

      local_var_url_path <- "/Markets/List"
      # OAuth-related settings
      is_oauth <- TRUE
      oauth_scopes <- ""

      # The Accept request HTTP header
      local_var_accepts <- list("application/json", "text/json", "text/plain")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          write(local_var_resp$response, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$deserialize(local_var_resp$response, "data.frame", loadNamespace("DataBridgesAPIr")),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        local_var_resp
      } else if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        local_var_resp
      }
    },
    #' Get a complete list of markets in a country
    #'
    #' @description
    #' Get a complete list of markets in a country
    #'
    #' @param adm0code (optional) The admin code of the country
    #' @param local_names (optional) If true the name of markets and regions will be localized if available (default value: FALSE)
    #' @param env (optional) Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #' @return data.frame
    #' @export
    MarketsMarketsAsCSVGet = function(adm0code = NULL, local_names = FALSE, env = NULL, data_file = NULL, ...) {
      local_var_response <- self$MarketsMarketsAsCSVGetWithHttpInfo(adm0code, local_names, env, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        local_var_response$content
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        local_var_response
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        local_var_response
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        local_var_response
      }
    },
    #' Get a complete list of markets in a country
    #'
    #' @description
    #' Get a complete list of markets in a country
    #'
    #' @param adm0code (optional) The admin code of the country
    #' @param local_names (optional) If true the name of markets and regions will be localized if available (default value: FALSE)
    #' @param env (optional) Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #' @return API response (data.frame) with additional information such as HTTP status code, headers
    #' @export
    MarketsMarketsAsCSVGetWithHttpInfo = function(adm0code = NULL, local_names = FALSE, env = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE




      query_params[["adm0code"]] <- `adm0code`

      query_params[["localNames"]] <- `local_names`

      if (!(`env` %in% c("prod", "dev"))) {
        stop("Invalid value for env when calling MarketsApi$MarketsMarketsAsCSVGet. Must be [prod, dev].")
      }
      query_params[["env"]] <- `env`

      local_var_url_path <- "/Markets/MarketsAsCSV"
      # OAuth-related settings
      is_oauth <- TRUE
      oauth_scopes <- ""

      # The Accept request HTTP header
      local_var_accepts <- list("application/json", "text/json", "text/plain")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          write(local_var_resp$response, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$deserialize(local_var_resp$response, "data.frame", loadNamespace("DataBridgesAPIr")),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        local_var_resp
      } else if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        local_var_resp
      }
    },
    #' Find markets near a given location by longitude and latitude within a 15Km distance
    #'
    #' @description
    #' Find markets near a given location by longitude and latitude within a 15Km distance
    #'
    #' @param adm0code (optional) code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion
    #' @param lat (optional) latitude of the point that will be used to search for existing nearby markets. Geo-reference standard used for this coordinate is decimal
    #' @param lng (optional) longitude of the point that will be used to search for existing nearby markets.  Geo-reference standard used for this coordinate is decimal
    #' @param env (optional) Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #' @return array[NearbyMarketsDTO]
    #' @export
    MarketsNearbyMarketsGet = function(adm0code = NULL, lat = NULL, lng = NULL, env = NULL, data_file = NULL, ...) {
      local_var_response <- self$MarketsNearbyMarketsGetWithHttpInfo(adm0code, lat, lng, env, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        local_var_response$content
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        local_var_response
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        local_var_response
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        local_var_response
      }
    },
    #' Find markets near a given location by longitude and latitude within a 15Km distance
    #'
    #' @description
    #' Find markets near a given location by longitude and latitude within a 15Km distance
    #'
    #' @param adm0code (optional) code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion
    #' @param lat (optional) latitude of the point that will be used to search for existing nearby markets. Geo-reference standard used for this coordinate is decimal
    #' @param lng (optional) longitude of the point that will be used to search for existing nearby markets.  Geo-reference standard used for this coordinate is decimal
    #' @param env (optional) Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #' @return API response (array[NearbyMarketsDTO]) with additional information such as HTTP status code, headers
    #' @export
    MarketsNearbyMarketsGetWithHttpInfo = function(adm0code = NULL, lat = NULL, lng = NULL, env = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE





      query_params[["adm0code"]] <- `adm0code`

      query_params[["lat"]] <- `lat`

      query_params[["lng"]] <- `lng`

      if (!(`env` %in% c("prod", "dev"))) {
        stop("Invalid value for env when calling MarketsApi$MarketsNearbyMarketsGet. Must be [prod, dev].")
      }
      query_params[["env"]] <- `env`

      local_var_url_path <- "/Markets/NearbyMarkets"
      # OAuth-related settings
      is_oauth <- TRUE
      oauth_scopes <- ""

      # The Accept request HTTP header
      local_var_accepts <- list("application/json")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          write(local_var_resp$response, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$deserialize(local_var_resp$response, "array[NearbyMarketsDTO]", loadNamespace("DataBridgesAPIr")),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        local_var_resp
      } else if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        local_var_resp
      }
    }
  )
)
