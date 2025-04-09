# WWW::OpenAPIClient::ReturnApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ReturnApi;
```

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**return_action_list**](ReturnApi.md#return_action_list) | **GET** /return.action.list.json | return.action.list
[**return_count**](ReturnApi.md#return_count) | **GET** /return.count.json | return.count
[**return_info**](ReturnApi.md#return_info) | **GET** /return.info.json | return.info
[**return_list**](ReturnApi.md#return_list) | **GET** /return.list.json | return.list
[**return_reason_list**](ReturnApi.md#return_reason_list) | **GET** /return.reason.list.json | return.reason.list
[**return_status_list**](ReturnApi.md#return_status_list) | **GET** /return.status.list.json | return.status.list


# **return_action_list**
> ReturnActionList200Response return_action_list()

return.action.list

Retrieve list of return actions

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ReturnApi;
my $api_instance = WWW::OpenAPIClient::ReturnApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval {
    my $result = $api_instance->return_action_list();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReturnApi->return_action_list: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReturnActionList200Response**](ReturnActionList200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **return_count**
> ReturnCount200Response return_count(order_ids => $order_ids, customer_id => $customer_id, store_id => $store_id, status => $status, return_type => $return_type, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache)

return.count

Count returns in store

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ReturnApi;
my $api_instance = WWW::OpenAPIClient::ReturnApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_ids = 24,25; # string | Counts return requests specified by order ids
my $customer_id = 5; # string | Counts return requests quantity specified by customer id
my $store_id = 1; # string | Store Id
my $status = disabled; # string | Defines status
my $return_type = FBA; # string | Retrieves returns specified by return type
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $report_request_id = 105245017661; # string | Report request id
my $disable_report_cache = false; # boolean | Disable report cache for current request

eval {
    my $result = $api_instance->return_count(order_ids => $order_ids, customer_id => $customer_id, store_id => $store_id, status => $status, return_type => $return_type, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReturnApi->return_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_ids** | **string**| Counts return requests specified by order ids | [optional] 
 **customer_id** | **string**| Counts return requests quantity specified by customer id | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **status** | **string**| Defines status | [optional] 
 **return_type** | **string**| Retrieves returns specified by return type | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **report_request_id** | **string**| Report request id | [optional] 
 **disable_report_cache** | **boolean**| Disable report cache for current request | [optional] [default to false]

### Return type

[**ReturnCount200Response**](ReturnCount200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **return_info**
> ReturnInfo200Response return_info(id => $id, order_id => $order_id, store_id => $store_id, params => $params, exclude => $exclude, response_fields => $response_fields)

return.info

Retrieve return information.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ReturnApi;
my $api_instance = WWW::OpenAPIClient::ReturnApi->new(

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
my $order_id = 25; # string | Defines the order id
my $store_id = 1; # string | Store Id
my $params = id,order_products; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = id,order_id; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $response_fields = {return_code,return_message,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->return_info(id => $id, order_id => $order_id, store_id => $store_id, params => $params, exclude => $exclude, response_fields => $response_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReturnApi->return_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **order_id** | **string**| Defines the order id | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,order_products&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 

### Return type

[**ReturnInfo200Response**](ReturnInfo200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **return_list**
> ModelResponseReturnList return_list(start => $start, count => $count, page_cursor => $page_cursor, params => $params, exclude => $exclude, response_fields => $response_fields, order_id => $order_id, order_ids => $order_ids, customer_id => $customer_id, store_id => $store_id, status => $status, return_type => $return_type, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache)

return.list

Get list of return requests from store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ReturnApi;
my $api_instance = WWW::OpenAPIClient::ReturnApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $params = id,order_products; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = id,order_id; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $response_fields = {return_code,return_message,pagination,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $order_id = 25; # string | Defines the order id
my $order_ids = 24,25; # string | Retrieves return requests specified by order ids
my $customer_id = 5; # string | Retrieves return requests specified by customer id
my $store_id = 1; # string | Store Id
my $status = disabled; # string | Defines status
my $return_type = FBA; # string | Retrieves returns specified by return type
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $report_request_id = 105245017661; # string | Report request id
my $disable_report_cache = false; # boolean | Disable report cache for current request

eval {
    my $result = $api_instance->return_list(start => $start, count => $count, page_cursor => $page_cursor, params => $params, exclude => $exclude, response_fields => $response_fields, order_id => $order_id, order_ids => $order_ids, customer_id => $customer_id, store_id => $store_id, status => $status, return_type => $return_type, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReturnApi->return_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,order_products&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **order_id** | **string**| Defines the order id | [optional] 
 **order_ids** | **string**| Retrieves return requests specified by order ids | [optional] 
 **customer_id** | **string**| Retrieves return requests specified by customer id | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **status** | **string**| Defines status | [optional] 
 **return_type** | **string**| Retrieves returns specified by return type | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **report_request_id** | **string**| Report request id | [optional] 
 **disable_report_cache** | **boolean**| Disable report cache for current request | [optional] [default to false]

### Return type

[**ModelResponseReturnList**](ModelResponseReturnList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **return_reason_list**
> ReturnReasonList200Response return_reason_list(store_id => $store_id)

return.reason.list

Retrieve list of return reasons

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ReturnApi;
my $api_instance = WWW::OpenAPIClient::ReturnApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->return_reason_list(store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReturnApi->return_reason_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**ReturnReasonList200Response**](ReturnReasonList200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **return_status_list**
> ReturnStatusList200Response return_status_list()

return.status.list

Retrieve list of statuses

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ReturnApi;
my $api_instance = WWW::OpenAPIClient::ReturnApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval {
    my $result = $api_instance->return_status_list();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReturnApi->return_status_list: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReturnStatusList200Response**](ReturnStatusList200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

