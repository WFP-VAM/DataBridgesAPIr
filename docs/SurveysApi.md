# SurveysApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MFISurveysBaseDataGet**](SurveysApi.md#MFISurveysBaseDataGet) | **GET** /MFI/Surveys/BaseData | Get data that includes the core Market Functionality Index (MFI) fields only by Survey ID
[**MFISurveysFullDataGet**](SurveysApi.md#MFISurveysFullDataGet) | **GET** /MFI/Surveys/FullData | Get a full dataset that includes all the fields included in the survey in addition to the core Market Functionality Index (MFI) fields by Survey ID. To access this data, please contact global.mfi@wfp.org for authorization.
[**MFISurveysGet**](SurveysApi.md#MFISurveysGet) | **GET** /MFI/Surveys | Retrieve 1) Survey IDs, 2) their corresponding XLS Form IDs, and 3) Base XLS Form of all MFI surveys conducted in a country. A date of reference, SurveyDate, for the data collection is set by the officer responsible of the upload for each survey.
[**MFISurveysProcessedDataGet**](SurveysApi.md#MFISurveysProcessedDataGet) | **GET** /MFI/Surveys/ProcessedData | Get a MFI processed data in long format; levels indicate the data aggregation level 1) Normalized Score, 2) Trader Aggregate Score, 3) Market Aggregate Score, 4) Trader Median, 5) Trader Mean, 6) Market Mean; each line corresponds to one of the nine dimensions of scores plus the final MFI aggregate score; 1) Assortment, 2) Availability, 3) Price, 4) Resilience, 5) Competition, 6) Infrastructure, 7) Service, 8) Quality, 9) Access and Protection, and 10) MFI final score; the variable label describes each variable and its value range


# **MFISurveysBaseDataGet**
> SurveyDetailsDTO MFISurveysBaseDataGet(survey_id = var.survey_id, page = 1, env = var.env)

Get data that includes the core Market Functionality Index (MFI) fields only by Survey ID

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Get data that includes the core Market Functionality Index (MFI) fields only by Survey ID
#
# prepare function argument(s)
var_survey_id <- 56 # integer | unique identifier for the collected data, as retrieved from /Surveys API. (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- SurveysApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MFISurveysBaseDataGet(survey_id = var_survey_id, page = var_page, env = var_envdata_file = "result.txt")
result <- api_instance$MFISurveysBaseDataGet(survey_id = var_survey_id, page = var_page, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_id** | **integer**| unique identifier for the collected data, as retrieved from /Surveys API. | [optional] 
 **page** | **integer**| page number for paged results | [optional] [default to 1]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**SurveyDetailsDTO**](SurveyDetailsDTO.md)

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
| **404** | Not Found |  -  |

# **MFISurveysFullDataGet**
> SurveyDetailsDTO MFISurveysFullDataGet(survey_id = var.survey_id, format = "json", page = 1, env = var.env)

Get a full dataset that includes all the fields included in the survey in addition to the core Market Functionality Index (MFI) fields by Survey ID. To access this data, please contact global.mfi@wfp.org for authorization.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Restricted-yellow)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Official%20Use%20Only-yellow)]()  ### This endpoint is restricted, it requires the scope: \"vamdatabridges_mfi-surveys-fulldata_get\"      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Get a full dataset that includes all the fields included in the survey in addition to the core Market Functionality Index (MFI) fields by Survey ID. To access this data, please contact global.mfi@wfp.org for authorization.
#
# prepare function argument(s)
var_survey_id <- 56 # integer | unique identifier for the collected data, as retrieved from /Surveys API. (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- SurveysApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MFISurveysFullDataGet(survey_id = var_survey_id, format = var_format, page = var_page, env = var_envdata_file = "result.txt")
result <- api_instance$MFISurveysFullDataGet(survey_id = var_survey_id, format = var_format, page = var_page, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_id** | **integer**| unique identifier for the collected data, as retrieved from /Surveys API. | [optional] 
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **page** | **integer**| page number for paged results | [optional] [default to 1]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**SurveyDetailsDTO**](SurveyDetailsDTO.md)

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
| **404** | Not Found |  -  |

# **MFISurveysGet**
> array[PagedSurveyListDTO] MFISurveysGet(adm0_code = 0, page = 1, start_date = var.start_date, end_date = var.end_date, env = var.env)

