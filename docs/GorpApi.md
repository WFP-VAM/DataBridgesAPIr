# GorpApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GorpLatestGet**](GorpApi.md#GorpLatestGet) | **GET** /Gorp/Latest | Return the latest dataset of number of acutely food insecure (in millions)  based on WFP Global Operational Response Plan.
[**GorpListGet**](GorpApi.md#GorpListGet) | **GET** /Gorp/List | Return the full dataset of number of acutely food insecure (in millions) based on WFP Global Operational Response Plan.


# **GorpLatestGet**
> GorpValueWithChangesPagedResult GorpLatestGet(page = 1, env = var.env)

Return the latest dataset of number of acutely food insecure (in millions)  based on WFP Global Operational Response Plan.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Return the latest dataset of number of acutely food insecure (in millions)  based on WFP Global Operational Response Plan.
#
# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GorpLatestGet(page = var_page, env = var_envdata_file = "result.txt")
result <- api_instance$gorp_api$GorpLatestGet(page = var_page, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] [default to 1]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**GorpValueWithChangesPagedResult**](GorpValueWithChangesPagedResult.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Bad Request |  -  |

# **GorpListGet**
> GorpValueWithChangesPagedResult GorpListGet(page = 1, env = var.env)

Return the full dataset of number of acutely food insecure (in millions) based on WFP Global Operational Response Plan.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Return the full dataset of number of acutely food insecure (in millions) based on WFP Global Operational Response Plan.
#
# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GorpListGet(page = var_page, env = var_envdata_file = "result.txt")
result <- api_instance$gorp_api$GorpListGet(page = var_page, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] [default to 1]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**GorpValueWithChangesPagedResult**](GorpValueWithChangesPagedResult.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Bad Request |  -  |

