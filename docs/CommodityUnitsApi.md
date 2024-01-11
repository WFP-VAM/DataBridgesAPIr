# CommodityUnitsApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CommodityUnitsConversionListGet**](CommodityUnitsApi.md#CommodityUnitsConversionListGet) | **GET** /CommodityUnits/Conversion/List | Provides conversion factors to Kilogram or Litres for each convertible unit of measure.
[**CommodityUnitsListGet**](CommodityUnitsApi.md#CommodityUnitsListGet) | **GET** /CommodityUnits/List | Provides the detailed list of the unit of measure available in DataBridges platform


# **CommodityUnitsConversionListGet**
> PagedCommodityListDTO CommodityUnitsConversionListGet(country_code = var.country_code, commodity_id = 0, from_unit_id = 0, to_unit_id = 0, page = 1, format = "json", env = var.env)

Provides conversion factors to Kilogram or Litres for each convertible unit of measure.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()  Some non-standard units of measure might have different a conversion factor based on the country [Adm0Code]; Other non-standard units of measure might have a different conversion factor based on the commodity [CommodityID] being measured. Other cases will have null adm0code and CommodityID. No mandatory parameter.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Provides conversion factors to Kilogram or Litres for each convertible unit of measure.
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. (Optional)
var_commodity_id <- 0 # integer | The exact ID of a Commodity, as found in /Commodities/List (Optional)
var_from_unit_id <- 0 # integer | The exact ID of the original unit of measure of the price of a commodity, as found in /CommodityUnits/List (Optional)
var_to_unit_id <- 0 # integer | The exact ID of the converted unit of measure of the price of a commodity, as found in /CommodityUnits/List (Optional)
var_page <- 1 # integer | Page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- CommodityUnitsApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CommodityUnitsConversionListGet(country_code = var_country_code, commodity_id = var_commodity_id, from_unit_id = var_from_unit_id, to_unit_id = var_to_unit_id, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$CommodityUnitsConversionListGet(country_code = var_country_code, commodity_id = var_commodity_id, from_unit_id = var_from_unit_id, to_unit_id = var_to_unit_id, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. | [optional] 
 **commodity_id** | **integer**| The exact ID of a Commodity, as found in /Commodities/List | [optional] [default to 0]
 **from_unit_id** | **integer**| The exact ID of the original unit of measure of the price of a commodity, as found in /CommodityUnits/List | [optional] [default to 0]
 **to_unit_id** | **integer**| The exact ID of the converted unit of measure of the price of a commodity, as found in /CommodityUnits/List | [optional] [default to 0]
 **page** | **integer**| Page number for paged results | [optional] [default to 1]
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

# **CommodityUnitsListGet**
> PagedCommodityListDTO CommodityUnitsListGet(country_code = var.country_code, commodity_unit_name = var.commodity_unit_name, commodity_unit_id = 0, page = 1, format = "json", env = var.env)

Provides the detailed list of the unit of measure available in DataBridges platform

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Provides the detailed list of the unit of measure available in DataBridges platform
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code (Optional)
var_commodity_unit_name <- "commodity_unit_name_example" # character | The name, even partial and case insensitive, of a commodity unit (Optional)
var_commodity_unit_id <- 0 # integer | The exact ID of a commodity unit (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- CommodityUnitsApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CommodityUnitsListGet(country_code = var_country_code, commodity_unit_name = var_commodity_unit_name, commodity_unit_id = var_commodity_unit_id, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$CommodityUnitsListGet(country_code = var_country_code, commodity_unit_name = var_commodity_unit_name, commodity_unit_id = var_commodity_unit_id, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code | [optional] 
 **commodity_unit_name** | **character**| The name, even partial and case insensitive, of a commodity unit | [optional] 
 **commodity_unit_id** | **integer**| The exact ID of a commodity unit | [optional] [default to 0]
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

