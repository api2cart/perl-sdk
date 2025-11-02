# WWW::OpenAPIClient::ProductApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ProductApi;
```

All URIs are relative to *https://api.api2cart.local.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**product_add**](ProductApi.md#product_add) | **POST** /product.add.json | product.add
[**product_add_batch**](ProductApi.md#product_add_batch) | **POST** /product.add.batch.json | product.add.batch
[**product_attribute_list**](ProductApi.md#product_attribute_list) | **GET** /product.attribute.list.json | product.attribute.list
[**product_attribute_value_set**](ProductApi.md#product_attribute_value_set) | **POST** /product.attribute.value.set.json | product.attribute.value.set
[**product_attribute_value_unset**](ProductApi.md#product_attribute_value_unset) | **POST** /product.attribute.value.unset.json | product.attribute.value.unset
[**product_brand_list**](ProductApi.md#product_brand_list) | **GET** /product.brand.list.json | product.brand.list
[**product_child_item_find**](ProductApi.md#product_child_item_find) | **GET** /product.child_item.find.json | product.child_item.find
[**product_child_item_info**](ProductApi.md#product_child_item_info) | **GET** /product.child_item.info.json | product.child_item.info
[**product_child_item_list**](ProductApi.md#product_child_item_list) | **GET** /product.child_item.list.json | product.child_item.list
[**product_count**](ProductApi.md#product_count) | **GET** /product.count.json | product.count
[**product_currency_add**](ProductApi.md#product_currency_add) | **POST** /product.currency.add.json | product.currency.add
[**product_currency_list**](ProductApi.md#product_currency_list) | **GET** /product.currency.list.json | product.currency.list
[**product_delete**](ProductApi.md#product_delete) | **DELETE** /product.delete.json | product.delete
[**product_delete_batch**](ProductApi.md#product_delete_batch) | **POST** /product.delete.batch.json | product.delete.batch
[**product_find**](ProductApi.md#product_find) | **GET** /product.find.json | product.find
[**product_image_add**](ProductApi.md#product_image_add) | **POST** /product.image.add.json | product.image.add
[**product_image_delete**](ProductApi.md#product_image_delete) | **DELETE** /product.image.delete.json | product.image.delete
[**product_image_update**](ProductApi.md#product_image_update) | **PUT** /product.image.update.json | product.image.update
[**product_info**](ProductApi.md#product_info) | **GET** /product.info.json | product.info
[**product_list**](ProductApi.md#product_list) | **GET** /product.list.json | product.list
[**product_manufacturer_add**](ProductApi.md#product_manufacturer_add) | **POST** /product.manufacturer.add.json | product.manufacturer.add
[**product_option_add**](ProductApi.md#product_option_add) | **POST** /product.option.add.json | product.option.add
[**product_option_assign**](ProductApi.md#product_option_assign) | **POST** /product.option.assign.json | product.option.assign
[**product_option_delete**](ProductApi.md#product_option_delete) | **DELETE** /product.option.delete.json | product.option.delete
[**product_option_list**](ProductApi.md#product_option_list) | **GET** /product.option.list.json | product.option.list
[**product_option_value_add**](ProductApi.md#product_option_value_add) | **POST** /product.option.value.add.json | product.option.value.add
[**product_option_value_assign**](ProductApi.md#product_option_value_assign) | **POST** /product.option.value.assign.json | product.option.value.assign
[**product_option_value_delete**](ProductApi.md#product_option_value_delete) | **DELETE** /product.option.value.delete.json | product.option.value.delete
[**product_option_value_update**](ProductApi.md#product_option_value_update) | **PUT** /product.option.value.update.json | product.option.value.update
[**product_price_add**](ProductApi.md#product_price_add) | **POST** /product.price.add.json | product.price.add
[**product_price_delete**](ProductApi.md#product_price_delete) | **DELETE** /product.price.delete.json | product.price.delete
[**product_price_update**](ProductApi.md#product_price_update) | **PUT** /product.price.update.json | product.price.update
[**product_review_list**](ProductApi.md#product_review_list) | **GET** /product.review.list.json | product.review.list
[**product_store_assign**](ProductApi.md#product_store_assign) | **POST** /product.store.assign.json | product.store.assign
[**product_tax_add**](ProductApi.md#product_tax_add) | **POST** /product.tax.add.json | product.tax.add
[**product_update**](ProductApi.md#product_update) | **PUT** /product.update.json | product.update
[**product_update_batch**](ProductApi.md#product_update_batch) | **POST** /product.update.batch.json | product.update.batch
[**product_variant_add**](ProductApi.md#product_variant_add) | **POST** /product.variant.add.json | product.variant.add
[**product_variant_add_batch**](ProductApi.md#product_variant_add_batch) | **POST** /product.variant.add.batch.json | product.variant.add.batch
[**product_variant_delete**](ProductApi.md#product_variant_delete) | **DELETE** /product.variant.delete.json | product.variant.delete
[**product_variant_delete_batch**](ProductApi.md#product_variant_delete_batch) | **POST** /product.variant.delete.batch.json | product.variant.delete.batch
[**product_variant_image_add**](ProductApi.md#product_variant_image_add) | **POST** /product.variant.image.add.json | product.variant.image.add
[**product_variant_image_delete**](ProductApi.md#product_variant_image_delete) | **DELETE** /product.variant.image.delete.json | product.variant.image.delete
[**product_variant_price_add**](ProductApi.md#product_variant_price_add) | **POST** /product.variant.price.add.json | product.variant.price.add
[**product_variant_price_delete**](ProductApi.md#product_variant_price_delete) | **DELETE** /product.variant.price.delete.json | product.variant.price.delete
[**product_variant_price_update**](ProductApi.md#product_variant_price_update) | **PUT** /product.variant.price.update.json | product.variant.price.update
[**product_variant_update**](ProductApi.md#product_variant_update) | **PUT** /product.variant.update.json | product.variant.update
[**product_variant_update_batch**](ProductApi.md#product_variant_update_batch) | **POST** /product.variant.update.batch.json | product.variant.update.batch


# **product_add**
> ProductAdd200Response product_add(product_add => $product_add)

product.add

Add new product to store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_add = WWW::OpenAPIClient::Object::ProductAdd->new(); # ProductAdd | 

eval {
    my $result = $api_instance->product_add(product_add => $product_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_add** | [**ProductAdd**](ProductAdd.md)|  | 

### Return type

[**ProductAdd200Response**](ProductAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_add_batch**
> CategoryAddBatch200Response product_add_batch(product_add_batch => $product_add_batch)

product.add.batch

Add new products to the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_add_batch = WWW::OpenAPIClient::Object::ProductAddBatch->new(); # ProductAddBatch | 

eval {
    my $result = $api_instance->product_add_batch(product_add_batch => $product_add_batch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_add_batch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_add_batch** | [**ProductAddBatch**](ProductAddBatch.md)|  | 

### Return type

[**CategoryAddBatch200Response**](CategoryAddBatch200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_attribute_list**
> ModelResponseProductAttributeList product_attribute_list(product_id => $product_id, start => $start, count => $count, page_cursor => $page_cursor, attribute_id => $attribute_id, variant_id => $variant_id, attribute_group_id => $attribute_group_id, lang_id => $lang_id, store_id => $store_id, set_name => $set_name, sort_by => $sort_by, sort_direction => $sort_direction, response_fields => $response_fields, params => $params, exclude => $exclude)

product.attribute.list

Get list of attributes and values.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Retrieves attributes specified by product id
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $attribute_id = 156; # string | Retrieves info for specified attribute_id
my $variant_id = 45; # string | Defines product's variants specified by variant id
my $attribute_group_id = 202; # string | Filter by attribute_group_id
my $lang_id = 3; # string | Retrieves attributes specified by language id
my $store_id = 1; # string | Retrieves attributes specified by store id
my $set_name = Shoes; # string | Retrieves attributes specified by set_name in Magento
my $sort_by = value; # string | Set field to sort by
my $sort_direction = asc; # string | Set sorting direction
my $response_fields = {pagination,result{attribute}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = attribute_id,name; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = attribute_id,name; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->product_attribute_list(product_id => $product_id, start => $start, count => $count, page_cursor => $page_cursor, attribute_id => $attribute_id, variant_id => $variant_id, attribute_group_id => $attribute_group_id, lang_id => $lang_id, store_id => $store_id, set_name => $set_name, sort_by => $sort_by, sort_direction => $sort_direction, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_attribute_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Retrieves attributes specified by product id | 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **attribute_id** | **string**| Retrieves info for specified attribute_id | [optional] 
 **variant_id** | **string**| Defines product&#39;s variants specified by variant id | [optional] 
 **attribute_group_id** | **string**| Filter by attribute_group_id | [optional] 
 **lang_id** | **string**| Retrieves attributes specified by language id | [optional] 
 **store_id** | **string**| Retrieves attributes specified by store id | [optional] 
 **set_name** | **string**| Retrieves attributes specified by set_name in Magento | [optional] 
 **sort_by** | **string**| Set field to sort by | [optional] [default to &#39;attribute_id&#39;]
 **sort_direction** | **string**| Set sorting direction | [optional] [default to &#39;asc&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;attribute_id,name&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseProductAttributeList**](ModelResponseProductAttributeList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_attribute_value_set**
> ProductAttributeValueSet200Response product_attribute_value_set(product_id => $product_id, attribute_id => $attribute_id, attribute_group_id => $attribute_group_id, attribute_name => $attribute_name, value => $value, value_id => $value_id, lang_id => $lang_id, store_id => $store_id)

product.attribute.value.set

Set attribute value to product.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Defines product id where the attribute should be added
my $attribute_id = 156; # string | Filter by attribute_id
my $attribute_group_id = 202; # string | Filter by attribute_group_id
my $attribute_name = Color; # string | Define attribute name
my $value = Red; # string | Define attribute value
my $value_id = 22; # int | Define attribute value id
my $lang_id = 3; # string | Language id
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_attribute_value_set(product_id => $product_id, attribute_id => $attribute_id, attribute_group_id => $attribute_group_id, attribute_name => $attribute_name, value => $value, value_id => $value_id, lang_id => $lang_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_attribute_value_set: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Defines product id where the attribute should be added | 
 **attribute_id** | **string**| Filter by attribute_id | [optional] 
 **attribute_group_id** | **string**| Filter by attribute_group_id | [optional] 
 **attribute_name** | **string**| Define attribute name | [optional] 
 **value** | **string**| Define attribute value | [optional] 
 **value_id** | **int**| Define attribute value id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**ProductAttributeValueSet200Response**](ProductAttributeValueSet200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_attribute_value_unset**
> ProductAttributeValueUnset200Response product_attribute_value_unset(product_id => $product_id, attribute_id => $attribute_id, store_id => $store_id, include_default => $include_default, reindex => $reindex, clear_cache => $clear_cache)

product.attribute.value.unset

Removes attribute value for a product.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Product id
my $attribute_id = 156; # string | Attribute Id
my $store_id = 1; # string | Store Id
my $include_default = true; # boolean | Boolean, whether or not to unset default value of the attribute, if applicable
my $reindex = false; # boolean | Is reindex required
my $clear_cache = false; # boolean | Is cache clear required

eval {
    my $result = $api_instance->product_attribute_value_unset(product_id => $product_id, attribute_id => $attribute_id, store_id => $store_id, include_default => $include_default, reindex => $reindex, clear_cache => $clear_cache);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_attribute_value_unset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Product id | 
 **attribute_id** | **string**| Attribute Id | 
 **store_id** | **string**| Store Id | [optional] 
 **include_default** | **boolean**| Boolean, whether or not to unset default value of the attribute, if applicable | [optional] [default to false]
 **reindex** | **boolean**| Is reindex required | [optional] [default to true]
 **clear_cache** | **boolean**| Is cache clear required | [optional] [default to true]

### Return type

[**ProductAttributeValueUnset200Response**](ProductAttributeValueUnset200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_brand_list**
> ModelResponseProductBrandList product_brand_list(start => $start, count => $count, page_cursor => $page_cursor, brand_ids => $brand_ids, category_id => $category_id, parent_id => $parent_id, store_id => $store_id, lang_id => $lang_id, find_where => $find_where, find_value => $find_value, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, response_fields => $response_fields, params => $params, exclude => $exclude)

product.brand.list

Get list of brands from your store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

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
my $brand_ids = 4,5; # string | Retrieves brands specified by brand ids
my $category_id = 6; # string | Retrieves product brands specified by category id
my $parent_id = 6; # string | Retrieves brands specified by parent id
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $find_where = name; # string | Entity search that is specified by the comma-separated unique fields
my $find_value = Phone; # string | Entity search that is specified by some value
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $response_fields = {return_code,return_message,pagination,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->product_brand_list(start => $start, count => $count, page_cursor => $page_cursor, brand_ids => $brand_ids, category_id => $category_id, parent_id => $parent_id, store_id => $store_id, lang_id => $lang_id, find_where => $find_where, find_value => $find_value, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_brand_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **brand_ids** | **string**| Retrieves brands specified by brand ids | [optional] 
 **category_id** | **string**| Retrieves product brands specified by category id | [optional] 
 **parent_id** | **string**| Retrieves brands specified by parent id | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **find_where** | **string**| Entity search that is specified by the comma-separated unique fields | [optional] 
 **find_value** | **string**| Entity search that is specified by some value | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name,short_description,active,url&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseProductBrandList**](ModelResponseProductBrandList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_child_item_find**
> ProductChildItemFind200Response product_child_item_find(find_value => $find_value, find_where => $find_where, find_params => $find_params, store_id => $store_id)

product.child_item.find

Search product child item (bundled item or configurable product variant) in store catalog.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $find_value = bundled-item-123-; # string | Entity search that is specified by some value
my $find_where = sku; # string | Entity search that is specified by the comma-separated unique fields
my $find_params = regex; # string | Entity search that is specified by comma-separated parameters
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_child_item_find(find_value => $find_value, find_where => $find_where, find_params => $find_params, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_child_item_find: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **find_value** | **string**| Entity search that is specified by some value | [optional] 
 **find_where** | **string**| Entity search that is specified by the comma-separated unique fields | [optional] 
 **find_params** | **string**| Entity search that is specified by comma-separated parameters | [optional] [default to &#39;whole_words&#39;]
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**ProductChildItemFind200Response**](ProductChildItemFind200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_child_item_info**
> ProductChildItemInfo200Response product_child_item_info(product_id => $product_id, id => $id, store_id => $store_id, lang_id => $lang_id, currency_id => $currency_id, response_fields => $response_fields, params => $params, exclude => $exclude, use_latest_api_version => $use_latest_api_version)

product.child_item.info

Get child for specific product.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Filter by parent product id
my $id = 10; # string | Entity id
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $currency_id = usd; # string | Currency Id
my $response_fields = {result{id,parent_id,sku,upc,images,combination}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $use_latest_api_version = true; # boolean | Use the latest platform API version

eval {
    my $result = $api_instance->product_child_item_info(product_id => $product_id, id => $id, store_id => $store_id, lang_id => $lang_id, currency_id => $currency_id, response_fields => $response_fields, params => $params, exclude => $exclude, use_latest_api_version => $use_latest_api_version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_child_item_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Filter by parent product id | 
 **id** | **string**| Entity id | 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **currency_id** | **string**| Currency Id | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;force_all&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **use_latest_api_version** | **boolean**| Use the latest platform API version | [optional] [default to false]

### Return type

[**ProductChildItemInfo200Response**](ProductChildItemInfo200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_child_item_list**
> ModelResponseProductChildItemList product_child_item_list(start => $start, count => $count, page_cursor => $page_cursor, product_id => $product_id, product_ids => $product_ids, sku => $sku, store_id => $store_id, lang_id => $lang_id, currency_id => $currency_id, avail_sale => $avail_sale, find_value => $find_value, find_where => $find_where, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, return_global => $return_global, response_fields => $response_fields, params => $params, exclude => $exclude, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache, use_latest_api_version => $use_latest_api_version)

product.child_item.list

Get a list of a product's child items, such as variants or bundle components. The total_count field in the response indicates the total number of items in the context of the current filter.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

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
my $page_cursor = ; # string | Used to retrieve products child items via cursor-based pagination (it can't be used with any other filtering parameter)
my $product_id = 10; # string | Filter by parent product id
my $product_ids = 4,5; # string | Filter by parent product ids
my $sku = bag_01; # string | Filter by products variant's sku
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $currency_id = usd; # string | Currency Id
my $avail_sale = false; # boolean | Specifies the set of available/not available products for sale
my $find_value = bundled-item-123-; # string | Entity search that is specified by some value
my $find_where = sku; # string | Child products search that is specified by field
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $return_global = false; # boolean | Determines the type of products to be returned. If set to 'true', only global products will be returned; if set to 'false', only local products will be returned.
my $response_fields = {result{children{id,parent_id,sku,upc,images,combination}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $report_request_id = 105245017661; # string | Report request id
my $disable_report_cache = false; # boolean | Disable report cache for current request
my $use_latest_api_version = true; # boolean | Use the latest platform API version

eval {
    my $result = $api_instance->product_child_item_list(start => $start, count => $count, page_cursor => $page_cursor, product_id => $product_id, product_ids => $product_ids, sku => $sku, store_id => $store_id, lang_id => $lang_id, currency_id => $currency_id, avail_sale => $avail_sale, find_value => $find_value, find_where => $find_where, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, return_global => $return_global, response_fields => $response_fields, params => $params, exclude => $exclude, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache, use_latest_api_version => $use_latest_api_version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_child_item_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve products child items via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **product_id** | **string**| Filter by parent product id | [optional] 
 **product_ids** | **string**| Filter by parent product ids | [optional] 
 **sku** | **string**| Filter by products variant&#39;s sku | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **currency_id** | **string**| Currency Id | [optional] 
 **avail_sale** | **boolean**| Specifies the set of available/not available products for sale | [optional] 
 **find_value** | **string**| Entity search that is specified by some value | [optional] 
 **find_where** | **string**| Child products search that is specified by field | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **return_global** | **boolean**| Determines the type of products to be returned. If set to &#39;true&#39;, only global products will be returned; if set to &#39;false&#39;, only local products will be returned. | [optional] [default to false]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;force_all&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **report_request_id** | **string**| Report request id | [optional] 
 **disable_report_cache** | **boolean**| Disable report cache for current request | [optional] [default to false]
 **use_latest_api_version** | **boolean**| Use the latest platform API version | [optional] [default to false]

### Return type

[**ModelResponseProductChildItemList**](ModelResponseProductChildItemList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_count**
> ProductCount200Response product_count(sku => $sku, product_ids => $product_ids, since_id => $since_id, categories_ids => $categories_ids, category_id => $category_id, store_id => $store_id, lang_id => $lang_id, avail_view => $avail_view, avail_sale => $avail_sale, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, brand_name => $brand_name, manufacturer_id => $manufacturer_id, product_attributes => $product_attributes, status => $status, type => $type, visible => $visible, find_value => $find_value, find_where => $find_where, report_request_id => $report_request_id, return_global => $return_global, disable_report_cache => $disable_report_cache, use_latest_api_version => $use_latest_api_version)

product.count

Count products in store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $sku = bag_01; # string | Filter by product's sku
my $product_ids = 4,5; # string | Counts products specified by product ids
my $since_id = 56; # string | Retrieve entities starting from the specified id.
my $categories_ids = 23,56; # string | Defines product add that is specified by comma-separated categories id
my $category_id = 6; # string | Counts products specified by category id
my $store_id = 1; # string | Counts products specified by store id
my $lang_id = 3; # string | Counts products specified by language id
my $avail_view = true; # boolean | Specifies the set of visible/invisible products
my $avail_sale = false; # boolean | Specifies the set of available/not available products for sale
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $brand_name = Abidas; # string | Retrieves brands specified by brand name
my $manufacturer_id = 1; # string | Defines product's manufacturer by manufacturer_id
my $product_attributes = [product_attributes[0][attribute_id]=132&product_attributes[0][values][0]=custom value 1&product_attributes[0][values][1]=custom value 2]; # ARRAY[string] | Defines product attributes
my $status = disabled; # string | Defines product's status
my $type = simple; # string | Defines products's type
my $visible = everywhere; # string | Filter items by visibility status
my $find_value = Phone; # string | Entity search that is specified by some value
my $find_where = name; # string | Counts products that are searched specified by field
my $report_request_id = 105245017661; # string | Report request id
my $return_global = false; # boolean | Determines the type of products to be returned. If set to 'true', only global products will be returned; if set to 'false', only local products will be returned.
my $disable_report_cache = false; # boolean | Disable report cache for current request
my $use_latest_api_version = true; # boolean | Use the latest platform API version

eval {
    my $result = $api_instance->product_count(sku => $sku, product_ids => $product_ids, since_id => $since_id, categories_ids => $categories_ids, category_id => $category_id, store_id => $store_id, lang_id => $lang_id, avail_view => $avail_view, avail_sale => $avail_sale, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, brand_name => $brand_name, manufacturer_id => $manufacturer_id, product_attributes => $product_attributes, status => $status, type => $type, visible => $visible, find_value => $find_value, find_where => $find_where, report_request_id => $report_request_id, return_global => $return_global, disable_report_cache => $disable_report_cache, use_latest_api_version => $use_latest_api_version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sku** | **string**| Filter by product&#39;s sku | [optional] 
 **product_ids** | **string**| Counts products specified by product ids | [optional] 
 **since_id** | **string**| Retrieve entities starting from the specified id. | [optional] 
 **categories_ids** | **string**| Defines product add that is specified by comma-separated categories id | [optional] 
 **category_id** | **string**| Counts products specified by category id | [optional] 
 **store_id** | **string**| Counts products specified by store id | [optional] 
 **lang_id** | **string**| Counts products specified by language id | [optional] 
 **avail_view** | **boolean**| Specifies the set of visible/invisible products | [optional] 
 **avail_sale** | **boolean**| Specifies the set of available/not available products for sale | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **brand_name** | **string**| Retrieves brands specified by brand name | [optional] 
 **manufacturer_id** | **string**| Defines product&#39;s manufacturer by manufacturer_id | [optional] 
 **product_attributes** | [**ARRAY[string]**](string.md)| Defines product attributes | [optional] 
 **status** | **string**| Defines product&#39;s status | [optional] 
 **type** | **string**| Defines products&#39;s type | [optional] 
 **visible** | **string**| Filter items by visibility status | [optional] [default to &#39;everywhere&#39;]
 **find_value** | **string**| Entity search that is specified by some value | [optional] 
 **find_where** | **string**| Counts products that are searched specified by field | [optional] 
 **report_request_id** | **string**| Report request id | [optional] 
 **return_global** | **boolean**| Determines the type of products to be returned. If set to &#39;true&#39;, only global products will be returned; if set to &#39;false&#39;, only local products will be returned. | [optional] [default to false]
 **disable_report_cache** | **boolean**| Disable report cache for current request | [optional] [default to false]
 **use_latest_api_version** | **boolean**| Use the latest platform API version | [optional] [default to false]

### Return type

[**ProductCount200Response**](ProductCount200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_currency_add**
> ProductCurrencyAdd200Response product_currency_add(iso3 => $iso3, rate => $rate, name => $name, avail => $avail, symbol_left => $symbol_left, symbol_right => $symbol_right, default => $default)

product.currency.add

Add currency and/or set default in store

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $iso3 = USD; # string | Specifies standardized currency code
my $rate = 1; # double | Defines the numerical identifier against to the major currency
my $name = US Dollar; # string | Defines currency's name
my $avail = false; # boolean | Specifies whether the currency is available
my $symbol_left = $; # string | Defines the symbol that is located before the currency
my $symbol_right = грн; # string | Defines the symbol that is located after the currency
my $default = true; # boolean | Specifies currency's default meaning

eval {
    my $result = $api_instance->product_currency_add(iso3 => $iso3, rate => $rate, name => $name, avail => $avail, symbol_left => $symbol_left, symbol_right => $symbol_right, default => $default);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_currency_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iso3** | **string**| Specifies standardized currency code | 
 **rate** | **double**| Defines the numerical identifier against to the major currency | 
 **name** | **string**| Defines currency&#39;s name | [optional] 
 **avail** | **boolean**| Specifies whether the currency is available | [optional] [default to true]
 **symbol_left** | **string**| Defines the symbol that is located before the currency | [optional] 
 **symbol_right** | **string**| Defines the symbol that is located after the currency | [optional] 
 **default** | **boolean**| Specifies currency&#39;s default meaning | [optional] [default to false]

### Return type

[**ProductCurrencyAdd200Response**](ProductCurrencyAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_currency_list**
> ModelResponseProductCurrencyList product_currency_list(start => $start, count => $count, page_cursor => $page_cursor, default => $default, avail => $avail, response_fields => $response_fields, params => $params, exclude => $exclude)

product.currency.list

Get list of currencies

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

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
my $default = true; # boolean | Specifies the set of default/not default currencies
my $avail = false; # boolean | Specifies the set of available/not available currencies
my $response_fields = {return_message,pagination,result{currency}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = name,iso3,default,avail; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = name,iso3,default,avail; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->product_currency_list(start => $start, count => $count, page_cursor => $page_cursor, default => $default, avail => $avail, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_currency_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **default** | **boolean**| Specifies the set of default/not default currencies | [optional] 
 **avail** | **boolean**| Specifies the set of available/not available currencies | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;name,iso3,default,avail&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseProductCurrencyList**](ModelResponseProductCurrencyList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_delete**
> CustomerDelete200Response product_delete(id => $id, store_id => $store_id)

product.delete

Product delete

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Product id that will be removed
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_delete(id => $id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Product id that will be removed | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**CustomerDelete200Response**](CustomerDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_delete_batch**
> CategoryAddBatch200Response product_delete_batch(product_delete_batch => $product_delete_batch)

product.delete.batch

Remove product from the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_delete_batch = WWW::OpenAPIClient::Object::ProductDeleteBatch->new(); # ProductDeleteBatch | 

eval {
    my $result = $api_instance->product_delete_batch(product_delete_batch => $product_delete_batch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_delete_batch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_delete_batch** | [**ProductDeleteBatch**](ProductDeleteBatch.md)|  | 

### Return type

[**CategoryAddBatch200Response**](CategoryAddBatch200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_find**
> ProductFind200Response product_find(find_value => $find_value, find_where => $find_where, find_params => $find_params, find_what => $find_what, lang_id => $lang_id, store_id => $store_id)

product.find

Search product in store catalog. \"Apple\" is specified here by default.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $find_value = Simple; # string | Entity search that is specified by some value
my $find_where = name; # string | Entity search that is specified by the comma-separated unique fields
my $find_params = regex; # string | Entity search that is specified by comma-separated parameters
my $find_what = each; # string | Parameter's value specifies the entity that has to be found
my $lang_id = 3; # string | Search products specified by language id
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_find(find_value => $find_value, find_where => $find_where, find_params => $find_params, find_what => $find_what, lang_id => $lang_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_find: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **find_value** | **string**| Entity search that is specified by some value | 
 **find_where** | **string**| Entity search that is specified by the comma-separated unique fields | [optional] [default to &#39;name&#39;]
 **find_params** | **string**| Entity search that is specified by comma-separated parameters | [optional] [default to &#39;whole_words&#39;]
 **find_what** | **string**| Parameter&#39;s value specifies the entity that has to be found | [optional] [default to &#39;product&#39;]
 **lang_id** | **string**| Search products specified by language id | [optional] 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**ProductFind200Response**](ProductFind200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_image_add**
> ProductImageAdd200Response product_image_add(product_image_add => $product_image_add)

product.image.add

Add image to product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_image_add = WWW::OpenAPIClient::Object::ProductImageAdd->new(); # ProductImageAdd | 

eval {
    my $result = $api_instance->product_image_add(product_image_add => $product_image_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_image_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_image_add** | [**ProductImageAdd**](ProductImageAdd.md)|  | 

### Return type

[**ProductImageAdd200Response**](ProductImageAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_image_delete**
> AttributeDelete200Response product_image_delete(product_id => $product_id, id => $id, store_id => $store_id)

product.image.delete

Delete image

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Defines product id where the image should be deleted
my $id = 10; # string | Entity id
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_image_delete(product_id => $product_id, id => $id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_image_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Defines product id where the image should be deleted | 
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

# **product_image_update**
> ProductImageUpdate200Response product_image_update(product_id => $product_id, id => $id, variant_ids => $variant_ids, store_id => $store_id, lang_id => $lang_id, image_name => $image_name, type => $type, label => $label, position => $position, hidden => $hidden)

product.image.update

Update details of image

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Defines product id where the image should be updated
my $id = 10; # string | Defines image update specified by image id
my $variant_ids = 1,2,3,4,5; # string | Defines product's variants ids
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $image_name = data/product/main/product_69_bag-gray.png; # string | Defines image's name
my $type = thumbnail; # string | Defines image's types that are specified by comma-separated list
my $label = This cool image; # string | Defines alternative text that has to be attached to the picture
my $position = 5; # int | Defines image’s position in the list
my $hidden = true; # boolean | Define is hide image

eval {
    my $result = $api_instance->product_image_update(product_id => $product_id, id => $id, variant_ids => $variant_ids, store_id => $store_id, lang_id => $lang_id, image_name => $image_name, type => $type, label => $label, position => $position, hidden => $hidden);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_image_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Defines product id where the image should be updated | 
 **id** | **string**| Defines image update specified by image id | 
 **variant_ids** | **string**| Defines product&#39;s variants ids | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **image_name** | **string**| Defines image&#39;s name | [optional] 
 **type** | **string**| Defines image&#39;s types that are specified by comma-separated list | [optional] [default to &#39;additional&#39;]
 **label** | **string**| Defines alternative text that has to be attached to the picture | [optional] 
 **position** | **int**| Defines image’s position in the list | [optional] 
 **hidden** | **boolean**| Define is hide image | [optional] 

### Return type

[**ProductImageUpdate200Response**](ProductImageUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_info**
> ProductInfo200Response product_info(id => $id, store_id => $store_id, lang_id => $lang_id, currency_id => $currency_id, response_fields => $response_fields, params => $params, exclude => $exclude, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache, use_latest_api_version => $use_latest_api_version)

product.info

Get information about a specific product by its ID. In the case of a multistore configuration, use the store_id filter to get a response in the context of a specific store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Retrieves product's info specified by product id
my $store_id = 1; # string | Retrieves product info specified by store id
my $lang_id = 3; # string | Retrieves product info specified by language id
my $currency_id = usd; # string | Currency Id
my $response_fields = {result{id,name,price,images}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $report_request_id = 105245017661; # string | Report request id
my $disable_report_cache = false; # boolean | Disable report cache for current request
my $use_latest_api_version = true; # boolean | Use the latest platform API version

eval {
    my $result = $api_instance->product_info(id => $id, store_id => $store_id, lang_id => $lang_id, currency_id => $currency_id, response_fields => $response_fields, params => $params, exclude => $exclude, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache, use_latest_api_version => $use_latest_api_version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Retrieves product&#39;s info specified by product id | 
 **store_id** | **string**| Retrieves product info specified by store id | [optional] 
 **lang_id** | **string**| Retrieves product info specified by language id | [optional] 
 **currency_id** | **string**| Currency Id | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name,description,price,categories_ids&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **report_request_id** | **string**| Report request id | [optional] 
 **disable_report_cache** | **boolean**| Disable report cache for current request | [optional] [default to false]
 **use_latest_api_version** | **boolean**| Use the latest platform API version | [optional] [default to false]

### Return type

[**ProductInfo200Response**](ProductInfo200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_list**
> ModelResponseProductList product_list(start => $start, count => $count, page_cursor => $page_cursor, product_ids => $product_ids, since_id => $since_id, categories_ids => $categories_ids, category_id => $category_id, store_id => $store_id, lang_id => $lang_id, currency_id => $currency_id, avail_view => $avail_view, avail_sale => $avail_sale, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, sku => $sku, brand_name => $brand_name, product_attributes => $product_attributes, manufacturer_id => $manufacturer_id, status => $status, type => $type, visible => $visible, find_value => $find_value, find_where => $find_where, return_global => $return_global, params => $params, response_fields => $response_fields, exclude => $exclude, sort_by => $sort_by, sort_direction => $sort_direction, report_request_id => $report_request_id, disable_cache => $disable_cache, disable_report_cache => $disable_report_cache, use_latest_api_version => $use_latest_api_version, product_type => $product_type)

product.list

Get list of products from your store. Returns 10 products by default.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

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
my $page_cursor = ; # string | Used to retrieve products via cursor-based pagination (it can't be used with any other filtering parameter)
my $product_ids = 4,5; # string | Retrieves products specified by product ids
my $since_id = 56; # string | Retrieve entities starting from the specified id.
my $categories_ids = 23,56; # string | Retrieves products specified by categories ids
my $category_id = 6; # string | Retrieves products specified by category id
my $store_id = 1; # string | Retrieves products specified by store id
my $lang_id = 3; # string | Retrieves products specified by language id
my $currency_id = usd; # string | Currency Id
my $avail_view = true; # boolean | Specifies the set of visible/invisible products
my $avail_sale = false; # boolean | Specifies the set of available/not available products for sale
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $sku = bag_01; # string | Filter by product's sku
my $brand_name = Abidas; # string | Retrieves brands specified by brand name
my $product_attributes = [product_attributes[0][attribute_id]=132&product_attributes[0][values][0]=custom value 1&product_attributes[0][values][1]=custom value 2]; # ARRAY[string] | Defines product attributes
my $manufacturer_id = 1; # string | Defines product's manufacturer by manufacturer_id
my $status = disabled; # string | Defines product's status
my $type = simple; # string | Defines products's type
my $visible = everywhere; # string | Filter items by visibility status
my $find_value = Phone; # string | Entity search that is specified by some value
my $find_where = name; # string | Product search that is specified by field
my $return_global = false; # boolean | Determines the type of products to be returned. If set to 'true', only global products will be returned; if set to 'false', only local products will be returned.
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {return_code,pagination,result{product{id,name,price,images}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $sort_by = value_id; # string | Set field to sort by
my $sort_direction = asc; # string | Set sorting direction
my $report_request_id = 105245017661; # string | Report request id
my $disable_cache = false; # boolean | Disable cache for current request
my $disable_report_cache = false; # boolean | Disable report cache for current request
my $use_latest_api_version = true; # boolean | Use the latest platform API version
my $product_type = BICYCLE; # string | A categorization for the product

eval {
    my $result = $api_instance->product_list(start => $start, count => $count, page_cursor => $page_cursor, product_ids => $product_ids, since_id => $since_id, categories_ids => $categories_ids, category_id => $category_id, store_id => $store_id, lang_id => $lang_id, currency_id => $currency_id, avail_view => $avail_view, avail_sale => $avail_sale, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, sku => $sku, brand_name => $brand_name, product_attributes => $product_attributes, manufacturer_id => $manufacturer_id, status => $status, type => $type, visible => $visible, find_value => $find_value, find_where => $find_where, return_global => $return_global, params => $params, response_fields => $response_fields, exclude => $exclude, sort_by => $sort_by, sort_direction => $sort_direction, report_request_id => $report_request_id, disable_cache => $disable_cache, disable_report_cache => $disable_report_cache, use_latest_api_version => $use_latest_api_version, product_type => $product_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve products via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **product_ids** | **string**| Retrieves products specified by product ids | [optional] 
 **since_id** | **string**| Retrieve entities starting from the specified id. | [optional] 
 **categories_ids** | **string**| Retrieves products specified by categories ids | [optional] 
 **category_id** | **string**| Retrieves products specified by category id | [optional] 
 **store_id** | **string**| Retrieves products specified by store id | [optional] 
 **lang_id** | **string**| Retrieves products specified by language id | [optional] 
 **currency_id** | **string**| Currency Id | [optional] 
 **avail_view** | **boolean**| Specifies the set of visible/invisible products | [optional] 
 **avail_sale** | **boolean**| Specifies the set of available/not available products for sale | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **sku** | **string**| Filter by product&#39;s sku | [optional] 
 **brand_name** | **string**| Retrieves brands specified by brand name | [optional] 
 **product_attributes** | [**ARRAY[string]**](string.md)| Defines product attributes | [optional] 
 **manufacturer_id** | **string**| Defines product&#39;s manufacturer by manufacturer_id | [optional] 
 **status** | **string**| Defines product&#39;s status | [optional] 
 **type** | **string**| Defines products&#39;s type | [optional] 
 **visible** | **string**| Filter items by visibility status | [optional] [default to &#39;everywhere&#39;]
 **find_value** | **string**| Entity search that is specified by some value | [optional] 
 **find_where** | **string**| Product search that is specified by field | [optional] 
 **return_global** | **boolean**| Determines the type of products to be returned. If set to &#39;true&#39;, only global products will be returned; if set to &#39;false&#39;, only local products will be returned. | [optional] [default to false]
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name,description,price,categories_ids&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **sort_by** | **string**| Set field to sort by | [optional] [default to &#39;id&#39;]
 **sort_direction** | **string**| Set sorting direction | [optional] [default to &#39;asc&#39;]
 **report_request_id** | **string**| Report request id | [optional] 
 **disable_cache** | **boolean**| Disable cache for current request | [optional] [default to false]
 **disable_report_cache** | **boolean**| Disable report cache for current request | [optional] [default to false]
 **use_latest_api_version** | **boolean**| Use the latest platform API version | [optional] [default to false]
 **product_type** | **string**| A categorization for the product | [optional] 

### Return type

[**ModelResponseProductList**](ModelResponseProductList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_manufacturer_add**
> ProductManufacturerAdd200Response product_manufacturer_add(product_id => $product_id, manufacturer => $manufacturer, store_id => $store_id, meta_title => $meta_title, meta_keywords => $meta_keywords, meta_description => $meta_description, search_keywords => $search_keywords, image_url => $image_url, seo_url => $seo_url)

product.manufacturer.add

Add manufacturer to store and assign to product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Defines products specified by product id
my $manufacturer = Samsung; # string | Defines product’s manufacturer's name
my $store_id = 1; # string | Store Id
my $meta_title = category,test; # string | Defines unique meta title for each entity
my $meta_keywords = category,test; # string | Defines unique meta keywords for each entity
my $meta_description = category,test; # string | Defines unique meta description of a entity
my $search_keywords = key1,key2,key3; # string | Defines unique search keywords
my $image_url = https://docs.api2cart.com/img/logo.png; # string | Image Url
my $seo_url = some seo url; # string | Defines unique URL for SEO

eval {
    my $result = $api_instance->product_manufacturer_add(product_id => $product_id, manufacturer => $manufacturer, store_id => $store_id, meta_title => $meta_title, meta_keywords => $meta_keywords, meta_description => $meta_description, search_keywords => $search_keywords, image_url => $image_url, seo_url => $seo_url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_manufacturer_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Defines products specified by product id | 
 **manufacturer** | **string**| Defines product’s manufacturer&#39;s name | 
 **store_id** | **string**| Store Id | [optional] 
 **meta_title** | **string**| Defines unique meta title for each entity | [optional] 
 **meta_keywords** | **string**| Defines unique meta keywords for each entity | [optional] 
 **meta_description** | **string**| Defines unique meta description of a entity | [optional] 
 **search_keywords** | **string**| Defines unique search keywords | [optional] 
 **image_url** | **string**| Image Url | [optional] 
 **seo_url** | **string**| Defines unique URL for SEO | [optional] 

### Return type

[**ProductManufacturerAdd200Response**](ProductManufacturerAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_option_add**
> ProductOptionAdd200Response product_option_add(product_option_add => $product_option_add)

product.option.add

Add product option from store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_option_add = WWW::OpenAPIClient::Object::ProductOptionAdd->new(); # ProductOptionAdd | 

eval {
    my $result = $api_instance->product_option_add(product_option_add => $product_option_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_option_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_option_add** | [**ProductOptionAdd**](ProductOptionAdd.md)|  | 

### Return type

[**ProductOptionAdd200Response**](ProductOptionAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_option_assign**
> ProductOptionAssign200Response product_option_assign(product_id => $product_id, option_id => $option_id, required => $required, sort_order => $sort_order, option_values => $option_values, clear_cache => $clear_cache)

product.option.assign

Assign option from product.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Defines product id where the option should be assigned
my $option_id = 5; # string | Defines option id which has to be assigned
my $required = true; # boolean | Defines if the option is required
my $sort_order = 2; # int | Sort number in the list
my $option_values = green,black,yellow; # string | Defines option values that has to be assigned
my $clear_cache = false; # boolean | Is cache clear required

eval {
    my $result = $api_instance->product_option_assign(product_id => $product_id, option_id => $option_id, required => $required, sort_order => $sort_order, option_values => $option_values, clear_cache => $clear_cache);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_option_assign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Defines product id where the option should be assigned | 
 **option_id** | **string**| Defines option id which has to be assigned | 
 **required** | **boolean**| Defines if the option is required | [optional] [default to false]
 **sort_order** | **int**| Sort number in the list | [optional] [default to 0]
 **option_values** | **string**| Defines option values that has to be assigned | [optional] 
 **clear_cache** | **boolean**| Is cache clear required | [optional] [default to true]

### Return type

[**ProductOptionAssign200Response**](ProductOptionAssign200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_option_delete**
> AttributeDelete200Response product_option_delete(option_id => $option_id, product_id => $product_id, store_id => $store_id)

product.option.delete

Product option delete.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $option_id = 5; # string | Defines option id that should be deleted
my $product_id = 10; # string | Defines product id where the option should be deleted
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_option_delete(option_id => $option_id, product_id => $product_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_option_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **option_id** | **string**| Defines option id that should be deleted | 
 **product_id** | **string**| Defines product id where the option should be deleted | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**AttributeDelete200Response**](AttributeDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_option_list**
> ModelResponseProductOptionList product_option_list(start => $start, count => $count, product_id => $product_id, lang_id => $lang_id, store_id => $store_id, response_fields => $response_fields, params => $params, exclude => $exclude)

product.option.list

Get list of options.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

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
my $product_id = 10; # string | Retrieves products' options specified by product id
my $lang_id = 3; # string | Language id
my $store_id = 1; # string | Store Id
my $response_fields = {return_code,return_message,pagination,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,name,sort_order; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = id,name,sort_order; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->product_option_list(start => $start, count => $count, product_id => $product_id, lang_id => $lang_id, store_id => $store_id, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_option_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **product_id** | **string**| Retrieves products&#39; options specified by product id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name,description&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseProductOptionList**](ModelResponseProductOptionList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_option_value_add**
> ProductOptionValueAdd200Response product_option_value_add(product_id => $product_id, option_id => $option_id, option_value => $option_value, sort_order => $sort_order, display_value => $display_value, is_default => $is_default, clear_cache => $clear_cache)

product.option.value.add

Add product option item from option.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Defines product id where the option value should be added
my $option_id = 5; # string | Defines option id where the value has to be added
my $option_value = green; # string | Defines option value that has to be added
my $sort_order = 2; # int | Sort number in the list
my $display_value = value; # string | Defines the value that will be displayed for the option value
my $is_default = true; # boolean | Defines as a default
my $clear_cache = false; # boolean | Is cache clear required

eval {
    my $result = $api_instance->product_option_value_add(product_id => $product_id, option_id => $option_id, option_value => $option_value, sort_order => $sort_order, display_value => $display_value, is_default => $is_default, clear_cache => $clear_cache);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_option_value_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Defines product id where the option value should be added | 
 **option_id** | **string**| Defines option id where the value has to be added | 
 **option_value** | **string**| Defines option value that has to be added | [optional] 
 **sort_order** | **int**| Sort number in the list | [optional] [default to 0]
 **display_value** | **string**| Defines the value that will be displayed for the option value | [optional] 
 **is_default** | **boolean**| Defines as a default | [optional] 
 **clear_cache** | **boolean**| Is cache clear required | [optional] [default to true]

### Return type

[**ProductOptionValueAdd200Response**](ProductOptionValueAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_option_value_assign**
> ProductOptionValueAssign200Response product_option_value_assign(product_option_id => $product_option_id, option_value_id => $option_value_id, clear_cache => $clear_cache)

product.option.value.assign

Assign product option item from product.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_option_id = 5; # int | Defines product's option id where the value has to be assigned
my $option_value_id = 45; # string | Defines value id that has to be assigned
my $clear_cache = false; # boolean | Is cache clear required

eval {
    my $result = $api_instance->product_option_value_assign(product_option_id => $product_option_id, option_value_id => $option_value_id, clear_cache => $clear_cache);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_option_value_assign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_option_id** | **int**| Defines product&#39;s option id where the value has to be assigned | 
 **option_value_id** | **string**| Defines value id that has to be assigned | 
 **clear_cache** | **boolean**| Is cache clear required | [optional] [default to true]

### Return type

[**ProductOptionValueAssign200Response**](ProductOptionValueAssign200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_option_value_delete**
> AttributeDelete200Response product_option_value_delete(option_id => $option_id, option_value_id => $option_value_id, product_id => $product_id, store_id => $store_id)

product.option.value.delete

Product option value delete.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $option_id = 5; # string | Defines option id where the value should be deleted
my $option_value_id = 45; # string | Defines option value id that should be deleted
my $product_id = 10; # string | Defines product id where the option value should be deleted
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_option_value_delete(option_id => $option_id, option_value_id => $option_value_id, product_id => $product_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_option_value_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **option_id** | **string**| Defines option id where the value should be deleted | 
 **option_value_id** | **string**| Defines option value id that should be deleted | 
 **product_id** | **string**| Defines product id where the option value should be deleted | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**AttributeDelete200Response**](AttributeDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_option_value_update**
> AccountConfigUpdate200Response product_option_value_update(product_id => $product_id, option_id => $option_id, option_value_id => $option_value_id, option_value => $option_value, price => $price, quantity => $quantity, display_value => $display_value, clear_cache => $clear_cache)

product.option.value.update

Update product option item from option.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Defines product id where the option value should be updated
my $option_id = 5; # string | Defines option id where the value has to be updated
my $option_value_id = 45; # string | Defines value id that has to be assigned
my $option_value = green; # string | Defines option value that has to be added
my $price = 99.9; # double | Defines new product option price
my $quantity = 6; # double | Defines new products' options quantity
my $display_value = value; # string | Defines the value that will be displayed for the option value
my $clear_cache = false; # boolean | Is cache clear required

eval {
    my $result = $api_instance->product_option_value_update(product_id => $product_id, option_id => $option_id, option_value_id => $option_value_id, option_value => $option_value, price => $price, quantity => $quantity, display_value => $display_value, clear_cache => $clear_cache);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_option_value_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Defines product id where the option value should be updated | 
 **option_id** | **string**| Defines option id where the value has to be updated | 
 **option_value_id** | **string**| Defines value id that has to be assigned | 
 **option_value** | **string**| Defines option value that has to be added | [optional] 
 **price** | **double**| Defines new product option price | [optional] 
 **quantity** | **double**| Defines new products&#39; options quantity | [optional] 
 **display_value** | **string**| Defines the value that will be displayed for the option value | [optional] 
 **clear_cache** | **boolean**| Is cache clear required | [optional] [default to true]

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_price_add**
> CartValidate200Response product_price_add(product_price_add => $product_price_add)

product.price.add

Add some prices to the product.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_price_add = WWW::OpenAPIClient::Object::ProductPriceAdd->new(); # ProductPriceAdd | 

eval {
    my $result = $api_instance->product_price_add(product_price_add => $product_price_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_price_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_price_add** | [**ProductPriceAdd**](ProductPriceAdd.md)|  | 

### Return type

[**CartValidate200Response**](CartValidate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_price_delete**
> AttributeDelete200Response product_price_delete(product_id => $product_id, group_prices => $group_prices, store_id => $store_id)

product.price.delete

Delete some prices of the product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Defines the product where the price has to be deleted
my $group_prices = group_prices=5,8,9; # string | Defines product's group prices
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_price_delete(product_id => $product_id, group_prices => $group_prices, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_price_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Defines the product where the price has to be deleted | 
 **group_prices** | **string**| Defines product&#39;s group prices | [optional] 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**AttributeDelete200Response**](AttributeDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_price_update**
> AccountConfigUpdate200Response product_price_update(product_price_update => $product_price_update)

product.price.update

Update some prices of the product.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_price_update = WWW::OpenAPIClient::Object::ProductPriceUpdate->new(); # ProductPriceUpdate | 

eval {
    my $result = $api_instance->product_price_update(product_price_update => $product_price_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_price_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_price_update** | [**ProductPriceUpdate**](ProductPriceUpdate.md)|  | 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_review_list**
> ModelResponseProductReviewList product_review_list(product_id => $product_id, start => $start, count => $count, page_cursor => $page_cursor, ids => $ids, store_id => $store_id, lang_id => $lang_id, status => $status, created_from => $created_from, created_to => $created_to, customer_id => $customer_id, sort_by => $sort_by, sort_direction => $sort_direction, response_fields => $response_fields, params => $params, exclude => $exclude)

product.review.list

Get reviews of a specific product.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Product id
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $ids = 24,25; # string | Retrieves reviews specified by ids
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $status = disabled; # string | Defines status
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $customer_id = 5; # string | Retrieves orders specified by customer id
my $sort_by = value_id; # string | Set field to sort by
my $sort_direction = asc; # string | Set sorting direction
my $response_fields = {return_code,return_message,pagination,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->product_review_list(product_id => $product_id, start => $start, count => $count, page_cursor => $page_cursor, ids => $ids, store_id => $store_id, lang_id => $lang_id, status => $status, created_from => $created_from, created_to => $created_to, customer_id => $customer_id, sort_by => $sort_by, sort_direction => $sort_direction, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_review_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Product id | 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **ids** | **string**| Retrieves reviews specified by ids | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **status** | **string**| Defines status | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **customer_id** | **string**| Retrieves orders specified by customer id | [optional] 
 **sort_by** | **string**| Set field to sort by | [optional] [default to &#39;id&#39;]
 **sort_direction** | **string**| Set sorting direction | [optional] [default to &#39;asc&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,customer_id,email,message,status,product_id,nick_name,summary,rating,ratings,status,created_time&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseProductReviewList**](ModelResponseProductReviewList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_store_assign**
> AccountConfigUpdate200Response product_store_assign(product_id => $product_id, store_id => $store_id)

product.store.assign

Assign product to store

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Defines id of the product which should be assigned to a store
my $store_id = 1; # string | Defines id of the store product should be assigned to

eval {
    my $result = $api_instance->product_store_assign(product_id => $product_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_store_assign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Defines id of the product which should be assigned to a store | 
 **store_id** | **string**| Defines id of the store product should be assigned to | 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_tax_add**
> ProductTaxAdd200Response product_tax_add(product_tax_add => $product_tax_add)

product.tax.add

Add tax class and tax rate to store and assign to product.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_tax_add = WWW::OpenAPIClient::Object::ProductTaxAdd->new(); # ProductTaxAdd | 

eval {
    my $result = $api_instance->product_tax_add(product_tax_add => $product_tax_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_tax_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_tax_add** | [**ProductTaxAdd**](ProductTaxAdd.md)|  | 

### Return type

[**ProductTaxAdd200Response**](ProductTaxAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_update**
> AccountConfigUpdate200Response product_update(product_update => $product_update)

product.update

This method can be used to update certain product data. The list of supported parameters depends on the specific platform. Please transmit only those parameters that are supported by the particular platform. Please note that to update the product quantity, it is recommended to use relative parameters (increase_quantity or reduce_quantity) to avoid unexpected overwrites on heavily loaded stores.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_update = WWW::OpenAPIClient::Object::ProductUpdate->new(); # ProductUpdate | 

eval {
    my $result = $api_instance->product_update(product_update => $product_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_update** | [**ProductUpdate**](ProductUpdate.md)|  | 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_update_batch**
> CategoryAddBatch200Response product_update_batch(product_update_batch => $product_update_batch)

product.update.batch

Update products on the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_update_batch = WWW::OpenAPIClient::Object::ProductUpdateBatch->new(); # ProductUpdateBatch | 

eval {
    my $result = $api_instance->product_update_batch(product_update_batch => $product_update_batch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_update_batch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_update_batch** | [**ProductUpdateBatch**](ProductUpdateBatch.md)|  | 

### Return type

[**CategoryAddBatch200Response**](CategoryAddBatch200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_variant_add**
> ProductVariantAdd200Response product_variant_add(product_variant_add => $product_variant_add)

product.variant.add

Add variant to product.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_variant_add = WWW::OpenAPIClient::Object::ProductVariantAdd->new(); # ProductVariantAdd | 

eval {
    my $result = $api_instance->product_variant_add(product_variant_add => $product_variant_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_variant_add** | [**ProductVariantAdd**](ProductVariantAdd.md)|  | 

### Return type

[**ProductVariantAdd200Response**](ProductVariantAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_variant_add_batch**
> CategoryAddBatch200Response product_variant_add_batch(product_variant_add_batch => $product_variant_add_batch)

product.variant.add.batch

Add new product variants to the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_variant_add_batch = WWW::OpenAPIClient::Object::ProductVariantAddBatch->new(); # ProductVariantAddBatch | 

eval {
    my $result = $api_instance->product_variant_add_batch(product_variant_add_batch => $product_variant_add_batch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_add_batch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_variant_add_batch** | [**ProductVariantAddBatch**](ProductVariantAddBatch.md)|  | 

### Return type

[**CategoryAddBatch200Response**](CategoryAddBatch200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_variant_delete**
> AttributeValueDelete200Response product_variant_delete(id => $id, product_id => $product_id, store_id => $store_id)

product.variant.delete

Delete variant.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Defines variant removal, specified by variant id
my $product_id = 10; # string | Defines product's id where the variant has to be deleted
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_variant_delete(id => $id, product_id => $product_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Defines variant removal, specified by variant id | 
 **product_id** | **string**| Defines product&#39;s id where the variant has to be deleted | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**AttributeValueDelete200Response**](AttributeValueDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_variant_delete_batch**
> CategoryAddBatch200Response product_variant_delete_batch(product_variant_delete_batch => $product_variant_delete_batch)

product.variant.delete.batch

Remove product variants from the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_variant_delete_batch = WWW::OpenAPIClient::Object::ProductVariantDeleteBatch->new(); # ProductVariantDeleteBatch | 

eval {
    my $result = $api_instance->product_variant_delete_batch(product_variant_delete_batch => $product_variant_delete_batch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_delete_batch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_variant_delete_batch** | [**ProductVariantDeleteBatch**](ProductVariantDeleteBatch.md)|  | 

### Return type

[**CategoryAddBatch200Response**](CategoryAddBatch200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_variant_image_add**
> ProductVariantImageAdd200Response product_variant_image_add(product_variant_image_add => $product_variant_image_add)

product.variant.image.add

Add image to product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_variant_image_add = WWW::OpenAPIClient::Object::ProductVariantImageAdd->new(); # ProductVariantImageAdd | 

eval {
    my $result = $api_instance->product_variant_image_add(product_variant_image_add => $product_variant_image_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_image_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_variant_image_add** | [**ProductVariantImageAdd**](ProductVariantImageAdd.md)|  | 

### Return type

[**ProductVariantImageAdd200Response**](ProductVariantImageAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_variant_image_delete**
> AttributeDelete200Response product_variant_image_delete(product_id => $product_id, product_variant_id => $product_variant_id, id => $id, store_id => $store_id)

product.variant.image.delete

Delete  image to product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_id = 10; # string | Defines product id where the variant image should be deleted
my $product_variant_id = 45; # string | Defines product's variants specified by variant id
my $id = 10; # string | Entity id
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_variant_image_delete(product_id => $product_id, product_variant_id => $product_variant_id, id => $id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_image_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **string**| Defines product id where the variant image should be deleted | 
 **product_variant_id** | **string**| Defines product&#39;s variants specified by variant id | 
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

# **product_variant_price_add**
> CartValidate200Response product_variant_price_add(product_variant_price_add => $product_variant_price_add)

product.variant.price.add

Add some prices to the product variant.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_variant_price_add = WWW::OpenAPIClient::Object::ProductVariantPriceAdd->new(); # ProductVariantPriceAdd | 

eval {
    my $result = $api_instance->product_variant_price_add(product_variant_price_add => $product_variant_price_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_price_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_variant_price_add** | [**ProductVariantPriceAdd**](ProductVariantPriceAdd.md)|  | 

### Return type

[**CartValidate200Response**](CartValidate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_variant_price_delete**
> AttributeDelete200Response product_variant_price_delete(id => $id, product_id => $product_id, group_prices => $group_prices, store_id => $store_id)

product.variant.price.delete

Delete some prices of the product variant.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Defines the variant where the price has to be deleted
my $product_id = 10; # string | Product id
my $group_prices = group_prices=6,8,9; # string | Defines variants's group prices
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->product_variant_price_delete(id => $id, product_id => $product_id, group_prices => $group_prices, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_price_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Defines the variant where the price has to be deleted | 
 **product_id** | **string**| Product id | 
 **group_prices** | **string**| Defines variants&#39;s group prices | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**AttributeDelete200Response**](AttributeDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_variant_price_update**
> AccountConfigUpdate200Response product_variant_price_update(product_variant_price_update => $product_variant_price_update)

product.variant.price.update

Update some prices of the product variant.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_variant_price_update = WWW::OpenAPIClient::Object::ProductVariantPriceUpdate->new(); # ProductVariantPriceUpdate | 

eval {
    my $result = $api_instance->product_variant_price_update(product_variant_price_update => $product_variant_price_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_price_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_variant_price_update** | [**ProductVariantPriceUpdate**](ProductVariantPriceUpdate.md)|  | 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_variant_update**
> AccountConfigUpdate200Response product_variant_update(product_variant_update => $product_variant_update)

product.variant.update

Update variant.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_variant_update = WWW::OpenAPIClient::Object::ProductVariantUpdate->new(); # ProductVariantUpdate | 

eval {
    my $result = $api_instance->product_variant_update(product_variant_update => $product_variant_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_variant_update** | [**ProductVariantUpdate**](ProductVariantUpdate.md)|  | 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_variant_update_batch**
> CategoryAddBatch200Response product_variant_update_batch(product_variant_update_batch => $product_variant_update_batch)

product.variant.update.batch

Update products variants on the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductApi;
my $api_instance = WWW::OpenAPIClient::ProductApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $product_variant_update_batch = WWW::OpenAPIClient::Object::ProductVariantUpdateBatch->new(); # ProductVariantUpdateBatch | 

eval {
    my $result = $api_instance->product_variant_update_batch(product_variant_update_batch => $product_variant_update_batch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductApi->product_variant_update_batch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_variant_update_batch** | [**ProductVariantUpdateBatch**](ProductVariantUpdateBatch.md)|  | 

### Return type

[**CategoryAddBatch200Response**](CategoryAddBatch200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

