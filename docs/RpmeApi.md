# RpmeApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RpmeOutputValuesGet**](RpmeApi.md#RpmeOutputValuesGet) | **GET** /Rpme/OutputValues | Processed values for each variable used in the assessments
[**RpmeSurveysGet**](RpmeApi.md#RpmeSurveysGet) | **GET** /Rpme/Surveys | Retrieve 1) Survey IDs, 2) their corresponding XLS Form IDs, and 3) Base XLS Form of all RPME surveys conducted in a country. The date of reference, SurveyDate, for the data collection is set by the officer responsible for the upload of each survey.
[**RpmeVariablesGet**](RpmeApi.md#RpmeVariablesGet) | **GET** /Rpme/Variables | List of variables
[**RpmeXLSFormsGet**](RpmeApi.md#RpmeXLSFormsGet) | **GET** /Rpme/XLSForms | Get a complete list of XLS Forms uploaded on the RPME in a given period of data collection. This is the digital version of the questionnaire used during the data collection exercise.


# **RpmeOutputValuesGet**
> RpmeAssessmentPagedResult RpmeOutputValuesGet(page = 1, adm0_code = var.adm0_code, survey_id = var.survey_id, shop_id = var.shop_id, market_id = var.market_id, adm0_code_dots = "", env = var.env)

Processed values for each variable used in the assessments

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Processed values for each variable used in the assessments
#
# prepare function argument(s)
var_page <- 1 # integer | page number for paged results (Optional)
var_adm0_code <- 56 # integer | Code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion (Optional)
var_survey_id <- 56 # integer | The ID of the survey (Optional)
var_shop_id <- 56 # integer | The ID of the shop (Optional)
var_market_id <- 56 # integer | The ID of the market (Optional)
var_adm0_code_dots <- "" # character |  (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- RpmeApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RpmeOutputValuesGet(page = var_page, adm0_code = var_adm0_code, survey_id = var_survey_id, shop_id = var_shop_id, market_id = var_market_id, adm0_code_dots = var_adm0_code_dots, env = var_envdata_file = "result.txt")
result <- api_instance$RpmeOutputValuesGet(page = var_page, adm0_code = var_adm0_code, survey_id = var_survey_id, shop_id = var_shop_id, market_id = var_market_id, adm0_code_dots = var_adm0_code_dots, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| page number for paged results | [optional] [default to 1]
 **adm0_code** | **integer**| Code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion | [optional] 
 **survey_id** | **integer**| The ID of the survey | [optional] 
 **shop_id** | **integer**| The ID of the shop | [optional] 
 **market_id** | **integer**| The ID of the market | [optional] 
 **adm0_code_dots** | **character**|  | [optional] [default to &quot;&quot;]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**RpmeAssessmentPagedResult**](RpmeAssessmentPagedResult.md)

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

# **RpmeSurveysGet**
> array[PagedSurveyListDTO] RpmeSurveysGet(adm0_code = 0, page = 1, start_date = var.start_date, end_date = var.end_date, env = var.env)

Retrieve 1) Survey IDs, 2) their corresponding XLS Form IDs, and 3) Base XLS Form of all RPME surveys conducted in a country. The date of reference, SurveyDate, for the data collection is set by the officer responsible for the upload of each survey.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Retrieve 1) Survey IDs, 2) their corresponding XLS Form IDs, and 3) Base XLS Form of all RPME surveys conducted in a country. The date of reference, SurveyDate, for the data collection is set by the officer responsible for the upload of each survey.
#
# prepare function argument(s)
var_adm0_code <- 0 # integer | code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_start_date <- "start_date_example" # character | starting date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \"-\" month \"-\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | ending date for the range in which data was collected. Use the date formats defined by RFC 3339 ; use strings matching year \"-\" month \"-\" day (e.g. 2020/06/24) (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- RpmeApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RpmeSurveysGet(adm0_code = var_adm0_code, page = var_page, start_date = var_start_date, end_date = var_end_date, env = var_envdata_file = "result.txt")
result <- api_instance$RpmeSurveysGet(adm0_code = var_adm0_code, page = var_page, start_date = var_start_date, end_date = var_end_date, env = var_env)
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
 - **Accept**: application/json, text/json, text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Bad Request |  -  |

# **RpmeVariablesGet**
> RpmeVariablePagedResult RpmeVariablesGet(page = 1, env = var.env)

List of variables

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# List of variables
#
# prepare function argument(s)
var_page <- 1 # integer |  (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- RpmeApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RpmeVariablesGet(page = var_page, env = var_envdata_file = "result.txt")
result <- api_instance$RpmeVariablesGet(page = var_page, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] [default to 1]
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**RpmeVariablePagedResult**](RpmeVariablePagedResult.md)

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

# **RpmeXLSFormsGet**
> array[PagedXlsFormListDTO] RpmeXLSFormsGet(adm0_code = 0, page = 1, start_date = var.start_date, end_date = var.end_date, env = var.env)

Get a complete list of XLS Forms uploaded on the RPME in a given period of data collection. This is the digital version of the questionnaire used during the data collection exercise.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(DataBridgesAPIr)

# Get a complete list of XLS Forms uploaded on the RPME in a given period of data collection. This is the digital version of the questionnaire used during the data collection exercise.
#
# prepare function argument(s)
var_adm0_code <- 0 # integer | code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_start_date <- "start_date_example" # character | starting date for the range in which data using this XLSForm was collected. Use the date formats defined by RFC 3339 ; use strings matching year \"-\" month \"-\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | ending date for the range in which data using this XLSForm was collected. Use the date formats defined by RFC 3339 ; use strings matching year \"-\" month \"-\" day (e.g. 2020/06/24) (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- RpmeApi$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RpmeXLSFormsGet(adm0_code = var_adm0_code, page = var_page, start_date = var_start_date, end_date = var_end_date, env = var_envdata_file = "result.txt")
result <- api_instance$RpmeXLSFormsGet(adm0_code = var_adm0_code, page = var_page, start_date = var_start_date, end_date = var_end_date, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adm0_code** | **integer**| code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion | [optional] [default to 0]
 **page** | **integer**| page number for paged results | [optional] [default to 1]
 **start_date** | **character**| starting date for the range in which data using this XLSForm was collected. Use the date formats defined by RFC 3339 ; use strings matching year \&quot;-\&quot; month \&quot;-\&quot; day (e.g. 2020/06/24) | [optional] 
 **end_date** | **character**| ending date for the range in which data using this XLSForm was collected. Use the date formats defined by RFC 3339 ; use strings matching year \&quot;-\&quot; month \&quot;-\&quot; day (e.g. 2020/06/24) | [optional] 
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**array[PagedXlsFormListDTO]**](PagedXlsFormListDTO.md)

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