Retrieve 1) Survey IDs, 2) their corresponding XLS Form IDs, and 3) Base XLS Form of all MFI surveys conducted in a country. A date of reference, SurveyDate, for the data collection is set by the officer responsible of the upload for each survey.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Retrieve 1) Survey IDs, 2) their corresponding XLS Form IDs, and 3) Base XLS Form of all MFI surveys conducted in a country. A date of reference, SurveyDate, for the data collection is set by the officer responsible of the upload for each survey.
#
# prepare function argument(s)
var_adm0_code <- 0 # integer | code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_start_date <- "start_date_example" # character | starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \"-\" month \"-\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \"-\" month \"-\" day (e.g. 2020/06/24) (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- SurveysApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MFISurveysGet(adm0_code = var_adm0_code, page = var_page, start_date = var_start_date, end_date = var_end_date, env = var_envdata_file = "result.txt")
result <- api_instance$MFISurveysGet(adm0_code = var_adm0_code, page = var_page, start_date = var_start_date, end_date = var_end_date, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adm0_code** | **integer**| code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion | [optional] [default to 0]
 **page** | **integer**| page number for paged results | [optional] [default to 1]
 **start_date** | **character**| starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \&quot;-\&quot; month \&quot;-\&quot; day (e.g. 2020/06/24) | [optional] 
 **end_date** | **character**| ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \&quot;-\&quot; month \&quot;-\&quot; day (e.g. 2020/06/24) | [optional] 
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**array[PagedSurveyListDTO]**](PagedSurveyListDTO.md)

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

# **MFISurveysProcessedDataGet**
> PagedProcessedDataDTO MFISurveysProcessedDataGet(survey_id = var.survey_id, page = 1, format = "json", start_date = var.start_date, end_date = var.end_date, adm0_codes = var.adm0_codes, market_id = var.market_id, survey_type = var.survey_type, env = var.env)

Get a MFI processed data in long format; levels indicate the data aggregation level 1) Normalized Score, 2) Trader Aggregate Score, 3) Market Aggregate Score, 4) Trader Median, 5) Trader Mean, 6) Market Mean; each line corresponds to one of the nine dimensions of scores plus the final MFI aggregate score; 1) Assortment, 2) Availability, 3) Price, 4) Resilience, 5) Competition, 6) Infrastructure, 7) Service, 8) Quality, 9) Access and Protection, and 10) MFI final score; the variable label describes each variable and its value range

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Get a MFI processed data in long format; levels indicate the data aggregation level 1) Normalized Score, 2) Trader Aggregate Score, 3) Market Aggregate Score, 4) Trader Median, 5) Trader Mean, 6) Market Mean; each line corresponds to one of the nine dimensions of scores plus the final MFI aggregate score; 1) Assortment, 2) Availability, 3) Price, 4) Resilience, 5) Competition, 6) Infrastructure, 7) Service, 8) Quality, 9) Access and Protection, and 10) MFI final score; the variable label describes each variable and its value range
#
# prepare function argument(s)
var_survey_id <- 56 # integer | The ID of the survey (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_format <- "json" # character | Output format: [JSON|CSV] Json is the default value (Optional)
var_start_date <- "start_date_example" # character | Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \"-\" month \"-\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \"-\" month \"-\" day (e.g. 2020/06/24) (Optional)
var_adm0_codes <- "adm0_codes_example" # character | Code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion (Optional)
var_market_id <- 56 # integer | The ID of the market (Optional)
var_survey_type <- "survey_type_example" # character | The survey type (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- SurveysApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MFISurveysProcessedDataGet(survey_id = var_survey_id, page = var_page, format = var_format, start_date = var_start_date, end_date = var_end_date, adm0_codes = var_adm0_codes, market_id = var_market_id, survey_type = var_survey_type, env = var_envdata_file = "result.txt")
result <- api_instance$MFISurveysProcessedDataGet(survey_id = var_survey_id, page = var_page, format = var_format, start_date = var_start_date, end_date = var_end_date, adm0_codes = var_adm0_codes, market_id = var_market_id, survey_type = var_survey_type, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_id** | **integer**| The ID of the survey | [optional] 
 **page** | **integer**| page number for paged results | [optional] [default to 1]
 **format** | **character**| Output format: [JSON|CSV] Json is the default value | [optional] [default to &quot;json&quot;]
 **start_date** | **character**| Starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \&quot;-\&quot; month \&quot;-\&quot; day (e.g. 2020/06/24) | [optional] 
 **end_date** | **character**| Ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \&quot;-\&quot; month \&quot;-\&quot; day (e.g. 2020/06/24) | [optional] 
 **adm0_codes** | **character**| Code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion | [optional] 
 **market_id** | **integer**| The ID of the market | [optional] 
 **survey_type** | **character**| The survey type | [optional] 
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**PagedProcessedDataDTO**](PagedProcessedDataDTO.md)

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

