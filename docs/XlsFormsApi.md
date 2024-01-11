# XlsFormsApi

All URIs are relative to *https://api.wfp.org/vam-data-bridges/1.3.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MFIXlsFormsDefinitionGet**](XlsFormsApi.md#MFIXlsFormsDefinitionGet) | **GET** /MFI/XlsForms/definition | Get a complete set of XLS Form definitions of a given XLS Form ID. This is the digital version of the questionnaire used during the data collection exercise.
[**MFIXlsFormsGet**](XlsFormsApi.md#MFIXlsFormsGet) | **GET** /MFI/XlsForms | Get a complete list of XLS Forms uploaded on the MFI Data Bridge in a given period of data collection. This is the digital version of the questionnaire used during the data collection exercise.


# **MFIXlsFormsDefinitionGet**
> array[XlsFormDefinitionDTO] MFIXlsFormsDefinitionGet(xls_form_id = var.xls_form_id, env = var.env)

Get a complete set of XLS Form definitions of a given XLS Form ID. This is the digital version of the questionnaire used during the data collection exercise.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Get a complete set of XLS Form definitions of a given XLS Form ID. This is the digital version of the questionnaire used during the data collection exercise.
#
# prepare function argument(s)
var_xls_form_id <- 56 # integer | unique identifier for the XLS Form, as retrieved from /XLSForms (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MFIXlsFormsDefinitionGet(xls_form_id = var_xls_form_id, env = var_envdata_file = "result.txt")
result <- api_instance$xls_forms_api$MFIXlsFormsDefinitionGet(xls_form_id = var_xls_form_id, env = var_env)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xls_form_id** | **integer**| unique identifier for the XLS Form, as retrieved from /XLSForms | [optional] 
 **env** | Enum [prod, dev] | Environment.   * &#x60;prod&#x60; - api.vam.wfp.org   * &#x60;dev&#x60; - dev.api.vam.wfp.org | [optional] 

### Return type

[**array[XlsFormDefinitionDTO]**](XlsFormDefinitionDTO.md)

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

# **MFIXlsFormsGet**
> array[PagedXlsFormListDTO] MFIXlsFormsGet(adm0_code = 0, page = 1, start_date = var.start_date, end_date = var.end_date, env = var.env)

Get a complete list of XLS Forms uploaded on the MFI Data Bridge in a given period of data collection. This is the digital version of the questionnaire used during the data collection exercise.

  [![Generic badge](https://img.shields.io/badge/Maturity%20Level-Production%20Ready-green)]()  [![Generic badge](https://img.shields.io/badge/Access%20Policy-Open-green)]()  [![Generic badge](https://img.shields.io/badge/Data%20Classification-Public-green)]()      **Data Controller** - Wael Attia  **API Integration Pattern** - This endpoint uses [Hey Jude](https://docs.api.wfp.org/providers/#api-patterns) pattern

### Example
```R
library(databridges)

# Get a complete list of XLS Forms uploaded on the MFI Data Bridge in a given period of data collection. This is the digital version of the questionnaire used during the data collection exercise.
#
# prepare function argument(s)
var_adm0_code <- 0 # integer | code for the country as retrieved from https://api.vam.wfp.org/geodata/CountriesInRegion (Optional)
var_page <- 1 # integer | page number for paged results (Optional)
var_start_date <- "start_date_example" # character | starting date for the range in which data using this XLSForm was collected. Use the date formats defined by RFC 3339 ; use strings matching year \"-\" month \"-\" day (e.g. 2020/06/24) (Optional)
var_end_date <- "end_date_example" # character | ending date for the range in which data using this XLSForm was collected. Use the date formats defined by RFC 3339 ; use strings matching year \"-\" month \"-\" day (e.g. 2020/06/24) (Optional)
var_env <- "env_example" # character | Environment.   * `prod` - api.vam.wfp.org   * `dev` - dev.api.vam.wfp.org (Optional)

api_instance <- databridges_api$new()
# Configure OAuth2 access token for authorization: default
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MFIXlsFormsGet(adm0_code = var_adm0_code, page = var_page, start_date = var_start_date, end_date = var_end_date, env = var_envdata_file = "result.txt")
result <- api_instance$xls_forms_api$MFIXlsFormsGet(adm0_code = var_adm0_code, page = var_page, start_date = var_start_date, end_date = var_end_date, env = var_env)
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

