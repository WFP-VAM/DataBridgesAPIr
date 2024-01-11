# MarketPricesApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MarketPricesAlpsGet**](MarketPricesApi.md#MarketPricesAlpsGet) | **GET** /MarketPrices/Alps | Returns time series values of ALPS and PEWI.
[**MarketPricesPriceDailyGet**](MarketPricesApi.md#MarketPricesPriceDailyGet) | **GET** /MarketPrices/PriceDaily | Returns a daily time series of commodity market prices.
[**MarketPricesPriceMonthlyGet**](MarketPricesApi.md#MarketPricesPriceMonthlyGet) | **GET** /MarketPrices/PriceMonthly | Returns a monthly time series of commodity market prices.
[**MarketPricesPriceRawGet**](MarketPricesApi.md#MarketPricesPriceRawGet) | **GET** /MarketPrices/PriceRaw | Returns original commodity market prices
[**MarketPricesPriceWeeklyGet**](MarketPricesApi.md#MarketPricesPriceWeeklyGet) | **GET** /MarketPrices/PriceWeekly | Returns a weekly time series of commodity market prices.


# **MarketPricesAlpsGet**
> ViewExtendedAlpsValuePagedResult MarketPricesAlpsGet(country_code = var.country_code, market_id = 0, commodity_id = 0, price_type_name = "", currency_id = 0, price_flag = "", start_date = var.start_date, end_date = var.end_date, latest_value_only = FALSE, page = 1, format = "json", env = var.env)

Returns time series values of ALPS and PEWI.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()  Returns the full time series of the Alert for Price Spikes (ALPS) and the value of the Price Early Warning Index (PEWI). Methodology is available in [DataViz](https://dataviz.vam.wfp.org/) and [VAM-Resource Centre](https://resources.vam.wfp.org/). Country code, either ISO-3166 Alpha 3 code or the VAM internal admin0code is mandatory.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Returns time series values of ALPS and PEWI.
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. (Optional)
var_market_id <- 0 # integer | Unique ID of a Market, as found in /Markets/GeoJSONList (Optional)
var_commodity_id <- 0 # integer | The exact ID of a Commodity, as found in /Commodities/List (Optional)
var_price_type_name <- "" # character | Price type: [retail|wholesale|farmgate] (Optional)
var_currency_id <- 0 # integer | The exact ID of a currency, as found in /Currency/List (Optional)
var_price_flag <- "" # character | Type of price data: [actual|aggregate|estimated|forecasted] (Optional)
var_start_date <- "start_date_example" # character | Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_latest_value_only <- FALSE # character | [TRUE|FALSE] (Optional)
var_page <- 1 # integer | Page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MarketPricesAlpsGet(country_code = var_country_code, market_id = var_market_id, commodity_id = var_commodity_id, price_type_name = var_price_type_name, currency_id = var_currency_id, price_flag = var_price_flag, start_date = var_start_date, end_date = var_end_date, latest_value_only = var_latest_value_only, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$market_prices_api$MarketPricesAlpsGet(country_code = var_country_code, market_id = var_market_id, commodity_id = var_commodity_id, price_type_name = var_price_type_name, currency_id = var_currency_id, price_flag = var_price_flag, start_date = var_start_date, end_date = var_end_date, latest_value_only = var_latest_value_only, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. | [optional] 
 **market_id** | **integer**| Unique ID of a Market, as found in /Markets/GeoJSONList | [optional] [default to 0]
 **commodity_id** | **integer**| The exact ID of a Commodity, as found in /Commodities/List | [optional] [default to 0]
 **price_type_name** | **character**| Price type: [retail|wholesale|farmgate] | [optional] [default to &quot;&quot;]
 **currency_id** | **integer**| The exact ID of a currency, as found in /Currency/List | [optional] [default to 0]
 **price_flag** | **character**| Type of price data: [actual|aggregate|estimated|forecasted] | [optional] [default to &quot;&quot;]
 **start_date** | **character**| Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **end_date** | **character**| Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **latest_value_only** | **character**| [TRUE|FALSE] | [optional] [default to FALSE]
 **page** | **integer**| Page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**ViewExtendedAlpsValuePagedResult**](ViewExtendedAlpsValuePagedResult.md)

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

# **MarketPricesPriceDailyGet**
> ViewExtendedAggregatedPricePagedResult MarketPricesPriceDailyGet(country_code = var.country_code, market_id = 0, commodity_id = 0, price_type_name = "", currency_id = 0, price_flag = "", start_date = var.start_date, end_date = var.end_date, latest_value_only = FALSE, page = 1, format = "json", env = var.env)

Returns a daily time series of commodity market prices.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()  This is the highest frequency available. Data is flagged according to its pre-processing characteristics. Actual data is collected originally with daily frequency; aggregated data returns an empty list; imputed data is an estimation of missing values in the time series, obtained through the R Amelia-II package;        forecasted data is a six months prediction obtained through different methods, which are reported in the API.  For country specific meta-data please refer to documentation available in DataLibrary. For specific methodological notes on forecasts and imputations refer to the dedicated page in DataViz.  Country code, either ISO-3166 Alpha 3 code or the VAM internal admin0code is mandatory.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Returns a daily time series of commodity market prices.
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. (Optional)
var_market_id <- 0 # integer | Unique ID of a Market, as found in /Markets/GeoJSONList (Optional)
var_commodity_id <- 0 # integer | The exact ID of a Commodity, as found in /Commodities/List (Optional)
var_price_type_name <- "" # character | Price type: [retail|wholesale|farmgate] (Optional)
var_currency_id <- 0 # integer | The exact ID of a currency, as found in /Currency/List (Optional)
var_price_flag <- "" # character | Type of price data: [actual|aggregate|estimated|forecasted] (Optional)
var_start_date <- "start_date_example" # character | Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_latest_value_only <- FALSE # character | [TRUE|FALSE] (Optional)
var_page <- 1 # integer | Page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MarketPricesPriceDailyGet(country_code = var_country_code, market_id = var_market_id, commodity_id = var_commodity_id, price_type_name = var_price_type_name, currency_id = var_currency_id, price_flag = var_price_flag, start_date = var_start_date, end_date = var_end_date, latest_value_only = var_latest_value_only, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$market_prices_api$MarketPricesPriceDailyGet(country_code = var_country_code, market_id = var_market_id, commodity_id = var_commodity_id, price_type_name = var_price_type_name, currency_id = var_currency_id, price_flag = var_price_flag, start_date = var_start_date, end_date = var_end_date, latest_value_only = var_latest_value_only, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. | [optional] 
 **market_id** | **integer**| Unique ID of a Market, as found in /Markets/GeoJSONList | [optional] [default to 0]
 **commodity_id** | **integer**| The exact ID of a Commodity, as found in /Commodities/List | [optional] [default to 0]
 **price_type_name** | **character**| Price type: [retail|wholesale|farmgate] | [optional] [default to &quot;&quot;]
 **currency_id** | **integer**| The exact ID of a currency, as found in /Currency/List | [optional] [default to 0]
 **price_flag** | **character**| Type of price data: [actual|aggregate|estimated|forecasted] | [optional] [default to &quot;&quot;]
 **start_date** | **character**| Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **end_date** | **character**| Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **latest_value_only** | **character**| [TRUE|FALSE] | [optional] [default to FALSE]
 **page** | **integer**| Page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**ViewExtendedAggregatedPricePagedResult**](ViewExtendedAggregatedPricePagedResult.md)

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

# **MarketPricesPriceMonthlyGet**
> ViewExtendedAggregatedPricePagedResult MarketPricesPriceMonthlyGet(country_code = var.country_code, market_id = 0, commodity_id = 0, price_type_name = "", currency_id = 0, price_flag = "", start_date = var.start_date, end_date = var.end_date, latest_value_only = FALSE, page = 1, format = "json", env = var.env)

Returns a monthly time series of commodity market prices.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()  This is the lowest frequency available and the most complete data source. Data is flagged according to its pre-processing characteristics. actual data is collected originally with monthly frequency; aggregated data is collected with higher frequency (daily or weekly) averaged through a weighted mean to monthly; imputed data is an estimation of missing values in the time series, obtained through the R Amelia-II package; forecasted data is a six months prediction obtained through different methods, which are reported in the API. For country specific meta-data please refer to documentation available in [DataLibrary](https://datalib.vam.wfp.org/). For specific methodological notes on forecasts and imputations refer to the dedicated page in [DataViz](https://dataviz.vam.wfp.org/). Country code, either ISO-3166 Alpha 3 code or the VAM internal admin0code is mandatory.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Returns a monthly time series of commodity market prices.
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. (Optional)
var_market_id <- 0 # integer | Unique ID of a Market, as found in /Markets/GeoJSONList (Optional)
var_commodity_id <- 0 # integer | The exact ID of a Commodity, as found in /Commodities/List (Optional)
var_price_type_name <- "" # character | Price type: [retail|wholesale|farmgate] (Optional)
var_currency_id <- 0 # integer | The exact ID of a currency, as found in /Currency/List (Optional)
var_price_flag <- "" # character | Type of price data: [actual|aggregate|estimated|forecasted] (Optional)
var_start_date <- "start_date_example" # character | Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_latest_value_only <- FALSE # character | [TRUE|FALSE] (Optional)
var_page <- 1 # integer | Page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MarketPricesPriceMonthlyGet(country_code = var_country_code, market_id = var_market_id, commodity_id = var_commodity_id, price_type_name = var_price_type_name, currency_id = var_currency_id, price_flag = var_price_flag, start_date = var_start_date, end_date = var_end_date, latest_value_only = var_latest_value_only, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$market_prices_api$MarketPricesPriceMonthlyGet(country_code = var_country_code, market_id = var_market_id, commodity_id = var_commodity_id, price_type_name = var_price_type_name, currency_id = var_currency_id, price_flag = var_price_flag, start_date = var_start_date, end_date = var_end_date, latest_value_only = var_latest_value_only, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. | [optional] 
 **market_id** | **integer**| Unique ID of a Market, as found in /Markets/GeoJSONList | [optional] [default to 0]
 **commodity_id** | **integer**| The exact ID of a Commodity, as found in /Commodities/List | [optional] [default to 0]
 **price_type_name** | **character**| Price type: [retail|wholesale|farmgate] | [optional] [default to &quot;&quot;]
 **currency_id** | **integer**| The exact ID of a currency, as found in /Currency/List | [optional] [default to 0]
 **price_flag** | **character**| Type of price data: [actual|aggregate|estimated|forecasted] | [optional] [default to &quot;&quot;]
 **start_date** | **character**| Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **end_date** | **character**| Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **latest_value_only** | **character**| [TRUE|FALSE] | [optional] [default to FALSE]
 **page** | **integer**| Page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**ViewExtendedAggregatedPricePagedResult**](ViewExtendedAggregatedPricePagedResult.md)

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

# **MarketPricesPriceRawGet**
> PagedCommodityPriceListDTO MarketPricesPriceRawGet(country_code = var.country_code, market_id = 0, commodity_id = 0, price_type_name = "", currency_id = 0, price_flag = "", start_date = var.start_date, end_date = var.end_date, latest_value_only = FALSE, page = 1, format = "json", env = var.env)

Returns original commodity market prices

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Restricted-yellow)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Official%20Use%20Only-yellow)]()  ### This endpoint is restricted, it requires the scope: \"vamdatabridges_marketprices-priceraw_get\"  Restricted endpoint. Returns the original data with the entire Commodity Price Metadata as inserted by the focal point, which might contain sensitive or personal informatio. Country code, either ISO-3166 Alpha 3 code or the VAM internal admin0code is mandatory.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Returns original commodity market prices
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. (Optional)
var_market_id <- 0 # integer | Unique ID of a Market, as found in /Markets/GeoJSONList (Optional)
var_commodity_id <- 0 # integer | The exact ID of a Commodity, as found in /Commodities/List (Optional)
var_price_type_name <- "" # character | Price type: [retail|wholesale|farmgate] (Optional)
var_currency_id <- 0 # integer | The exact ID of a currency, as found in /Currency/List (Optional)
var_price_flag <- "" # character | Type of price data: [actual|aggregate|estimated|forecasted] (Optional)
var_start_date <- "start_date_example" # character | Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_latest_value_only <- FALSE # character | [TRUE|FALSE] (Optional)
var_page <- 1 # integer | Page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MarketPricesPriceRawGet(country_code = var_country_code, market_id = var_market_id, commodity_id = var_commodity_id, price_type_name = var_price_type_name, currency_id = var_currency_id, price_flag = var_price_flag, start_date = var_start_date, end_date = var_end_date, latest_value_only = var_latest_value_only, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$market_prices_api$MarketPricesPriceRawGet(country_code = var_country_code, market_id = var_market_id, commodity_id = var_commodity_id, price_type_name = var_price_type_name, currency_id = var_currency_id, price_flag = var_price_flag, start_date = var_start_date, end_date = var_end_date, latest_value_only = var_latest_value_only, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. | [optional] 
 **market_id** | **integer**| Unique ID of a Market, as found in /Markets/GeoJSONList | [optional] [default to 0]
 **commodity_id** | **integer**| The exact ID of a Commodity, as found in /Commodities/List | [optional] [default to 0]
 **price_type_name** | **character**| Price type: [retail|wholesale|farmgate] | [optional] [default to &quot;&quot;]
 **currency_id** | **integer**| The exact ID of a currency, as found in /Currency/List | [optional] [default to 0]
 **price_flag** | **character**| Type of price data: [actual|aggregate|estimated|forecasted] | [optional] [default to &quot;&quot;]
 **start_date** | **character**| Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **end_date** | **character**| Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **latest_value_only** | **character**| [TRUE|FALSE] | [optional] [default to FALSE]
 **page** | **integer**| Page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**PagedCommodityPriceListDTO**](PagedCommodityPriceListDTO.md)

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

