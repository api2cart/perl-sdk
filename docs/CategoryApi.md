# WWW::OpenAPIClient::CategoryApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CategoryApi;
```

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**category_add**](CategoryApi.md#category_add) | **POST** /category.add.json | category.add
[**category_add_batch**](CategoryApi.md#category_add_batch) | **POST** /category.add.batch.json | category.add.batch
[**category_assign**](CategoryApi.md#category_assign) | **POST** /category.assign.json | category.assign
[**category_count**](CategoryApi.md#category_count) | **GET** /category.count.json | category.count
[**category_delete**](CategoryApi.md#category_delete) | **DELETE** /category.delete.json | category.delete
[**category_find**](CategoryApi.md#category_find) | **GET** /category.find.json | category.find
[**category_image_add**](CategoryApi.md#category_image_add) | **POST** /category.image.add.json | category.image.add
[**category_image_delete**](CategoryApi.md#category_image_delete) | **DELETE** /category.image.delete.json | category.image.delete
[**category_info**](CategoryApi.md#category_info) | **GET** /category.info.json | category.info
[**category_list**](CategoryApi.md#category_list) | **GET** /category.list.json | category.list
[**category_unassign**](CategoryApi.md#category_unassign) | **POST** /category.unassign.json | category.unassign
[**category_update**](CategoryApi.md#category_update) | **PUT** /category.update.json | category.update


# **category_add**
> CategoryAdd200Response category_add(name => $name, description => $description, short_description => $short_description, parent_id => $parent_id, avail => $avail, created_time => $created_time, modified_time => $modified_time, sort_order => $sort_order, meta_title => $meta_title, meta_description => $meta_description, meta_keywords => $meta_keywords, seo_url => $seo_url, store_id => $store_id, stores_ids => $stores_ids, lang_id => $lang_id)

category.add

Add new category in store

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $name = Shoes; # string | Defines category's name that has to be added
my $description = Test category; # string | Defines category's description
my $short_description = Short description. This is very short description; # string | Defines short description
my $parent_id = 6; # string | Adds categories specified by parent id
my $avail = false; # boolean | Defines category's visibility status
my $created_time = 2014-01-30 15:58:41; # string | Entity's date creation
my $modified_time = 2014-07-30 15:58:41; # string | Entity's date modification
my $sort_order = 2; # int | Sort number in the list
my $meta_title = category,test; # string | Defines unique meta title for each entity
my $meta_description = category,test; # string | Defines unique meta description of a entity
my $meta_keywords = category,test; # string | Defines unique meta keywords for each entity
my $seo_url = category,test; # string | Defines unique category's URL for SEO
my $store_id = 1; # string | Store Id
my $stores_ids = 1,2; # string | Create category in the stores that is specified by comma-separated stores' id
my $lang_id = 3; # string | Language id

eval {
    my $result = $api_instance->category_add(name => $name, description => $description, short_description => $short_description, parent_id => $parent_id, avail => $avail, created_time => $created_time, modified_time => $modified_time, sort_order => $sort_order, meta_title => $meta_title, meta_description => $meta_description, meta_keywords => $meta_keywords, seo_url => $seo_url, store_id => $store_id, stores_ids => $stores_ids, lang_id => $lang_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Defines category&#39;s name that has to be added | 
 **description** | **string**| Defines category&#39;s description | [optional] 
 **short_description** | **string**| Defines short description | [optional] 
 **parent_id** | **string**| Adds categories specified by parent id | [optional] 
 **avail** | **boolean**| Defines category&#39;s visibility status | [optional] [default to true]
 **created_time** | **string**| Entity&#39;s date creation | [optional] 
 **modified_time** | **string**| Entity&#39;s date modification | [optional] 
 **sort_order** | **int**| Sort number in the list | [optional] [default to 0]
 **meta_title** | **string**| Defines unique meta title for each entity | [optional] 
 **meta_description** | **string**| Defines unique meta description of a entity | [optional] 
 **meta_keywords** | **string**| Defines unique meta keywords for each entity | [optional] 
 **seo_url** | **string**| Defines unique category&#39;s URL for SEO | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **stores_ids** | **string**| Create category in the stores that is specified by comma-separated stores&#39; id | [optional] 
 **lang_id** | **string**| Language id | [optional] 

### Return type

[**CategoryAdd200Response**](CategoryAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_add_batch**
> CategoryAddBatch200Response category_add_batch(category_add_batch => $category_add_batch)

category.add.batch

Add new categories to the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $category_add_batch = WWW::OpenAPIClient::Object::CategoryAddBatch->new(); # CategoryAddBatch | 

eval {
    my $result = $api_instance->category_add_batch(category_add_batch => $category_add_batch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_add_batch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_add_batch** | [**CategoryAddBatch**](CategoryAddBatch.md)|  | 

### Return type

[**CategoryAddBatch200Response**](CategoryAddBatch200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_assign**
> CartConfigUpdate200Response category_assign(category_id => $category_id, product_id => $product_id, store_id => $store_id)

category.assign

Assign category to product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $category_id = 6; # string | Defines category assign, specified by category id
my $product_id = 10; # string | Defines category assign to the product, specified by product id
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->category_assign(category_id => $category_id, product_id => $product_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_assign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **string**| Defines category assign, specified by category id | 
 **product_id** | **string**| Defines category assign to the product, specified by product id | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**CartConfigUpdate200Response**](CartConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_count**
> CategoryCount200Response category_count(parent_id => $parent_id, store_id => $store_id, lang_id => $lang_id, avail => $avail, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, product_type => $product_type, find_value => $find_value, find_where => $find_where, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache)

category.count

Count categories in store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $parent_id = 6; # string | Counts categories specified by parent id
my $store_id = 1; # string | Counts category specified by store id
my $lang_id = 3; # string | Counts category specified by language id
my $avail = false; # boolean | Defines category's visibility status
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $product_type = BICYCLE; # string | A categorization for the product
my $find_value = Demo category 1; # string | Entity search that is specified by some value
my $find_where = email; # string | Counts categories that are searched specified by field
my $report_request_id = 105245017661; # string | Report request id
my $disable_report_cache = false; # boolean | Disable report cache for current request

eval {
    my $result = $api_instance->category_count(parent_id => $parent_id, store_id => $store_id, lang_id => $lang_id, avail => $avail, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, product_type => $product_type, find_value => $find_value, find_where => $find_where, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parent_id** | **string**| Counts categories specified by parent id | [optional] 
 **store_id** | **string**| Counts category specified by store id | [optional] 
 **lang_id** | **string**| Counts category specified by language id | [optional] 
 **avail** | **boolean**| Defines category&#39;s visibility status | [optional] [default to true]
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **product_type** | **string**| A categorization for the product | [optional] 
 **find_value** | **string**| Entity search that is specified by some value | [optional] 
 **find_where** | **string**| Counts categories that are searched specified by field | [optional] 
 **report_request_id** | **string**| Report request id | [optional] 
 **disable_report_cache** | **boolean**| Disable report cache for current request | [optional] [default to false]

### Return type

[**CategoryCount200Response**](CategoryCount200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_delete**
> CategoryDelete200Response category_delete(id => $id, store_id => $store_id)

category.delete

Delete category in store

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Defines category removal, specified by category id
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->category_delete(id => $id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Defines category removal, specified by category id | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**CategoryDelete200Response**](CategoryDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_find**
> CategoryFind200Response category_find(find_value => $find_value, find_where => $find_where, find_params => $find_params, store_id => $store_id, lang_id => $lang_id)

category.find

Search category in store. \"Laptop\" is specified here by default.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $find_value = Demo category 1; # string | Entity search that is specified by some value
my $find_where = name; # string | Entity search that is specified by the comma-separated unique fields
my $find_params = regex; # string | Entity search that is specified by comma-separated parameters
my $store_id = 1; # string | Store Id
my $lang_id = 3; # string | Language id

eval {
    my $result = $api_instance->category_find(find_value => $find_value, find_where => $find_where, find_params => $find_params, store_id => $store_id, lang_id => $lang_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_find: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **find_value** | **string**| Entity search that is specified by some value | 
 **find_where** | **string**| Entity search that is specified by the comma-separated unique fields | [optional] [default to &#39;name&#39;]
 **find_params** | **string**| Entity search that is specified by comma-separated parameters | [optional] [default to &#39;whole_words&#39;]
 **store_id** | **string**| Store Id | [optional] 
 **lang_id** | **string**| Language id | [optional] 

### Return type

[**CategoryFind200Response**](CategoryFind200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_image_add**
> CategoryImageAdd200Response category_image_add(category_id => $category_id, image_name => $image_name, url => $url, type => $type, store_id => $store_id, label => $label, mime => $mime, position => $position)

category.image.add

Add image to category

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $category_id = 6; # string | Defines category id where the image should be added
my $image_name = bag-gray.png; # string | Defines image's name
my $url = http://docs.api2cart.com/img/logo.png; # string | Defines URL of the image that has to be added
my $type = base; # string | Defines image's types that are specified by comma-separated list
my $store_id = 1; # string | Store Id
my $label = This cool image; # string | Defines alternative text that has to be attached to the picture
my $mime = image/jpeg; # string | Mime type of image http://en.wikipedia.org/wiki/Internet_media_type.
my $position = 5; # int | Defines image’s position in the list

eval {
    my $result = $api_instance->category_image_add(category_id => $category_id, image_name => $image_name, url => $url, type => $type, store_id => $store_id, label => $label, mime => $mime, position => $position);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_image_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **string**| Defines category id where the image should be added | 
 **image_name** | **string**| Defines image&#39;s name | 
 **url** | **string**| Defines URL of the image that has to be added | 
 **type** | **string**| Defines image&#39;s types that are specified by comma-separated list | 
 **store_id** | **string**| Store Id | [optional] 
 **label** | **string**| Defines alternative text that has to be attached to the picture | [optional] 
 **mime** | **string**| Mime type of image http://en.wikipedia.org/wiki/Internet_media_type. | [optional] 
 **position** | **int**| Defines image’s position in the list | [optional] [default to 0]

### Return type

[**CategoryImageAdd200Response**](CategoryImageAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_image_delete**
> AttributeDelete200Response category_image_delete(category_id => $category_id, image_id => $image_id, store_id => $store_id)

category.image.delete

Delete image

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $category_id = 6; # string | Defines category id where the image should be deleted
my $image_id = 82950b84f468edff480680f99cedbe0d; # string | Define image id
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->category_image_delete(category_id => $category_id, image_id => $image_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_image_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **string**| Defines category id where the image should be deleted | 
 **image_id** | **string**| Define image id | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**AttributeDelete200Response**](AttributeDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_info**
> CategoryInfo200Response category_info(id => $id, store_id => $store_id, lang_id => $lang_id, schema_type => $schema_type, response_fields => $response_fields, params => $params, exclude => $exclude, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache)

category.info

Get category info about category ID*** or specify other category ID.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Retrieves category's info specified by category id
my $store_id = 1; # string | Retrieves category info  specified by store id
my $lang_id = 3; # string | Retrieves category info  specified by language id
my $schema_type = LISTING; # string | The name of the requirements set for the provided schema.
my $response_fields = {result{id,name,parent_id,modified_at{value},images}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,parent_id,name; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = id,parent_id,name; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $report_request_id = 105245017661; # string | Report request id
my $disable_report_cache = false; # boolean | Disable report cache for current request

eval {
    my $result = $api_instance->category_info(id => $id, store_id => $store_id, lang_id => $lang_id, schema_type => $schema_type, response_fields => $response_fields, params => $params, exclude => $exclude, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Retrieves category&#39;s info specified by category id | 
 **store_id** | **string**| Retrieves category info  specified by store id | [optional] 
 **lang_id** | **string**| Retrieves category info  specified by language id | [optional] 
 **schema_type** | **string**| The name of the requirements set for the provided schema. | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,parent_id,name,description&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **report_request_id** | **string**| Report request id | [optional] 
 **disable_report_cache** | **boolean**| Disable report cache for current request | [optional] [default to false]

### Return type

[**CategoryInfo200Response**](CategoryInfo200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_list**
> ModelResponseCategoryList category_list(start => $start, count => $count, page_cursor => $page_cursor, store_id => $store_id, lang_id => $lang_id, parent_id => $parent_id, avail => $avail, product_type => $product_type, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, find_value => $find_value, find_where => $find_where, response_fields => $response_fields, params => $params, exclude => $exclude, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache, disable_cache => $disable_cache)

category.list

Get list of categories from store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

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
my $store_id = 1; # string | Retrieves categories specified by store id
my $lang_id = 3; # string | Retrieves categorys specified by language id
my $parent_id = 6; # string | Retrieves categories specified by parent id
my $avail = false; # boolean | Defines category's visibility status
my $product_type = BICYCLE; # string | A categorization for the product
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $find_value = Demo category 1; # string | Entity search that is specified by some value
my $find_where = name; # string | Category search that is specified by field
my $response_fields = {result{categories_count,category{id,parent_id,modified_at{value},images}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,parent_id,name; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = id,parent_id,name; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $report_request_id = 105245017661; # string | Report request id
my $disable_report_cache = false; # boolean | Disable report cache for current request
my $disable_cache = false; # boolean | Disable cache for current request

eval {
    my $result = $api_instance->category_list(start => $start, count => $count, page_cursor => $page_cursor, store_id => $store_id, lang_id => $lang_id, parent_id => $parent_id, avail => $avail, product_type => $product_type, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, find_value => $find_value, find_where => $find_where, response_fields => $response_fields, params => $params, exclude => $exclude, report_request_id => $report_request_id, disable_report_cache => $disable_report_cache, disable_cache => $disable_cache);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **store_id** | **string**| Retrieves categories specified by store id | [optional] 
 **lang_id** | **string**| Retrieves categorys specified by language id | [optional] 
 **parent_id** | **string**| Retrieves categories specified by parent id | [optional] 
 **avail** | **boolean**| Defines category&#39;s visibility status | [optional] [default to true]
 **product_type** | **string**| A categorization for the product | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **find_value** | **string**| Entity search that is specified by some value | [optional] 
 **find_where** | **string**| Category search that is specified by field | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,parent_id,name,description&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **report_request_id** | **string**| Report request id | [optional] 
 **disable_report_cache** | **boolean**| Disable report cache for current request | [optional] [default to false]
 **disable_cache** | **boolean**| Disable cache for current request | [optional] [default to false]

### Return type

[**ModelResponseCategoryList**](ModelResponseCategoryList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_unassign**
> CartConfigUpdate200Response category_unassign(category_id => $category_id, product_id => $product_id, store_id => $store_id)

category.unassign

Unassign category to product

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $category_id = 6; # string | Defines category unassign, specified by category id
my $product_id = 10; # string | Defines category unassign to the product, specified by product id
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->category_unassign(category_id => $category_id, product_id => $product_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_unassign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **string**| Defines category unassign, specified by category id | 
 **product_id** | **string**| Defines category unassign to the product, specified by product id | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**CartConfigUpdate200Response**](CartConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **category_update**
> AccountConfigUpdate200Response category_update(id => $id, name => $name, description => $description, short_description => $short_description, parent_id => $parent_id, avail => $avail, sort_order => $sort_order, modified_time => $modified_time, meta_title => $meta_title, meta_description => $meta_description, meta_keywords => $meta_keywords, seo_url => $seo_url, store_id => $store_id, stores_ids => $stores_ids, lang_id => $lang_id)

category.update

Update category in store

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CategoryApi;
my $api_instance = WWW::OpenAPIClient::CategoryApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Defines category update specified by category id
my $name = NEW Shoes; # string | Defines new category’s name
my $description = New test category; # string | Defines new category's description
my $short_description = Short description. This is very short description; # string | Defines short description
my $parent_id = 6; # string | Defines new parent category id
my $avail = false; # boolean | Defines category's visibility status
my $sort_order = 2; # int | Sort number in the list
my $modified_time = 2014-07-30 15:58:41; # string | Entity's date modification
my $meta_title = category,test; # string | Defines unique meta title for each entity
my $meta_description = category,test; # string | Defines unique meta description of a entity
my $meta_keywords = category,test; # string | Defines unique meta keywords for each entity
my $seo_url = category,test; # string | Defines unique category's URL for SEO
my $store_id = 1; # string | Store Id
my $stores_ids = 1,2; # string | Update category in the stores that is specified by comma-separated stores' id
my $lang_id = 3; # string | Language id

eval {
    my $result = $api_instance->category_update(id => $id, name => $name, description => $description, short_description => $short_description, parent_id => $parent_id, avail => $avail, sort_order => $sort_order, modified_time => $modified_time, meta_title => $meta_title, meta_description => $meta_description, meta_keywords => $meta_keywords, seo_url => $seo_url, store_id => $store_id, stores_ids => $stores_ids, lang_id => $lang_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoryApi->category_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Defines category update specified by category id | 
 **name** | **string**| Defines new category’s name | [optional] 
 **description** | **string**| Defines new category&#39;s description | [optional] 
 **short_description** | **string**| Defines short description | [optional] 
 **parent_id** | **string**| Defines new parent category id | [optional] 
 **avail** | **boolean**| Defines category&#39;s visibility status | [optional] 
 **sort_order** | **int**| Sort number in the list | [optional] 
 **modified_time** | **string**| Entity&#39;s date modification | [optional] 
 **meta_title** | **string**| Defines unique meta title for each entity | [optional] 
 **meta_description** | **string**| Defines unique meta description of a entity | [optional] 
 **meta_keywords** | **string**| Defines unique meta keywords for each entity | [optional] 
 **seo_url** | **string**| Defines unique category&#39;s URL for SEO | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **stores_ids** | **string**| Update category in the stores that is specified by comma-separated stores&#39; id | [optional] 
 **lang_id** | **string**| Language id | [optional] 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

