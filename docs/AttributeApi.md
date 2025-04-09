# WWW::OpenAPIClient::AttributeApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::AttributeApi;
```

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attribute_add**](AttributeApi.md#attribute_add) | **POST** /attribute.add.json | attribute.add
[**attribute_assign_group**](AttributeApi.md#attribute_assign_group) | **POST** /attribute.assign.group.json | attribute.assign.group
[**attribute_assign_set**](AttributeApi.md#attribute_assign_set) | **POST** /attribute.assign.set.json | attribute.assign.set
[**attribute_attributeset_list**](AttributeApi.md#attribute_attributeset_list) | **GET** /attribute.attributeset.list.json | attribute.attributeset.list
[**attribute_count**](AttributeApi.md#attribute_count) | **GET** /attribute.count.json | attribute.count
[**attribute_delete**](AttributeApi.md#attribute_delete) | **DELETE** /attribute.delete.json | attribute.delete
[**attribute_group_list**](AttributeApi.md#attribute_group_list) | **GET** /attribute.group.list.json | attribute.group.list
[**attribute_info**](AttributeApi.md#attribute_info) | **GET** /attribute.info.json | attribute.info
[**attribute_list**](AttributeApi.md#attribute_list) | **GET** /attribute.list.json | attribute.list
[**attribute_type_list**](AttributeApi.md#attribute_type_list) | **GET** /attribute.type.list.json | attribute.type.list
[**attribute_unassign_group**](AttributeApi.md#attribute_unassign_group) | **POST** /attribute.unassign.group.json | attribute.unassign.group
[**attribute_unassign_set**](AttributeApi.md#attribute_unassign_set) | **POST** /attribute.unassign.set.json | attribute.unassign.set
[**attribute_update**](AttributeApi.md#attribute_update) | **PUT** /attribute.update.json | attribute.update
[**attribute_value_add**](AttributeApi.md#attribute_value_add) | **POST** /attribute.value.add.json | attribute.value.add
[**attribute_value_delete**](AttributeApi.md#attribute_value_delete) | **DELETE** /attribute.value.delete.json | attribute.value.delete
[**attribute_value_update**](AttributeApi.md#attribute_value_update) | **PUT** /attribute.value.update.json | attribute.value.update


# **attribute_add**
> AttributeAdd200Response attribute_add(type => $type, name => $name, code => $code, store_id => $store_id, lang_id => $lang_id, visible => $visible, required => $required, position => $position, attribute_group_id => $attribute_group_id, is_global => $is_global, is_searchable => $is_searchable, is_filterable => $is_filterable, is_comparable => $is_comparable, is_html_allowed_on_front => $is_html_allowed_on_front, is_filterable_in_search => $is_filterable_in_search, is_configurable => $is_configurable, is_visible_in_advanced_search => $is_visible_in_advanced_search, is_used_for_promo_rules => $is_used_for_promo_rules, used_in_product_listing => $used_in_product_listing, used_for_sort_by => $used_for_sort_by, apply_to => $apply_to)

attribute.add

Add new attribute

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $type = text; # string | Defines attribute's type
my $name = Specification; # string | Defines attributes's name
my $code = code; # string | Entity code
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $visible = true; # boolean | Set visibility status
my $required = true; # boolean | Defines if the option is required
my $position = 5; # int | Attribute`s position
my $attribute_group_id = 202; # string | Filter by attribute_group_id
my $is_global = Global; # string | Attribute saving scope
my $is_searchable = false; # boolean | Use attribute in Quick Search
my $is_filterable = No; # string | Use In Layered Navigation
my $is_comparable = true; # boolean | Comparable on Front-end
my $is_html_allowed_on_front = true; # boolean | Allow HTML Tags on Frontend
my $is_filterable_in_search = true; # boolean | Use In Search Results Layered Navigation
my $is_configurable = true; # boolean | Use To Create Configurable Product
my $is_visible_in_advanced_search = true; # boolean | Use in Advanced Search
my $is_used_for_promo_rules = true; # boolean | Use for Promo Rule Conditions
my $used_in_product_listing = true; # boolean | Used in Product Listing
my $used_for_sort_by = true; # boolean | Used for Sorting in Product Listing
my $apply_to = Global; # string | Types of products which can have this attribute

