# WWW::OpenAPIClient::BatchApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::BatchApi;
```

All URIs are relative to *https://api.api2cart.local.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_job_list**](BatchApi.md#batch_job_list) | **GET** /batch.job.list.json | batch.job.list
[**batch_job_result**](BatchApi.md#batch_job_result) | **GET** /batch.job.result.json | batch.job.result


# **batch_job_list**
> ModelResponseBatchJobList batch_job_list(count => $count, page_cursor => $page_cursor, ids => $ids, created_from => $created_from, created_to => $created_to, processed_from => $processed_from, processed_to => $processed_to, response_fields => $response_fields)

batch.job.list

Get list of recent jobs

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BatchApi;
my $api_instance = WWW::OpenAPIClient::BatchApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $ids = 24,25; # string | Filter batch jobs by ids
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $processed_from = 2100-08-29 13:45:52; # string | Retrieve entities according to their processing datetime
my $processed_to = 2100-08-29 13:45:52; # string | Retrieve entities according to their processing datetime
my $response_fields = {result}; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->batch_job_list(count => $count, page_cursor => $page_cursor, ids => $ids, created_from => $created_from, created_to => $created_to, processed_from => $processed_from, processed_to => $processed_to, response_fields => $response_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BatchApi->batch_job_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **ids** | **string**| Filter batch jobs by ids | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **processed_from** | **string**| Retrieve entities according to their processing datetime | [optional] 
 **processed_to** | **string**| Retrieve entities according to their processing datetime | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;{return_code,return_message,pagination,result}&#39;]

### Return type

[**ModelResponseBatchJobList**](ModelResponseBatchJobList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batch_job_result**
> ResponseBatchJobResult batch_job_result(id => $id)

batch.job.result

Get job result data

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BatchApi;
my $api_instance = WWW::OpenAPIClient::BatchApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Entity id

eval {
    my $result = $api_instance->batch_job_result(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BatchApi->batch_job_result: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 

### Return type

[**ResponseBatchJobResult**](ResponseBatchJobResult.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

