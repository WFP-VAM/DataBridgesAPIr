# CommoditiesApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CommoditiesCategoriesListGet**](CommoditiesApi.md#CommoditiesCategoriesListGet) | **GET** /Commodities/Categories/List | Provides the list of categories.
[**CommoditiesListGet**](CommoditiesApi.md#CommoditiesListGet) | **GET** /Commodities/List | Provide the detailed list of the commodities available in DataBridges platform


# **CommoditiesCategoriesListGet**
> PagedCommodityListDTO CommoditiesCategoriesListGet(country_code = var.country_code, category_name = var.category_name, category_id = 0, page = 1, format = "json", env = var.env)

Provides the list of categories.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()  Categories are matched with high level WFP commodity classification at level 1. No mandatory parameter.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Provides the list of categories.
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code (Optional)
var_category_name <- "category_name_example" # character | The name, even partial and case insensitive, of a commodity category. (Optional)
var_category_id <- 0 # integer | The exact ID of a Commodity, as found in /Commodities/List. (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CommoditiesCategoriesListGet(country_code = var_country_code, category_name = var_category_name, category_id = var_category_id, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$commodities_api$CommoditiesCategoriesListGet(country_code = var_country_code, category_name = var_category_name, category_id = var_category_id, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code | [optional] 
 **category_name** | **character**| The name, even partial and case insensitive, of a commodity category. | [optional] 
 **category_id** | **integer**| The exact ID of a Commodity, as found in /Commodities/List. | [optional] [default to 0]
 **page** | **integer**| page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**PagedCommodityListDTO**](PagedCommodityListDTO.md)

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

# **CommoditiesListGet**
> PagedCommodityListDTO CommoditiesListGet(country_code = var.country_code, commodity_name = var.commodity_name, commodity_id = 0, page = 1, format = "json", env = var.env)

Provide the detailed list of the commodities available in DataBridges platform

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()  COICOP 2018 codes are returned to hierarchically matching categories based on [UN-Statistical Division codes](https://unstats.un.org/unsd/classifications/Econ/). No mandatory parameter.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Provide the detailed list of the commodities available in DataBridges platform
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code (Optional)
var_commodity_name <- "commodity_name_example" # character | The name, even partial and case insensitive, of a commodity (Optional)
var_commodity_id <- 0 # integer | The exact ID of a commodity (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CommoditiesListGet(country_code = var_country_code, commodity_name = var_commodity_name, commodity_id = var_commodity_id, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$commodities_api$CommoditiesListGet(country_code = var_country_code, commodity_name = var_commodity_name, commodity_id = var_commodity_id, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code | [optional] 
 **commodity_name** | **character**| The name, even partial and case insensitive, of a commodity | [optional] 
 **commodity_id** | **integer**| The exact ID of a commodity | [optional] [default to 0]
 **page** | **integer**| page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**PagedCommodityListDTO**](PagedCommodityListDTO.md)

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

