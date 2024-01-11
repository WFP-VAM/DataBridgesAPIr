# FoodSecurityApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FoodSecurityListGet**](FoodSecurityApi.md#FoodSecurityListGet) | **GET** /FoodSecurity/List | 


# **FoodSecurityListGet**
> IpcValuePagedResult FoodSecurityListGet(iso3 = var.iso3, year = var.year, page = 1, env = var.env)



  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# prepare function argument(s)
var_iso3 <- "iso3_example" # character | The country ISO3 code (Optional)
var_year <- 56 # integer |  (Optional)
var_page <- 1 # integer |  (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FoodSecurityListGet(iso3 = var_iso3, year = var_year, page = var_page, env = var_envdata_file = "result.txt")
result <- api_instance$food_security_api$FoodSecurityListGet(iso3 = var_iso3, year = var_year, page = var_page, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iso3** | **character**| The country ISO3 code | [optional] 
 **year** | **integer**|  | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**IpcValuePagedResult**](IpcValuePagedResult.md)

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

