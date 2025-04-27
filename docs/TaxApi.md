# WWW::OpenAPIClient::TaxApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::TaxApi;
```

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tax_class_info**](TaxApi.md#tax_class_info) | **GET** /tax.class.info.json | tax.class.info
[**tax_class_list**](TaxApi.md#tax_class_list) | **GET** /tax.class.list.json | tax.class.list


# **tax_class_info**
> ModelResponseTaxClassInfo tax_class_info(tax_class_id => $tax_class_id, store_id => $store_id, lang_id => $lang_id, response_fields => $response_fields, params => $params, exclude => $exclude)

tax.class.info

Use this method to get information about a tax class and its rates. It allows you to calculate the tax percentage for a specific customer's address. This information contains relatively static data that rarely changes, so API2Cart may cache certain data to reduce the load on the store and speed up request execution. We also recommend that you cache the response of this method on your side to save requests. If you need to clear the cache for a specific store, use the cart.validate method.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TaxApi;
my $api_instance = WWW::OpenAPIClient::TaxApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $tax_class_id = 9; # string | Retrieves taxes specified by class id
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $response_fields = {result{id,name,tax,tax_rates{id,countries{id,name,states},cities,address,zip_codes{is_range,range,fields}}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = tax_class_id,tax; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = tax_class_id,tax; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->tax_class_info(tax_class_id => $tax_class_id, store_id => $store_id, lang_id => $lang_id, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxApi->tax_class_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_class_id** | **string**| Retrieves taxes specified by class id | 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;tax_class_id,name,avail&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseTaxClassInfo**](ModelResponseTaxClassInfo.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tax_class_list**
> ModelResponseTaxClassList tax_class_list(count => $count, page_cursor => $page_cursor, store_id => $store_id, find_value => $find_value, find_where => $find_where, created_to => $created_to, created_from => $created_from, modified_to => $modified_to, modified_from => $modified_from, response_fields => $response_fields)

tax.class.list

Get list of tax classes from your store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TaxApi;
my $api_instance = WWW::OpenAPIClient::TaxApi->new(

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
my $store_id = 1; # string | Store Id
my $find_value = tax; # string | Entity search that is specified by some value
my $find_where = name; # string | Tax class search that is specified by field
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $response_fields = {result}; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->tax_class_list(count => $count, page_cursor => $page_cursor, store_id => $store_id, find_value => $find_value, find_where => $find_where, created_to => $created_to, created_from => $created_from, modified_to => $modified_to, modified_from => $modified_from, response_fields => $response_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaxApi->tax_class_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **find_value** | **string**| Entity search that is specified by some value | [optional] 
 **find_where** | **string**| Tax class search that is specified by field | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;{return_code,return_message,pagination,result}&#39;]

### Return type

[**ModelResponseTaxClassList**](ModelResponseTaxClassList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

