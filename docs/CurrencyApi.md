# CurrencyApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CurrencyListGet**](CurrencyApi.md#CurrencyListGet) | **GET** /Currency/List | Returns the list of currencies available in the internal VAM database, with Currency 3-letter code, matching with ISO 4217.
[**CurrencyUsdIndirectQuotationGet**](CurrencyApi.md#CurrencyUsdIndirectQuotationGet) | **GET** /Currency/UsdIndirectQuotation | Returns the value of the Exchange rates from Trading Economics, for official rates, and DataViz for unofficial rates.


# **CurrencyListGet**
> PagedCurrencyListDTO CurrencyListGet(country_code = var.country_code, currency_name = var.currency_name, currency_id = 0, page = 1, format = "json", env = var.env)

Returns the list of currencies available in the internal VAM database, with Currency 3-letter code, matching with ISO 4217.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Returns the list of currencies available in the internal VAM database, with Currency 3-letter code, matching with ISO 4217.
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. (Optional)
var_currency_name <- "currency_name_example" # character | Currency 3-letter code, matching with ISO 4217. (Optional)
var_currency_id <- 0 # integer | Unique code to identify the currency in internal VAM currencies. (Optional)
var_page <- 1 # integer | Page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- CurrencyApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CurrencyListGet(country_code = var_country_code, currency_name = var_currency_name, currency_id = var_currency_id, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$CurrencyListGet(country_code = var_country_code, currency_name = var_currency_name, currency_id = var_currency_id, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. | [optional] 
 **currency_name** | **character**| Currency 3-letter code, matching with ISO 4217. | [optional] 
 **currency_id** | **integer**| Unique code to identify the currency in internal VAM currencies. | [optional] [default to 0]
 **page** | **integer**| Page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**PagedCurrencyListDTO**](PagedCurrencyListDTO.md)

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

# **CurrencyUsdIndirectQuotationGet**
> UsdIndirectQuotationPagedResult CurrencyUsdIndirectQuotationGet(country_iso3 = "", currency_name = "", page = 1, format = "json", env = var.env)

Returns the value of the Exchange rates from Trading Economics, for official rates, and DataViz for unofficial rates.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()  Returns the time series of values of the Exchange rate of the Local Currency for buying 1 USD in the official market. Original frequency for official rates is daily, non-indicated. Unofficial rates are aggregated at national level by the original frequency of collection. For greater detail on unofficial exchange rates, explore the Exchange Rate (unofficial) commodity in Market Prices Prices. No mandatory parameter.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Returns the value of the Exchange rates from Trading Economics, for official rates, and DataViz for unofficial rates.
#
# prepare function argument(s)
var_country_iso3 <- "" # character | The code to identify the country. Must be a ISO-3166 Alpha 3 code. (Optional)
var_currency_name <- "" # character | the ISO3 code for the currency, based on ISO4217 (Optional)
var_page <- 1 # integer | Page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- CurrencyApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CurrencyUsdIndirectQuotationGet(country_iso3 = var_country_iso3, currency_name = var_currency_name, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$CurrencyUsdIndirectQuotationGet(country_iso3 = var_country_iso3, currency_name = var_currency_name, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_iso3** | **character**| The code to identify the country. Must be a ISO-3166 Alpha 3 code. | [optional] [default to &quot;&quot;]
 **currency_name** | **character**| the ISO3 code for the currency, based on ISO4217 | [optional] [default to &quot;&quot;]
 **page** | **integer**| Page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**UsdIndirectQuotationPagedResult**](UsdIndirectQuotationPagedResult.md)

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

