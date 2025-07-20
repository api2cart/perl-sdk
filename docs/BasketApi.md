# WWW::OpenAPIClient::BasketApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::BasketApi;
```

All URIs are relative to *https://api.api2cart.local.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**basket_info**](BasketApi.md#basket_info) | **GET** /basket.info.json | basket.info
[**basket_item_add**](BasketApi.md#basket_item_add) | **POST** /basket.item.add.json | basket.item.add
[**basket_live_shipping_service_create**](BasketApi.md#basket_live_shipping_service_create) | **POST** /basket.live_shipping_service.create.json | basket.live_shipping_service.create
[**basket_live_shipping_service_delete**](BasketApi.md#basket_live_shipping_service_delete) | **DELETE** /basket.live_shipping_service.delete.json | basket.live_shipping_service.delete
[**basket_live_shipping_service_list**](BasketApi.md#basket_live_shipping_service_list) | **GET** /basket.live_shipping_service.list.json | basket.live_shipping_service.list


# **basket_info**
> BasketInfo200Response basket_info(id => $id, store_id => $store_id, response_fields => $response_fields, params => $params, exclude => $exclude)

basket.info

Retrieve basket information.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BasketApi;
my $api_instance = WWW::OpenAPIClient::BasketApi->new(

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
my $store_id = 1; # string | Store Id
my $response_fields = {result}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->basket_info(id => $id, store_id => $store_id, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BasketApi->basket_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **store_id** | **string**| Store Id | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;force_all&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**BasketInfo200Response**](BasketInfo200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **basket_item_add**
> BasketItemAdd200Response basket_item_add(customer_id => $customer_id, product_id => $product_id, variant_id => $variant_id, quantity => $quantity, store_id => $store_id)

basket.item.add

Add item to basket

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BasketApi;
my $api_instance = WWW::OpenAPIClient::BasketApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $customer_id = 5; # string | Retrieves orders specified by customer id
my $product_id = 10; # string | Defines id of the product which should be added to the basket
my $variant_id = 45; # string | Defines product's variants specified by variant id
my $quantity = 6; # double | Defines new items quantity
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->basket_item_add(customer_id => $customer_id, product_id => $product_id, variant_id => $variant_id, quantity => $quantity, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BasketApi->basket_item_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Retrieves orders specified by customer id | 
 **product_id** | **string**| Defines id of the product which should be added to the basket | 
 **variant_id** | **string**| Defines product&#39;s variants specified by variant id | [optional] 
 **quantity** | **double**| Defines new items quantity | [optional] [default to 0]
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**BasketItemAdd200Response**](BasketItemAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **basket_live_shipping_service_create**
> BasketLiveShippingServiceCreate200Response basket_live_shipping_service_create(name => $name, callback => $callback, store_id => $store_id)

basket.live_shipping_service.create

Create live shipping rate service.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BasketApi;
my $api_instance = WWW::OpenAPIClient::BasketApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $name = BestDelivery; # string | Shipping Service Name
my $callback = https://example.com/callback; # string | Callback url that returns shipping rates. It should be able to accept POST requests with json data.
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->basket_live_shipping_service_create(name => $name, callback => $callback, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BasketApi->basket_live_shipping_service_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Shipping Service Name | 
 **callback** | **string**| Callback url that returns shipping rates. It should be able to accept POST requests with json data. | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**BasketLiveShippingServiceCreate200Response**](BasketLiveShippingServiceCreate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **basket_live_shipping_service_delete**
> BasketLiveShippingServiceDelete200Response basket_live_shipping_service_delete(id => $id)

basket.live_shipping_service.delete

Delete live shipping rate service.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BasketApi;
my $api_instance = WWW::OpenAPIClient::BasketApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 5; # int | Entity id

eval {
    my $result = $api_instance->basket_live_shipping_service_delete(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BasketApi->basket_live_shipping_service_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Entity id | 

### Return type

[**BasketLiveShippingServiceDelete200Response**](BasketLiveShippingServiceDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **basket_live_shipping_service_list**
> BasketLiveShippingServiceList200Response basket_live_shipping_service_list(start => $start, count => $count, store_id => $store_id)

basket.live_shipping_service.list

Retrieve a list of live shipping rate services.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BasketApi;
my $api_instance = WWW::OpenAPIClient::BasketApi->new(

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
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->basket_live_shipping_service_list(start => $start, count => $count, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BasketApi->basket_live_shipping_service_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**BasketLiveShippingServiceList200Response**](BasketLiveShippingServiceList200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