eval {
    my $result = $api_instance->attribute_add(type => $type, name => $name, code => $code, store_id => $store_id, lang_id => $lang_id, visible => $visible, required => $required, position => $position, attribute_group_id => $attribute_group_id, is_global => $is_global, is_searchable => $is_searchable, is_filterable => $is_filterable, is_comparable => $is_comparable, is_html_allowed_on_front => $is_html_allowed_on_front, is_filterable_in_search => $is_filterable_in_search, is_configurable => $is_configurable, is_visible_in_advanced_search => $is_visible_in_advanced_search, is_used_for_promo_rules => $is_used_for_promo_rules, used_in_product_listing => $used_in_product_listing, used_for_sort_by => $used_for_sort_by, apply_to => $apply_to);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| Defines attribute&#39;s type | 
 **name** | **string**| Defines attributes&#39;s name | 
 **code** | **string**| Entity code | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **visible** | **boolean**| Set visibility status | [optional] [default to false]
 **required** | **boolean**| Defines if the option is required | [optional] [default to false]
 **position** | **int**| Attribute&#x60;s position | [optional] [default to 0]
 **attribute_group_id** | **string**| Filter by attribute_group_id | [optional] 
 **is_global** | **string**| Attribute saving scope | [optional] [default to &#39;Store&#39;]
 **is_searchable** | **boolean**| Use attribute in Quick Search | [optional] [default to false]
 **is_filterable** | **string**| Use In Layered Navigation | [optional] [default to &#39;No&#39;]
 **is_comparable** | **boolean**| Comparable on Front-end | [optional] [default to false]
 **is_html_allowed_on_front** | **boolean**| Allow HTML Tags on Frontend | [optional] [default to false]
 **is_filterable_in_search** | **boolean**| Use In Search Results Layered Navigation | [optional] [default to false]
 **is_configurable** | **boolean**| Use To Create Configurable Product | [optional] [default to false]
 **is_visible_in_advanced_search** | **boolean**| Use in Advanced Search | [optional] [default to false]
 **is_used_for_promo_rules** | **boolean**| Use for Promo Rule Conditions | [optional] [default to false]
 **used_in_product_listing** | **boolean**| Used in Product Listing | [optional] [default to false]
 **used_for_sort_by** | **boolean**| Used for Sorting in Product Listing | [optional] [default to false]
 **apply_to** | **string**| Types of products which can have this attribute | [optional] [default to &#39;all_types&#39;]

### Return type

[**AttributeAdd200Response**](AttributeAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_assign_group**
> AttributeAssignGroup200Response attribute_assign_group(id => $id, group_id => $group_id, attribute_set_id => $attribute_set_id)

attribute.assign.group

Assign attribute to the group

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
my $group_id = 3; # string | Attribute group_id
my $attribute_set_id = 4; # string | Attribute set id

eval {
    my $result = $api_instance->attribute_assign_group(id => $id, group_id => $group_id, attribute_set_id => $attribute_set_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_assign_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **group_id** | **string**| Attribute group_id | 
 **attribute_set_id** | **string**| Attribute set id | [optional] 

### Return type

[**AttributeAssignGroup200Response**](AttributeAssignGroup200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_assign_set**
> AttributeAssignGroup200Response attribute_assign_set(id => $id, attribute_set_id => $attribute_set_id, group_id => $group_id)

attribute.assign.set

Assign attribute to the attribute set

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
my $attribute_set_id = 4; # string | Attribute set id
my $group_id = 3; # string | Attribute group_id

eval {
    my $result = $api_instance->attribute_assign_set(id => $id, attribute_set_id => $attribute_set_id, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_assign_set: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **attribute_set_id** | **string**| Attribute set id | 
 **group_id** | **string**| Attribute group_id | [optional] 

### Return type

[**AttributeAssignGroup200Response**](AttributeAssignGroup200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_attributeset_list**
> ModelResponseAttributeAttributesetList attribute_attributeset_list(start => $start, count => $count, params => $params, exclude => $exclude, response_fields => $response_fields)

attribute.attributeset.list

Get attribute_set list

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
my $params = id,name; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = id,name; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $response_fields = {result}; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->attribute_attributeset_list(start => $start, count => $count, params => $params, exclude => $exclude, response_fields => $response_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_attributeset_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 

### Return type

[**ModelResponseAttributeAttributesetList**](ModelResponseAttributeAttributesetList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_count**
> AttributeCount200Response attribute_count(type => $type, attribute_set_id => $attribute_set_id, store_id => $store_id, lang_id => $lang_id, visible => $visible, required => $required, system => $system)

attribute.count

Get attributes count

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $type = text; # string | Defines attribute's type
my $attribute_set_id = 4; # string | Filter items by attribute set id
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $visible = true; # boolean | Filter items by visibility status
my $required = true; # boolean | Defines if the option is required
my $system = false; # boolean | True if attribute is system

eval {
    my $result = $api_instance->attribute_count(type => $type, attribute_set_id => $attribute_set_id, store_id => $store_id, lang_id => $lang_id, visible => $visible, required => $required, system => $system);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| Defines attribute&#39;s type | [optional] 
 **attribute_set_id** | **string**| Filter items by attribute set id | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **visible** | **boolean**| Filter items by visibility status | [optional] 
 **required** | **boolean**| Defines if the option is required | [optional] 
 **system** | **boolean**| True if attribute is system | [optional] 

### Return type

[**AttributeCount200Response**](AttributeCount200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_delete**
> AttributeDelete200Response attribute_delete(id => $id, store_id => $store_id)

attribute.delete

Delete attribute from store

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
    my $result = $api_instance->attribute_delete(id => $id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_delete: $@\n";
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

# **attribute_group_list**
> ModelResponseAttributeGroupList attribute_group_list(start => $start, count => $count, lang_id => $lang_id, params => $params, exclude => $exclude, response_fields => $response_fields, attribute_set_id => $attribute_set_id)

attribute.group.list

Get attribute group list

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
my $lang_id = 3; # string | Language id
my $params = id,name; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = id,name; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $response_fields = {result}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $attribute_set_id = 4; # string | Attribute set id

eval {
    my $result = $api_instance->attribute_group_list(start => $start, count => $count, lang_id => $lang_id, params => $params, exclude => $exclude, response_fields => $response_fields, attribute_set_id => $attribute_set_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_group_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **lang_id** | **string**| Language id | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **attribute_set_id** | **string**| Attribute set id | [optional] 

### Return type

[**ModelResponseAttributeGroupList**](ModelResponseAttributeGroupList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_info**
> AttributeInfo200Response attribute_info(id => $id, attribute_set_id => $attribute_set_id, store_id => $store_id, lang_id => $lang_id, params => $params, exclude => $exclude, response_fields => $response_fields)

attribute.info

Get information about a specific global attribute by its ID.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
my $attribute_set_id = 4; # string | Attribute set id
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $params = force_all; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = name; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $response_fields = {result}; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->attribute_info(id => $id, attribute_set_id => $attribute_set_id, store_id => $store_id, lang_id => $lang_id, params => $params, exclude => $exclude, response_fields => $response_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **attribute_set_id** | **string**| Attribute set id | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;force_all&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 

### Return type

[**AttributeInfo200Response**](AttributeInfo200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_list**
> ModelResponseAttributeList attribute_list(start => $start, count => $count, type => $type, attribute_ids => $attribute_ids, attribute_set_id => $attribute_set_id, store_id => $store_id, lang_id => $lang_id, params => $params, exclude => $exclude, response_fields => $response_fields, visible => $visible, required => $required, system => $system)

attribute.list

Get a list of global attributes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
my $type = text; # string | Defines attribute's type
my $attribute_ids = 1,2,3; # string | Filter attributes by ids
my $attribute_set_id = 4; # string | Filter items by attribute set id
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Retrieves attributes on specified language id
my $params = id,name; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = id,name; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $response_fields = {return_code,return_message,pagination,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $visible = true; # boolean | Filter items by visibility status
my $required = true; # boolean | Defines if the option is required
my $system = false; # boolean | True if attribute is system

eval {
    my $result = $api_instance->attribute_list(start => $start, count => $count, type => $type, attribute_ids => $attribute_ids, attribute_set_id => $attribute_set_id, store_id => $store_id, lang_id => $lang_id, params => $params, exclude => $exclude, response_fields => $response_fields, visible => $visible, required => $required, system => $system);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **type** | **string**| Defines attribute&#39;s type | [optional] 
 **attribute_ids** | **string**| Filter attributes by ids | [optional] 
 **attribute_set_id** | **string**| Filter items by attribute set id | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Retrieves attributes on specified language id | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name,code,type&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **visible** | **boolean**| Filter items by visibility status | [optional] 
 **required** | **boolean**| Defines if the option is required | [optional] 
 **system** | **boolean**| True if attribute is system | [optional] 

### Return type

[**ModelResponseAttributeList**](ModelResponseAttributeList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_type_list**
> AttributeTypeList200Response attribute_type_list()

attribute.type.list

Get list of supported attributes types

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
    my $result = $api_instance->attribute_type_list();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_type_list: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AttributeTypeList200Response**](AttributeTypeList200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_unassign_group**
> AttributeUnassignGroup200Response attribute_unassign_group(id => $id, group_id => $group_id)

attribute.unassign.group

Unassign attribute from group

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
my $group_id = 3; # string | Customer group_id

eval {
    my $result = $api_instance->attribute_unassign_group(id => $id, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_unassign_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **group_id** | **string**| Customer group_id | 

### Return type

[**AttributeUnassignGroup200Response**](AttributeUnassignGroup200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_unassign_set**
> AttributeUnassignGroup200Response attribute_unassign_set(id => $id, attribute_set_id => $attribute_set_id)

attribute.unassign.set

Unassign attribute from attribute set

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
my $attribute_set_id = 4; # string | Attribute set id

eval {
    my $result = $api_instance->attribute_unassign_set(id => $id, attribute_set_id => $attribute_set_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_unassign_set: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **attribute_set_id** | **string**| Attribute set id | 

### Return type

[**AttributeUnassignGroup200Response**](AttributeUnassignGroup200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_update**
> AttributeUpdate200Response attribute_update(id => $id, name => $name, store_id => $store_id, lang_id => $lang_id)

attribute.update

Update attribute data

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
my $name = Test name; # string | Defines new attributes's name
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id

eval {
    my $result = $api_instance->attribute_update(id => $id, name => $name, store_id => $store_id, lang_id => $lang_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **name** | **string**| Defines new attributes&#39;s name | 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 

### Return type

[**AttributeUpdate200Response**](AttributeUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_value_add**
> AttributeAdd200Response attribute_value_add(attribute_id => $attribute_id, name => $name, code => $code, description => $description, store_id => $store_id, lang_id => $lang_id)

attribute.value.add

Add new value to attribute.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $attribute_id = 156; # string | Attribute Id
my $name = Test name; # string | Defines attribute value's name
my $code = code; # string | Entity code
my $description = Test value; # string | Defines attribute value's description
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id

eval {
    my $result = $api_instance->attribute_value_add(attribute_id => $attribute_id, name => $name, code => $code, description => $description, store_id => $store_id, lang_id => $lang_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_value_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_id** | **string**| Attribute Id | 
 **name** | **string**| Defines attribute value&#39;s name | 
 **code** | **string**| Entity code | [optional] 
 **description** | **string**| Defines attribute value&#39;s description | [optional] 
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

# **attribute_value_delete**
> AttributeValueDelete200Response attribute_value_delete(id => $id, attribute_id => $attribute_id, store_id => $store_id)

attribute.value.delete

Delete attribute value.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

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
my $attribute_id = 156; # string | Attribute Id
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->attribute_value_delete(id => $id, attribute_id => $attribute_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_value_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **attribute_id** | **string**| Attribute Id | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**AttributeValueDelete200Response**](AttributeValueDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attribute_value_update**
> AttributeUpdate200Response attribute_value_update(id => $id, attribute_id => $attribute_id, name => $name, description => $description, code => $code, store_id => $store_id, lang_id => $lang_id)

attribute.value.update

Update attribute value.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AttributeApi;
my $api_instance = WWW::OpenAPIClient::AttributeApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Defines attribute value's id
my $attribute_id = 156; # string | Attribute Id
my $name = Test name; # string | Defines attribute value's name
my $description = Test value; # string | Defines new attribute value's description
my $code = code; # string | Entity code
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id

eval {
    my $result = $api_instance->attribute_value_update(id => $id, attribute_id => $attribute_id, name => $name, description => $description, code => $code, store_id => $store_id, lang_id => $lang_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttributeApi->attribute_value_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Defines attribute value&#39;s id | 
 **attribute_id** | **string**| Attribute Id | 
 **name** | **string**| Defines attribute value&#39;s name | [optional] 
 **description** | **string**| Defines new attribute value&#39;s description | [optional] 
 **code** | **string**| Entity code | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 

### Return type

[**AttributeUpdate200Response**](AttributeUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

