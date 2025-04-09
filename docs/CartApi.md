# WWW::OpenAPIClient::CartApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CartApi;
```

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cart_bridge**](CartApi.md#cart_bridge) | **GET** /cart.bridge.json | cart.bridge
[**cart_catalog_price_rules_count**](CartApi.md#cart_catalog_price_rules_count) | **GET** /cart.catalog_price_rules.count.json | cart.catalog_price_rules.count
[**cart_catalog_price_rules_list**](CartApi.md#cart_catalog_price_rules_list) | **GET** /cart.catalog_price_rules.list.json | cart.catalog_price_rules.list
[**cart_clear_cache**](CartApi.md#cart_clear_cache) | **POST** /cart.clear_cache.json | cart.clear_cache
[**cart_config**](CartApi.md#cart_config) | **GET** /cart.config.json | cart.config
[**cart_config_update**](CartApi.md#cart_config_update) | **PUT** /cart.config.update.json | cart.config.update
[**cart_coupon_add**](CartApi.md#cart_coupon_add) | **POST** /cart.coupon.add.json | cart.coupon.add
[**cart_coupon_condition_add**](CartApi.md#cart_coupon_condition_add) | **POST** /cart.coupon.condition.add.json | cart.coupon.condition.add
[**cart_coupon_count**](CartApi.md#cart_coupon_count) | **GET** /cart.coupon.count.json | cart.coupon.count
[**cart_coupon_delete**](CartApi.md#cart_coupon_delete) | **DELETE** /cart.coupon.delete.json | cart.coupon.delete
[**cart_coupon_list**](CartApi.md#cart_coupon_list) | **GET** /cart.coupon.list.json | cart.coupon.list
[**cart_create**](CartApi.md#cart_create) | **POST** /cart.create.json | cart.create
[**cart_delete**](CartApi.md#cart_delete) | **DELETE** /cart.delete.json | cart.delete
[**cart_disconnect**](CartApi.md#cart_disconnect) | **GET** /cart.disconnect.json | cart.disconnect
[**cart_giftcard_add**](CartApi.md#cart_giftcard_add) | **POST** /cart.giftcard.add.json | cart.giftcard.add
[**cart_giftcard_count**](CartApi.md#cart_giftcard_count) | **GET** /cart.giftcard.count.json | cart.giftcard.count
[**cart_giftcard_delete**](CartApi.md#cart_giftcard_delete) | **DELETE** /cart.giftcard.delete.json | cart.giftcard.delete
[**cart_giftcard_list**](CartApi.md#cart_giftcard_list) | **GET** /cart.giftcard.list.json | cart.giftcard.list
[**cart_info**](CartApi.md#cart_info) | **GET** /cart.info.json | cart.info
[**cart_list**](CartApi.md#cart_list) | **GET** /cart.list.json | cart.list
[**cart_meta_data_list**](CartApi.md#cart_meta_data_list) | **GET** /cart.meta_data.list.json | cart.meta_data.list
[**cart_meta_data_set**](CartApi.md#cart_meta_data_set) | **POST** /cart.meta_data.set.json | cart.meta_data.set
[**cart_meta_data_unset**](CartApi.md#cart_meta_data_unset) | **DELETE** /cart.meta_data.unset.json | cart.meta_data.unset
[**cart_methods**](CartApi.md#cart_methods) | **GET** /cart.methods.json | cart.methods
[**cart_plugin_list**](CartApi.md#cart_plugin_list) | **GET** /cart.plugin.list.json | cart.plugin.list
[**cart_script_add**](CartApi.md#cart_script_add) | **POST** /cart.script.add.json | cart.script.add
[**cart_script_delete**](CartApi.md#cart_script_delete) | **DELETE** /cart.script.delete.json | cart.script.delete
[**cart_script_list**](CartApi.md#cart_script_list) | **GET** /cart.script.list.json | cart.script.list
[**cart_shipping_zones_list**](CartApi.md#cart_shipping_zones_list) | **GET** /cart.shipping_zones.list.json | cart.shipping_zones.list
[**cart_validate**](CartApi.md#cart_validate) | **GET** /cart.validate.json | cart.validate


# **cart_bridge**
> CartBridge200Response cart_bridge()

cart.bridge

Get bridge key and store key

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval {
    my $result = $api_instance->cart_bridge();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_bridge: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CartBridge200Response**](CartBridge200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_catalog_price_rules_count**
> CartCatalogPriceRulesCount200Response cart_catalog_price_rules_count()

cart.catalog_price_rules.count

Get count of cart catalog price rules discounts.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

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
    my $result = $api_instance->cart_catalog_price_rules_count();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_catalog_price_rules_count: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CartCatalogPriceRulesCount200Response**](CartCatalogPriceRulesCount200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_catalog_price_rules_list**
> ModelResponseCartCatalogPriceRulesList cart_catalog_price_rules_list(page_cursor => $page_cursor, start => $start, count => $count, ids => $ids, params => $params, response_fields => $response_fields, exclude => $exclude)

cart.catalog_price_rules.list

Get cart catalog price rules discounts.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $ids = 24,25; # string | Retrieves  catalog_price_rules by ids
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {result{catalog_price_rules_count,catalog_price_rules{id,type,name,avail,usage_count,actions,conditions}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->cart_catalog_price_rules_list(page_cursor => $page_cursor, start => $start, count => $count, ids => $ids, params => $params, response_fields => $response_fields, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_catalog_price_rules_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **ids** | **string**| Retrieves  catalog_price_rules by ids | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name,description&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseCartCatalogPriceRulesList**](ModelResponseCartCatalogPriceRulesList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_clear_cache**
> CartClearCache200Response cart_clear_cache(cache_type => $cache_type)

cart.clear_cache

Clear cache on store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $cache_type = storage_cache; # string | Defines which cache should be cleared.

eval {
    my $result = $api_instance->cart_clear_cache(cache_type => $cache_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_clear_cache: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cache_type** | **string**| Defines which cache should be cleared. | 

### Return type

[**CartClearCache200Response**](CartClearCache200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_config**
> CartConfig200Response cart_config(params => $params, exclude => $exclude)

cart.config

Get list of cart configs

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $params = store_name,store_url,db_prefix; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = store_name,store_url,db_prefix; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->cart_config(params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;store_name,store_url,db_prefix&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**CartConfig200Response**](CartConfig200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_config_update**
> CartConfigUpdate200Response cart_config_update(cart_config_update => $cart_config_update)

cart.config.update

Use this API method to update custom data in client database.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $cart_config_update = WWW::OpenAPIClient::Object::CartConfigUpdate->new(); # CartConfigUpdate | 

eval {
    my $result = $api_instance->cart_config_update(cart_config_update => $cart_config_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_config_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cart_config_update** | [**CartConfigUpdate**](CartConfigUpdate.md)|  | 

### Return type

[**CartConfigUpdate200Response**](CartConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_coupon_add**
> CartCouponAdd200Response cart_coupon_add(cart_coupon_add => $cart_coupon_add)

cart.coupon.add

Use this method to create a coupon with specified conditions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $cart_coupon_add = WWW::OpenAPIClient::Object::CartCouponAdd->new(); # CartCouponAdd | 

eval {
    my $result = $api_instance->cart_coupon_add(cart_coupon_add => $cart_coupon_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_coupon_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cart_coupon_add** | [**CartCouponAdd**](CartCouponAdd.md)|  | 

### Return type

[**CartCouponAdd200Response**](CartCouponAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_coupon_condition_add**
> BasketLiveShippingServiceDelete200Response cart_coupon_condition_add(coupon_id => $coupon_id, entity => $entity, key => $key, operator => $operator, value => $value, store_id => $store_id, target => $target, include_tax => $include_tax, include_shipping => $include_shipping)

cart.coupon.condition.add

Use this method to add additional conditions for coupon application.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $coupon_id = 45845; # string | Coupon Id
my $entity = order; # string | Defines condition entity type
my $key = subtotal; # string | Defines condition entity attribute key
my $operator = ==; # string | Defines condition operator
my $value = 2; # string | Defines condition value, can be comma separated according to the operator.
my $store_id = 1; # string | Store Id
my $target = coupon_action; # string | Defines condition operator
my $include_tax = true; # boolean | Indicates whether to apply a discount for taxes.
my $include_shipping = true; # boolean | Indicates whether to apply a discount for shipping.

eval {
    my $result = $api_instance->cart_coupon_condition_add(coupon_id => $coupon_id, entity => $entity, key => $key, operator => $operator, value => $value, store_id => $store_id, target => $target, include_tax => $include_tax, include_shipping => $include_shipping);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_coupon_condition_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_id** | **string**| Coupon Id | 
 **entity** | **string**| Defines condition entity type | 
 **key** | **string**| Defines condition entity attribute key | 
 **operator** | **string**| Defines condition operator | 
 **value** | **string**| Defines condition value, can be comma separated according to the operator. | 
 **store_id** | **string**| Store Id | [optional] 
 **target** | **string**| Defines condition operator | [optional] [default to &#39;coupon_prerequisite&#39;]
 **include_tax** | **boolean**| Indicates whether to apply a discount for taxes. | [optional] [default to false]
 **include_shipping** | **boolean**| Indicates whether to apply a discount for shipping. | [optional] [default to false]

### Return type

[**BasketLiveShippingServiceDelete200Response**](BasketLiveShippingServiceDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_coupon_count**
> CartCouponCount200Response cart_coupon_count(store_id => $store_id, date_start_from => $date_start_from, date_start_to => $date_start_to, date_end_from => $date_end_from, date_end_to => $date_end_to, avail => $avail)

cart.coupon.count

This method allows you to get the number of coupons. On some platforms, you can filter the coupons by the date they were active.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

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
my $date_start_from = 2016-12-29 16:44:30; # string | Filter entity by date_start (greater or equal)
my $date_start_to = 2016-12-29 16:44:30; # string | Filter entity by date_start (less or equal)
my $date_end_from = 2016-12-29 16:44:30; # string | Filter entity by date_end (greater or equal)
my $date_end_to = 2016-12-29 16:44:30; # string | Filter entity by date_end (less or equal)
my $avail = false; # boolean | Defines category's visibility status

eval {
    my $result = $api_instance->cart_coupon_count(store_id => $store_id, date_start_from => $date_start_from, date_start_to => $date_start_to, date_end_from => $date_end_from, date_end_to => $date_end_to, avail => $avail);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_coupon_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**| Store Id | [optional] 
 **date_start_from** | **string**| Filter entity by date_start (greater or equal) | [optional] 
 **date_start_to** | **string**| Filter entity by date_start (less or equal) | [optional] 
 **date_end_from** | **string**| Filter entity by date_end (greater or equal) | [optional] 
 **date_end_to** | **string**| Filter entity by date_end (less or equal) | [optional] 
 **avail** | **boolean**| Defines category&#39;s visibility status | [optional] [default to true]

### Return type

[**CartCouponCount200Response**](CartCouponCount200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_coupon_delete**
> AttributeDelete200Response cart_coupon_delete(id => $id, store_id => $store_id)

cart.coupon.delete

Delete coupon

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

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

eval {
    my $result = $api_instance->cart_coupon_delete(id => $id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_coupon_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**AttributeDelete200Response**](AttributeDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_coupon_list**
> ModelResponseCartCouponList cart_coupon_list(page_cursor => $page_cursor, start => $start, count => $count, coupons_ids => $coupons_ids, store_id => $store_id, date_start_from => $date_start_from, date_start_to => $date_start_to, date_end_from => $date_end_from, date_end_to => $date_end_to, avail => $avail, lang_id => $lang_id, params => $params, response_fields => $response_fields, exclude => $exclude)

cart.coupon.list

Get cart coupon discounts.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $coupons_ids = 1,2,3; # string | Filter coupons by ids
my $store_id = 1; # string | Filter coupons by store id
my $date_start_from = 2016-12-29 16:44:30; # string | Filter entity by date_start (greater or equal)
my $date_start_to = 2016-12-29 16:44:30; # string | Filter entity by date_start (less or equal)
my $date_end_from = 2016-12-29 16:44:30; # string | Filter entity by date_end (greater or equal)
my $date_end_to = 2016-12-29 16:44:30; # string | Filter entity by date_end (less or equal)
my $avail = false; # boolean | Filter coupons by avail status
my $lang_id = 3; # string | Language id
my $params = id,code,type,amount; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {pagination,result{coupon_count,coupon{id,code,name,conditions,actions{scope,amount,conditions{id,value,sub-conditions}},date_start,avail}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = usage_history,type; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->cart_coupon_list(page_cursor => $page_cursor, start => $start, count => $count, coupons_ids => $coupons_ids, store_id => $store_id, date_start_from => $date_start_from, date_start_to => $date_start_to, date_end_from => $date_end_from, date_end_to => $date_end_to, avail => $avail, lang_id => $lang_id, params => $params, response_fields => $response_fields, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_coupon_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **coupons_ids** | **string**| Filter coupons by ids | [optional] 
 **store_id** | **string**| Filter coupons by store id | [optional] 
 **date_start_from** | **string**| Filter entity by date_start (greater or equal) | [optional] 
 **date_start_to** | **string**| Filter entity by date_start (less or equal) | [optional] 
 **date_end_from** | **string**| Filter entity by date_end (greater or equal) | [optional] 
 **date_end_to** | **string**| Filter entity by date_end (less or equal) | [optional] 
 **avail** | **boolean**| Filter coupons by avail status | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,code,name,description&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseCartCouponList**](ModelResponseCartCouponList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_create**
> AccountCartAdd200Response cart_create(cart_create => $cart_create)

cart.create

Add store to the account

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $cart_create = WWW::OpenAPIClient::Object::CartCreate->new(); # CartCreate | 

eval {
    my $result = $api_instance->cart_create(cart_create => $cart_create);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cart_create** | [**CartCreate**](CartCreate.md)|  | 

### Return type

[**AccountCartAdd200Response**](AccountCartAdd200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_delete**
> CartDelete200Response cart_delete(delete_bridge => $delete_bridge)

cart.delete

Remove store from API2Cart

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $delete_bridge = true; # boolean | Identifies if there is a necessity to delete bridge

eval {
    my $result = $api_instance->cart_delete(delete_bridge => $delete_bridge);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_bridge** | **boolean**| Identifies if there is a necessity to delete bridge | [optional] [default to true]

### Return type

[**CartDelete200Response**](CartDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_disconnect**
> CartDisconnect200Response cart_disconnect(delete_bridge => $delete_bridge)

cart.disconnect

Disconnect with the store and clear store session data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $delete_bridge = true; # boolean | Identifies if there is a necessity to delete bridge

eval {
    my $result = $api_instance->cart_disconnect(delete_bridge => $delete_bridge);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_disconnect: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_bridge** | **boolean**| Identifies if there is a necessity to delete bridge | [optional] [default to false]

### Return type

[**CartDisconnect200Response**](CartDisconnect200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_giftcard_add**
> CartGiftcardAdd200Response cart_giftcard_add(amount => $amount, code => $code, owner_email => $owner_email, recipient_email => $recipient_email, recipient_name => $recipient_name, owner_name => $owner_name)

cart.giftcard.add

Use this method to create a gift card for a specified amount.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $amount = 15.5; # double | Defines the gift card amount value.
my $code = GFT1 A4S5 AA11 RD61; # string | Gift card code
my $owner_email = jubari@hannsgroup.com; # string | Gift card owner email
my $recipient_email = jubari@hannsgroup.com; # string | Gift card recipient email
my $recipient_name = John Doe; # string | Gift card recipient name
my $owner_name = John Doe; # string | Gift card owner name

eval {
    my $result = $api_instance->cart_giftcard_add(amount => $amount, code => $code, owner_email => $owner_email, recipient_email => $recipient_email, recipient_name => $recipient_name, owner_name => $owner_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_giftcard_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amount** | **double**| Defines the gift card amount value. | 
 **code** | **string**| Gift card code | [optional] 
 **owner_email** | **string**| Gift card owner email | [optional] 
 **recipient_email** | **string**| Gift card recipient email | [optional] 
 **recipient_name** | **string**| Gift card recipient name | [optional] 
 **owner_name** | **string**| Gift card owner name | [optional] 

### Return type

[**CartGiftcardAdd200Response**](CartGiftcardAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_giftcard_count**
> CartGiftcardCount200Response cart_giftcard_count(store_id => $store_id)

cart.giftcard.count

Get gift cards count.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

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
    my $result = $api_instance->cart_giftcard_count(store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_giftcard_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**CartGiftcardCount200Response**](CartGiftcardCount200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_giftcard_delete**
> AttributeDelete200Response cart_giftcard_delete(id => $id)

cart.giftcard.delete

Delete giftcard

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

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
    my $result = $api_instance->cart_giftcard_delete(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_giftcard_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 

### Return type

[**AttributeDelete200Response**](AttributeDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_giftcard_list**
> ModelResponseCartGiftCardList cart_giftcard_list(page_cursor => $page_cursor, start => $start, count => $count, store_id => $store_id, params => $params, response_fields => $response_fields, exclude => $exclude)

cart.giftcard.list

Get gift cards list.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $store_id = 1; # string | Store Id
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {pagination,result{gift_card{id,code,amount,status}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->cart_giftcard_list(page_cursor => $page_cursor, start => $start, count => $count, store_id => $store_id, params => $params, response_fields => $response_fields, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_giftcard_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **store_id** | **string**| Store Id | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,code,name&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseCartGiftCardList**](ModelResponseCartGiftCardList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_info**
> CartInfo200Response cart_info(params => $params, response_fields => $response_fields, exclude => $exclude, store_id => $store_id)

cart.info

This method allows you to get various information about the store, including a list of stores (in the case of a multistore configuration), a list of supported languages, currencies, carriers, warehouses, and many other information. This information contains data that is relatively stable and rarely changes, so API2Cart can cache certain data to reduce the load on the store and speed up the execution of the request. We also recommend that you cache the response of this method on your side to save requests. If you need to clear the cache for a specific store, then use the cart.validate method.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $params = name,url; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {result{name,url,stores_info{store_id,name,currency{id,iso3},store_owner_info}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = name,url; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->cart_info(params => $params, response_fields => $response_fields, exclude => $exclude, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;store_name,store_url,db_prefix&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**CartInfo200Response**](CartInfo200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_list**
> CartList200Response cart_list()

cart.list

Get list of supported carts

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval {
    my $result = $api_instance->cart_list();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_list: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CartList200Response**](CartList200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_meta_data_list**
> ModelResponseCartMetaDataList cart_meta_data_list(entity_id => $entity_id, entity => $entity, store_id => $store_id, lang_id => $lang_id, key => $key, count => $count, page_cursor => $page_cursor, params => $params, response_fields => $response_fields, exclude => $exclude)

cart.meta_data.list

Using this method, you can get a list of metadata for various entities (products, options, customers, orders). Usually this is data created by third-party plugins.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $entity_id = 1; # string | Entity Id
my $entity = order; # string | Entity
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $key = subtotal; # string | Key
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {result{items{key,value}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->cart_meta_data_list(entity_id => $entity_id, entity => $entity, store_id => $store_id, lang_id => $lang_id, key => $key, count => $count, page_cursor => $page_cursor, params => $params, response_fields => $response_fields, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_meta_data_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **string**| Entity Id | 
 **entity** | **string**| Entity | [optional] [default to &#39;product&#39;]
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **key** | **string**| Key | [optional] 
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;key,value&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseCartMetaDataList**](ModelResponseCartMetaDataList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_meta_data_set**
> AttributeAdd200Response cart_meta_data_set(entity_id => $entity_id, key => $key, value => $value, namespace => $namespace, entity => $entity, store_id => $store_id, lang_id => $lang_id)

cart.meta_data.set

Set meta data for a specific entity

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $entity_id = 1; # string | Entity Id
my $key = subtotal; # string | Key
my $value = 2; # string | Value
my $namespace = order; # string | Metafield namespace
my $entity = order; # string | Entity
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id

eval {
    my $result = $api_instance->cart_meta_data_set(entity_id => $entity_id, key => $key, value => $value, namespace => $namespace, entity => $entity, store_id => $store_id, lang_id => $lang_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_meta_data_set: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **string**| Entity Id | 
 **key** | **string**| Key | 
 **value** | **string**| Value | 
 **namespace** | **string**| Metafield namespace | 
 **entity** | **string**| Entity | [optional] [default to &#39;product&#39;]
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 

### Return type

[**AttributeAdd200Response**](AttributeAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_meta_data_unset**
> BasketLiveShippingServiceDelete200Response cart_meta_data_unset(entity_id => $entity_id, key => $key, id => $id, entity => $entity, store_id => $store_id)

cart.meta_data.unset

Unset meta data for a specific entity

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $entity_id = 1; # string | Entity Id
my $key = subtotal; # string | Key
my $id = 10; # string | Entity id
my $entity = order; # string | Entity
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->cart_meta_data_unset(entity_id => $entity_id, key => $key, id => $id, entity => $entity, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_meta_data_unset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **string**| Entity Id | 
 **key** | **string**| Key | 
 **id** | **string**| Entity id | 
 **entity** | **string**| Entity | [optional] [default to &#39;product&#39;]
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**BasketLiveShippingServiceDelete200Response**](BasketLiveShippingServiceDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_methods**
> CartMethods200Response cart_methods()

cart.methods

Returns a list of supported API methods.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

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
    my $result = $api_instance->cart_methods();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_methods: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CartMethods200Response**](CartMethods200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_plugin_list**
> CartPluginList200Response cart_plugin_list(store_id => $store_id, start => $start, count => $count)

cart.plugin.list

Get a list of third-party plugins installed on the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

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
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250

eval {
    my $result = $api_instance->cart_plugin_list(store_id => $store_id, start => $start, count => $count);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_plugin_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**| Store Id | [optional] 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]

### Return type

[**CartPluginList200Response**](CartPluginList200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_script_add**
> CartScriptAdd200Response cart_script_add(name => $name, description => $description, html => $html, src => $src, load_method => $load_method, scope => $scope, events => $events, store_id => $store_id)

cart.script.add

Add new script to the storefront

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $name = jQuery Minimized; # string | The user-friendly script name
my $description = The Write Less, Do More, JavaScript Library; # string | The user-friendly description
my $html = &#x3C;script&#x3E;alert(&#x27;foo&#x27;)&#x3C;/script&#x3E;; # string | An html string containing exactly one `script` tag.
my $src = https://js-aplenty.com/foo.js; # string | The URL of the remote script
my $load_method = async; # string | The load method to use for the script
my $scope = all; # string | The page or pages on the online store where the script should be included
my $events = purchase_event; # string | Event for run scripts
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->cart_script_add(name => $name, description => $description, html => $html, src => $src, load_method => $load_method, scope => $scope, events => $events, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_script_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The user-friendly script name | [optional] 
 **description** | **string**| The user-friendly description | [optional] 
 **html** | **string**| An html string containing exactly one &#x60;script&#x60; tag. | [optional] 
 **src** | **string**| The URL of the remote script | [optional] 
 **load_method** | **string**| The load method to use for the script | [optional] 
 **scope** | **string**| The page or pages on the online store where the script should be included | [optional] [default to &#39;storefront&#39;]
 **events** | **string**| Event for run scripts | [optional] 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**CartScriptAdd200Response**](CartScriptAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_script_delete**
> AttributeDelete200Response cart_script_delete(id => $id, store_id => $store_id)

cart.script.delete

Remove script from the storefront

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

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

eval {
    my $result = $api_instance->cart_script_delete(id => $id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_script_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**AttributeDelete200Response**](AttributeDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_script_list**
> ModelResponseCartScriptList cart_script_list(page_cursor => $page_cursor, start => $start, count => $count, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, script_ids => $script_ids, store_id => $store_id, params => $params, response_fields => $response_fields, exclude => $exclude)

cart.script.list

Get scripts installed to the storefront

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $script_ids = 34023324,34024032; # string | Retrieves only scripts with specific ids
my $store_id = 1; # string | Store Id
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {pagination,result{total_count,scripts{id,name,src,created_time{value}}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->cart_script_list(page_cursor => $page_cursor, start => $start, count => $count, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, script_ids => $script_ids, store_id => $store_id, params => $params, response_fields => $response_fields, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_script_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **script_ids** | **string**| Retrieves only scripts with specific ids | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name,description&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseCartScriptList**](ModelResponseCartScriptList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_shipping_zones_list**
> ModelResponseCartShippingZonesList cart_shipping_zones_list(store_id => $store_id, start => $start, count => $count, params => $params, response_fields => $response_fields, exclude => $exclude)

cart.shipping_zones.list

Get list of shipping zones

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

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
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {result{id,name,enabled,countries,shipping_methods{name,rates}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->cart_shipping_zones_list(store_id => $store_id, start => $start, count => $count, params => $params, response_fields => $response_fields, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_shipping_zones_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**| Store Id | [optional] 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name,enabled&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseCartShippingZonesList**](ModelResponseCartShippingZonesList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cart_validate**
> CartValidate200Response cart_validate(validate_version => $validate_version)

cart.validate

This method clears the cache in API2Cart for a particular store and checks whether the connection to the store is available. Use this method if there have been any changes in the settings on the storе, for example, if a new plugin has been installed or removed.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CartApi;
my $api_instance = WWW::OpenAPIClient::CartApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $validate_version = true; # boolean | Specify if api2cart should validate cart version

eval {
    my $result = $api_instance->cart_validate(validate_version => $validate_version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CartApi->cart_validate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validate_version** | **boolean**| Specify if api2cart should validate cart version | [optional] [default to false]

### Return type

[**CartValidate200Response**](CartValidate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

