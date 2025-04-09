# WWW::OpenAPIClient::CustomerApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CustomerApi;
```

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customer_add**](CustomerApi.md#customer_add) | **POST** /customer.add.json | customer.add
[**customer_address_add**](CustomerApi.md#customer_address_add) | **POST** /customer.address.add.json | customer.address.add
[**customer_attribute_list**](CustomerApi.md#customer_attribute_list) | **GET** /customer.attribute.list.json | customer.attribute.list
[**customer_count**](CustomerApi.md#customer_count) | **GET** /customer.count.json | customer.count
[**customer_delete**](CustomerApi.md#customer_delete) | **DELETE** /customer.delete.json | customer.delete
[**customer_find**](CustomerApi.md#customer_find) | **GET** /customer.find.json | customer.find
[**customer_group_add**](CustomerApi.md#customer_group_add) | **POST** /customer.group.add.json | customer.group.add
[**customer_group_list**](CustomerApi.md#customer_group_list) | **GET** /customer.group.list.json | customer.group.list
[**customer_info**](CustomerApi.md#customer_info) | **GET** /customer.info.json | customer.info
[**customer_list**](CustomerApi.md#customer_list) | **GET** /customer.list.json | customer.list
[**customer_update**](CustomerApi.md#customer_update) | **PUT** /customer.update.json | customer.update
[**customer_wishlist_list**](CustomerApi.md#customer_wishlist_list) | **GET** /customer.wishlist.list.json | customer.wishlist.list


# **customer_add**
> CustomerAdd200Response customer_add(customer_add => $customer_add)

customer.add

Add customer into store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $customer_add = WWW::OpenAPIClient::Object::CustomerAdd->new(); # CustomerAdd | 

eval {
    my $result = $api_instance->customer_add(customer_add => $customer_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_add** | [**CustomerAdd**](CustomerAdd.md)|  | 

### Return type

[**CustomerAdd200Response**](CustomerAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_address_add**
> AttributeAdd200Response customer_address_add(customer_address_add => $customer_address_add)

customer.address.add

Add customer address.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $customer_address_add = WWW::OpenAPIClient::Object::CustomerAddressAdd->new(); # CustomerAddressAdd | 

eval {
    my $result = $api_instance->customer_address_add(customer_address_add => $customer_address_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_address_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_address_add** | [**CustomerAddressAdd**](CustomerAddressAdd.md)|  | 

### Return type

[**AttributeAdd200Response**](AttributeAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_attribute_list**
> ModelResponseCustomerAttributeList customer_attribute_list(customer_id => $customer_id, count => $count, page_cursor => $page_cursor, store_id => $store_id, lang_id => $lang_id, params => $params, exclude => $exclude, response_fields => $response_fields)

customer.attribute.list

Get attributes for specific customer

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

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
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $response_fields = {return_code,return_message,pagination,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->customer_attribute_list(customer_id => $customer_id, count => $count, page_cursor => $page_cursor, store_id => $store_id, lang_id => $lang_id, params => $params, exclude => $exclude, response_fields => $response_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_attribute_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Retrieves orders specified by customer id | 
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;force_all&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 

### Return type

[**ModelResponseCustomerAttributeList**](ModelResponseCustomerAttributeList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_count**
> CustomerCount200Response customer_count(group_id => $group_id, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, store_id => $store_id, customer_list_id => $customer_list_id, avail => $avail, find_value => $find_value, find_where => $find_where, ids => $ids, since_id => $since_id)

customer.count

Get number of customers from store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $group_id = 3; # string | Customer group_id
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $store_id = 1; # string | Counts customer specified by store id
my $customer_list_id = exampleListId; # string | The numeric ID of the customer list in Demandware.
my $avail = false; # boolean | Defines category's visibility status
my $find_value = mail@gmail.com; # string | Entity search that is specified by some value
my $find_where = email; # string | Counts customers that are searched specified by field
my $ids = 24,25; # string | Counts customers specified by ids
my $since_id = 56; # string | Retrieve entities starting from the specified id.

eval {
    my $result = $api_instance->customer_count(group_id => $group_id, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, store_id => $store_id, customer_list_id => $customer_list_id, avail => $avail, find_value => $find_value, find_where => $find_where, ids => $ids, since_id => $since_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **string**| Customer group_id | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **store_id** | **string**| Counts customer specified by store id | [optional] 
 **customer_list_id** | **string**| The numeric ID of the customer list in Demandware. | [optional] 
 **avail** | **boolean**| Defines category&#39;s visibility status | [optional] [default to true]
 **find_value** | **string**| Entity search that is specified by some value | [optional] 
 **find_where** | **string**| Counts customers that are searched specified by field | [optional] 
 **ids** | **string**| Counts customers specified by ids | [optional] 
 **since_id** | **string**| Retrieve entities starting from the specified id. | [optional] 

### Return type

[**CustomerCount200Response**](CustomerCount200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_delete**
> CustomerDelete200Response customer_delete(id => $id)

customer.delete

Delete customer from store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Identifies customer specified by the id

eval {
    my $result = $api_instance->customer_delete(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Identifies customer specified by the id | 

### Return type

[**CustomerDelete200Response**](CustomerDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_find**
> CustomerFind200Response customer_find(find_value => $find_value, find_where => $find_where, find_params => $find_params, store_id => $store_id)

customer.find

Find customers in store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $find_value = mail@gmail.com; # string | Entity search that is specified by some value
my $find_where = email; # string | Entity search that is specified by the comma-separated unique fields
my $find_params = regex; # string | Entity search that is specified by comma-separated parameters
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->customer_find(find_value => $find_value, find_where => $find_where, find_params => $find_params, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_find: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **find_value** | **string**| Entity search that is specified by some value | 
 **find_where** | **string**| Entity search that is specified by the comma-separated unique fields | [optional] [default to &#39;email&#39;]
 **find_params** | **string**| Entity search that is specified by comma-separated parameters | [optional] [default to &#39;whole_words&#39;]
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**CustomerFind200Response**](CustomerFind200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_group_add**
> CustomerGroupAdd200Response customer_group_add(name => $name, store_id => $store_id, stores_ids => $stores_ids)

customer.group.add

Create customer group.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $name = new_group; # string | Customer group name
my $store_id = 1; # string | Store Id
my $stores_ids = 1,2; # string | Assign customer group to the stores that is specified by comma-separated stores' id

eval {
    my $result = $api_instance->customer_group_add(name => $name, store_id => $store_id, stores_ids => $stores_ids);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_group_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Customer group name | 
 **store_id** | **string**| Store Id | [optional] 
 **stores_ids** | **string**| Assign customer group to the stores that is specified by comma-separated stores&#39; id | [optional] 

### Return type

[**CustomerGroupAdd200Response**](CustomerGroupAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_group_list**
> ModelResponseCustomerGroupList customer_group_list(disable_cache => $disable_cache, page_cursor => $page_cursor, start => $start, count => $count, store_id => $store_id, lang_id => $lang_id, group_ids => $group_ids, params => $params, exclude => $exclude, response_fields => $response_fields)

customer.group.list

Get list of customers groups.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $disable_cache = false; # boolean | Disable cache for current request
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id
my $group_ids = 1,2,3; # string | Groups that will be assigned to a customer
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $response_fields = {return_code,return_message,pagination,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->customer_group_list(disable_cache => $disable_cache, page_cursor => $page_cursor, start => $start, count => $count, store_id => $store_id, lang_id => $lang_id, group_ids => $group_ids, params => $params, exclude => $exclude, response_fields => $response_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_group_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disable_cache** | **boolean**| Disable cache for current request | [optional] [default to false]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 
 **group_ids** | **string**| Groups that will be assigned to a customer | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,name,additional_fields&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 

### Return type

[**ModelResponseCustomerGroupList**](ModelResponseCustomerGroupList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_info**
> CustomerInfo200Response customer_info(id => $id, params => $params, response_fields => $response_fields, exclude => $exclude, store_id => $store_id)

customer.info

Get customers' details from store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Retrieves customer's info specified by customer id
my $params = id,email; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {result{id,parent_id,sku,upc,images,combination}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = id,email; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $store_id = 1; # string | Retrieves customer info specified by store id

eval {
    my $result = $api_instance->customer_info(id => $id, params => $params, response_fields => $response_fields, exclude => $exclude, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Retrieves customer&#39;s info specified by customer id | 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,email,first_name,last_name&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **store_id** | **string**| Retrieves customer info specified by store id | [optional] 

### Return type

[**CustomerInfo200Response**](CustomerInfo200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_list**
> ModelResponseCustomerList customer_list(page_cursor => $page_cursor, start => $start, count => $count, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, params => $params, response_fields => $response_fields, exclude => $exclude, group_id => $group_id, store_id => $store_id, customer_list_id => $customer_list_id, avail => $avail, find_value => $find_value, find_where => $find_where, sort_by => $sort_by, sort_direction => $sort_direction, ids => $ids, since_id => $since_id)

customer.list

Get list of customers from store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

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
my $params = id,email; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {result{customer}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = id,email; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $group_id = 3; # string | Customer group_id
my $store_id = 1; # string | Retrieves customers specified by store id
my $customer_list_id = exampleListId; # string | The numeric ID of the customer list in Demandware.
my $avail = false; # boolean | Defines category's visibility status
my $find_value = mail@gmail.com; # string | Entity search that is specified by some value
my $find_where = email; # string | Customer search that is specified by field
my $sort_by = value_id; # string | Set field to sort by
my $sort_direction = asc; # string | Set sorting direction
my $ids = 24,25; # string | Retrieves customers specified by ids
my $since_id = 56; # string | Retrieve entities starting from the specified id.

eval {
    my $result = $api_instance->customer_list(page_cursor => $page_cursor, start => $start, count => $count, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, params => $params, response_fields => $response_fields, exclude => $exclude, group_id => $group_id, store_id => $store_id, customer_list_id => $customer_list_id, avail => $avail, find_value => $find_value, find_where => $find_where, sort_by => $sort_by, sort_direction => $sort_direction, ids => $ids, since_id => $since_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_list: $@\n";
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
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,email,first_name,last_name&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **group_id** | **string**| Customer group_id | [optional] 
 **store_id** | **string**| Retrieves customers specified by store id | [optional] 
 **customer_list_id** | **string**| The numeric ID of the customer list in Demandware. | [optional] 
 **avail** | **boolean**| Defines category&#39;s visibility status | [optional] [default to true]
 **find_value** | **string**| Entity search that is specified by some value | [optional] 
 **find_where** | **string**| Customer search that is specified by field | [optional] 
 **sort_by** | **string**| Set field to sort by | [optional] [default to &#39;created_time&#39;]
 **sort_direction** | **string**| Set sorting direction | [optional] [default to &#39;asc&#39;]
 **ids** | **string**| Retrieves customers specified by ids | [optional] 
 **since_id** | **string**| Retrieve entities starting from the specified id. | [optional] 

### Return type

[**ModelResponseCustomerList**](ModelResponseCustomerList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_update**
> AccountConfigUpdate200Response customer_update(customer_update => $customer_update)

customer.update

Update information of customer in store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $customer_update = WWW::OpenAPIClient::Object::CustomerUpdate->new(); # CustomerUpdate | 

eval {
    my $result = $api_instance->customer_update(customer_update => $customer_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_update** | [**CustomerUpdate**](CustomerUpdate.md)|  | 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_wishlist_list**
> ModelResponseCustomerWishlistList customer_wishlist_list(customer_id => $customer_id, id => $id, store_id => $store_id, start => $start, count => $count, page_cursor => $page_cursor, response_fields => $response_fields)

customer.wishlist.list

Get a Wish List of customer from the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomerApi;
my $api_instance = WWW::OpenAPIClient::CustomerApi->new(

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
my $id = 10; # string | Entity id
my $store_id = 1; # string | Store Id
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $response_fields = {return_code,return_message,pagination,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->customer_wishlist_list(customer_id => $customer_id, id => $id, store_id => $store_id, start => $start, count => $count, page_cursor => $page_cursor, response_fields => $response_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomerApi->customer_wishlist_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Retrieves orders specified by customer id | 
 **id** | **string**| Entity id | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;{return_code,return_message,pagination,result}&#39;]

### Return type

[**ModelResponseCustomerWishlistList**](ModelResponseCustomerWishlistList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

