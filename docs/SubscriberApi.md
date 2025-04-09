# WWW::OpenAPIClient::SubscriberApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SubscriberApi;
```

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriber_list**](SubscriberApi.md#subscriber_list) | **GET** /subscriber.list.json | subscriber.list


# **subscriber_list**
> ModelResponseSubscriberList subscriber_list(start => $start, count => $count, subscribed => $subscribed, store_id => $store_id, email => $email, params => $params, exclude => $exclude, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, page_cursor => $page_cursor, response_fields => $response_fields)

subscriber.list

Get subscribers list

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SubscriberApi;
my $api_instance = WWW::OpenAPIClient::SubscriberApi->new(

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
my $subscribed = false; # boolean | Filter by subscription status
my $store_id = 1; # string | Store Id
my $email = mail@example.com; # string | Filter subscribers by email
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $response_fields = {return_code,return_message,pagination,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->subscriber_list(start => $start, count => $count, subscribed => $subscribed, store_id => $store_id, email => $email, params => $params, exclude => $exclude, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, page_cursor => $page_cursor, response_fields => $response_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubscriberApi->subscriber_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **subscribed** | **boolean**| Filter by subscription status | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **email** | **string**| Filter subscribers by email | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;force_all&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 

### Return type

[**ModelResponseSubscriberList**](ModelResponseSubscriberList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

