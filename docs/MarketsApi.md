# MarketsApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MarketsGeoJSONListGet**](MarketsApi.md#MarketsGeoJSONListGet) | **GET** /Markets/GeoJSONList | Provide a list of geo referenced markets in a specific country
[**MarketsListGet**](MarketsApi.md#MarketsListGet) | **GET** /Markets/List | Get a complete list of markets in a country
[**MarketsMarketsAsCSVGet**](MarketsApi.md#MarketsMarketsAsCSVGet) | **GET** /Markets/MarketsAsCSV | Get a complete list of markets in a country
[**MarketsNearbyMarketsGet**](MarketsApi.md#MarketsNearbyMarketsGet) | **GET** /Markets/NearbyMarkets | Find markets near a given location by longitude and latitude within a 15Km distance


# **MarketsGeoJSONListGet**
> array[IFeature] MarketsGeoJSONListGet(adm0code = var.adm0code, env = var.env)

Provide a list of geo referenced markets in a specific country

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Provide a list of geo referenced markets in a specific country
#
# prepare function argument(s)
var_adm0code <- 56 # integer | The admin code of the country (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MarketsGeoJSONListGet(adm0code = var_adm0code, env = var_envdata_file = "result.txt")
result <- api_instance$markets_api$MarketsGeoJSONListGet(adm0code = var_adm0code, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adm0code** | **integer**| The admin code of the country | [optional] 
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**array[IFeature]**](IFeature.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/geo+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Bad Request |  -  |

# **MarketsListGet**
> data.frame MarketsListGet(country_code = var.country_code, page = 1, format = "json", env = var.env)

Get a complete list of markets in a country

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Get a complete list of markets in a country
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MarketsListGet(country_code = var_country_code, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$markets_api$MarketsListGet(country_code = var_country_code, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code | [optional] 
 **page** | **integer**| page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

**data.frame**

### Authorization

[default](../README.md#default)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **MarketsMarketsAsCSVGet**
> data.frame MarketsMarketsAsCSVGet(adm0code = var.adm0code, local_names = FALSE, env = var.env)

Get a complete list of markets in a country

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Get a complete list of markets in a country
#
# prepare function argument(s)
var_adm0code <- 56 # integer | The admin code of the country (Optional)
var_local_names <- FALSE # character | If true the name of markets and regions will be localized if available (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MarketsMarketsAsCSVGet(adm0code = var_adm0code, local_names = var_local_names, env = var_envdata_file = "result.txt")
result <- api_instance$markets_api$MarketsMarketsAsCSVGet(adm0code = var_adm0code, local_names = var_local_names, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adm0code** | **integer**| The admin code of the country | [optional] 
 **local_names** | **character**| If true the name of markets and regions will be localized if available | [optional] [default to FALSE]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

**data.frame**

### Authorization

[default](../README.md#default)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **MarketsNearbyMarketsGet**
> array[NearbyMarketsDTO] MarketsNearbyMarketsGet(adm0code = var.adm0code, lat = var.lat, lng = var.lng, env = var.env)

Find markets near a given location by longitude and latitude within a 15Km distance

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Find markets near a given location by longitude and latitude within a 15Km distance
#
# prepare function argument(s)
var_adm0code <- 56 # integer | code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion (Optional)
var_lat <- 3.4 # numeric | latitude of the point that will be used to search for existing nearby markets. Geo-reference standard used for this coordinate is decimal (Optional)
var_lng <- 3.4 # numeric | longitude of the point that will be used to search for existing nearby markets.  Geo-reference standard used for this coordinate is decimal (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MarketsNearbyMarketsGet(adm0code = var_adm0code, lat = var_lat, lng = var_lng, env = var_envdata_file = "result.txt")
result <- api_instance$markets_api$MarketsNearbyMarketsGet(adm0code = var_adm0code, lat = var_lat, lng = var_lng, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adm0code** | **integer**| code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion | [optional] 
 **lat** | **numeric**| latitude of the point that will be used to search for existing nearby markets. Geo-reference standard used for this coordinate is decimal | [optional] 
 **lng** | **numeric**| longitude of the point that will be used to search for existing nearby markets.  Geo-reference standard used for this coordinate is decimal | [optional] 
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**array[NearbyMarketsDTO]**](NearbyMarketsDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Bad Request |  -  |