# **MarketPricesPriceWeeklyGet**
> PagedCommodityWeeklyAggregatedPriceListDTO MarketPricesPriceWeeklyGet(country_code = var.country_code, market_id = 0, commodity_id = 0, price_type_name = "", currency_id = 0, price_flag = "", start_date = var.start_date, end_date = var.end_date, latest_value_only = FALSE, page = 1, format = "json", env = var.env)

Returns a weekly time series of commodity market prices.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()  Weeks used as reference are the International Organization for Standardization (ISO) week-numbering year (ISO-8601). Data is flagged according to its pre-processing characteristics. Aactual data is collected originally with weekly frequency; aggregated data is collected with higher frequency (daily) averaged through a weighted mean to weekly; imputed data is an estimation of missing values in the time series, obtained through the R Amelia-II package; forecasted data is a six months prediction obtained through different methods, which are reported in the API. For country specific meta-data please refer to documentation available in [DataLibrary](https://datalib.vam.wfp.org/). For specific methodological notes on forecasts and imputations refer to the dedicated page in [DataViz](https://dataviz.vam.wfp.org/). Country code, either ISO-3166 Alpha 3 code or the VAM internal admin0code is mandatory.    **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Returns a weekly time series of commodity market prices.
#
# prepare function argument(s)
var_country_code <- "country_code_example" # character | The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. (Optional)
var_market_id <- 0 # integer | Unique ID of a Market, as found in /Markets/GeoJSONList (Optional)
var_commodity_id <- 0 # integer | The exact ID of a Commodity, as found in /Commodities/List (Optional)
var_price_type_name <- "" # character | Price type: [retail|wholesale|farmgate] (Optional)
var_currency_id <- 0 # integer | The exact ID of a currency, as found in /Currency/List (Optional)
var_price_flag <- "" # character | Type of price data: [actual|aggregate|estimated|forecasted] (Optional)
var_start_date <- "start_date_example" # character | Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\"-\\\" month \\\"-\\\" day (e.g. 2020/06/24) (Optional)
var_latest_value_only <- FALSE # character | [TRUE|FALSE] (Optional)
var_page <- 1 # integer | Page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MarketPricesPriceWeeklyGet(country_code = var_country_code, market_id = var_market_id, commodity_id = var_commodity_id, price_type_name = var_price_type_name, currency_id = var_currency_id, price_flag = var_price_flag, start_date = var_start_date, end_date = var_end_date, latest_value_only = var_latest_value_only, page = var_page, format = var_format, env = var_envdata_file = "result.txt")
result <- api_instance$market_prices_api$MarketPricesPriceWeeklyGet(country_code = var_country_code, market_id = var_market_id, commodity_id = var_commodity_id, price_type_name = var_price_type_name, currency_id = var_currency_id, price_flag = var_price_flag, start_date = var_start_date, end_date = var_end_date, latest_value_only = var_latest_value_only, page = var_page, format = var_format, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **character**| The code to identify the country. It can be a ISO-3166 Alpha 3 code or the VAM internal admin0code. | [optional] 
 **market_id** | **integer**| Unique ID of a Market, as found in /Markets/GeoJSONList | [optional] [default to 0]
 **commodity_id** | **integer**| The exact ID of a Commodity, as found in /Commodities/List | [optional] [default to 0]
 **price_type_name** | **character**| Price type: [retail|wholesale|farmgate] | [optional] [default to &quot;&quot;]
 **currency_id** | **integer**| The exact ID of a currency, as found in /Currency/List | [optional] [default to 0]
 **price_flag** | **character**| Type of price data: [actual|aggregate|estimated|forecasted] | [optional] [default to &quot;&quot;]
 **start_date** | **character**| Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **end_date** | **character**| Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \\\&quot;-\\\&quot; month \\\&quot;-\\\&quot; day (e.g. 2020/06/24) | [optional] 
 **latest_value_only** | **character**| [TRUE|FALSE] | [optional] [default to FALSE]
 **page** | **integer**| Page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**PagedCommodityWeeklyAggregatedPriceListDTO**](PagedCommodityWeeklyAggregatedPriceListDTO.md)

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

