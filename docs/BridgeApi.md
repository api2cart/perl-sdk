# WWW::OpenAPIClient::BridgeApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::BridgeApi;
```

All URIs are relative to *https://api.api2cart.local.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bridge_delete**](BridgeApi.md#bridge_delete) | **POST** /bridge.delete.json | bridge.delete
[**bridge_download**](BridgeApi.md#bridge_download) | **GET** /bridge.download.file | bridge.download
[**bridge_update**](BridgeApi.md#bridge_update) | **POST** /bridge.update.json | bridge.update


# **bridge_delete**
> AttributeValueDelete200Response bridge_delete()

bridge.delete

Delete bridge from the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BridgeApi;
my $api_instance = WWW::OpenAPIClient::BridgeApi->new(

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
    my $result = $api_instance->bridge_delete();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BridgeApi->bridge_delete: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AttributeValueDelete200Response**](AttributeValueDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bridge_download**
> string bridge_download(whitelabel => $whitelabel)

bridge.download

Download bridge for store.</br>Please note that the method would not work if you call it from Swagger UI.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BridgeApi;
my $api_instance = WWW::OpenAPIClient::BridgeApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $whitelabel = true; # boolean | Identifies if there is a necessity to download whitelabel bridge.

eval {
    my $result = $api_instance->bridge_download(whitelabel => $whitelabel);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BridgeApi->bridge_download: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **whitelabel** | **boolean**| Identifies if there is a necessity to download whitelabel bridge. | [optional] [default to false]

### Return type

**string**

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bridge_update**
> AttributeUpdate200Response bridge_update()

bridge.update

Update bridge in the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BridgeApi;
my $api_instance = WWW::OpenAPIClient::BridgeApi->new(

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
    my $result = $api_instance->bridge_update();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BridgeApi->bridge_update: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AttributeUpdate200Response**](AttributeUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

