# EconomicDataApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EconomicDataIndicatorListGet**](EconomicDataApi.md#EconomicDataIndicatorListGet) | **GET** /EconomicData/IndicatorList | Returns the lists of indicators.
[**EconomicDataIndicatorNameGet**](EconomicDataApi.md#EconomicDataIndicatorNameGet) | **GET** /EconomicData/{indicatorName} | Returns the time series of values for different indicators.


# **EconomicDataIndicatorListGet**
> EconomicIndicatorPropertyPagedResult EconomicDataIndicatorListGet(page = 1, indicator_name = "", iso3 = "", format = "json", env = var.env)

Returns the lists of indicators.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()  Returns the lists of indicators for which Vulnerability Analysis and Mapping - Economic and Market Analysis Unit has redistribution licensing from Trading Economics. No mandatory parameter.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Returns the lists of indicators.
#
# prepare function argument(s)
var_page <- 1 # integer | Page number for paged results (Optional)
var_indicator_name <- "" # character | Unique indicator name. (Optional)
var_iso3 <- "" # character | The code to identify the country. Must be a ISO-3166 Alpha 3 code. (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- EconomicDataApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EconomicDataIndicatorListGet(page = var_page, indicator_name = var_indicator_name, iso3 = var_iso3, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$EconomicDataIndicatorListGet(page = var_page, indicator_name = var_indicator_name, iso3 = var_iso3, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Page number for paged results | [optional] [default to 1]
 **indicator_name** | **character**| Unique indicator name. | [optional] [default to &quot;&quot;]
 **iso3** | **character**| The code to identify the country. Must be a ISO-3166 Alpha 3 code. | [optional] [default to &quot;&quot;]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**EconomicIndicatorPropertyPagedResult**](EconomicIndicatorPropertyPagedResult.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | Not Found |  -  |

# **EconomicDataIndicatorNameGet**
> data.frame EconomicDataIndicatorNameGet(indicator_name, page = 1, iso3 = "", start_date = var.start_date, end_date = var.end_date, format = "json", env = var.env)

Returns the time series of values for different indicators.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()  Indicator name as retrieved from /EconomicData/IndicatorList is mandatory.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Returns the time series of values for different indicators.
#
# prepare function argument(s)
var_indicator_name <- "indicator_name_example" # character | Name of the indicator as found in /EconomicData/IndicatorList.
var_page <- 1 # integer | Page number for paged results (Optional)
var_iso3 <- "" # character | The code to identify the country. Must be a ISO-3166 Alpha 3 code. (Optional)
var_start_date <- "start_date_example" # character | Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- EconomicDataApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EconomicDataIndicatorNameGet(var_indicator_name, page = var_page, iso3 = var_iso3, start_date = var_start_date, end_date = var_end_date, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$EconomicDataIndicatorNameGet(var_indicator_name, page = var_page, iso3 = var_iso3, start_date = var_start_date, end_date = var_end_date, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indicator_name** | **character**| Name of the indicator as found in /EconomicData/IndicatorList. | 
 **page** | **integer**| Page number for paged results | [optional] [default to 1]
 **iso3** | **character**| The code to identify the country. Must be a ISO-3166 Alpha 3 code. | [optional] [default to &quot;&quot;]
 **start_date** | **character**| Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **end_date** | **character**| Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
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
| **404** | Not Found |  -  |

