# WWW::OpenAPIClient::WebhookApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::WebhookApi;
```

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhook_count**](WebhookApi.md#webhook_count) | **GET** /webhook.count.json | webhook.count
[**webhook_create**](WebhookApi.md#webhook_create) | **POST** /webhook.create.json | webhook.create
[**webhook_delete**](WebhookApi.md#webhook_delete) | **DELETE** /webhook.delete.json | webhook.delete
[**webhook_events**](WebhookApi.md#webhook_events) | **GET** /webhook.events.json | webhook.events
[**webhook_list**](WebhookApi.md#webhook_list) | **GET** /webhook.list.json | webhook.list
[**webhook_update**](WebhookApi.md#webhook_update) | **PUT** /webhook.update.json | webhook.update


# **webhook_count**
> WebhookCount200Response webhook_count(entity => $entity, action => $action, active => $active)

webhook.count

Count registered webhooks on the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WebhookApi;
my $api_instance = WWW::OpenAPIClient::WebhookApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $entity = product; # string | The entity you want to filter webhooks by (e.g. order or product)
my $action = add; # string | The action you want to filter webhooks by (e.g. order or product)
my $active = true; # boolean | The webhook status you want to filter webhooks by

eval {
    my $result = $api_instance->webhook_count(entity => $entity, action => $action, active => $active);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookApi->webhook_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity** | **string**| The entity you want to filter webhooks by (e.g. order or product) | [optional] 
 **action** | **string**| The action you want to filter webhooks by (e.g. order or product) | [optional] 
 **active** | **boolean**| The webhook status you want to filter webhooks by | [optional] 

### Return type

[**WebhookCount200Response**](WebhookCount200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_create**
> BasketLiveShippingServiceCreate200Response webhook_create(entity => $entity, action => $action, callback => $callback, label => $label, fields => $fields, active => $active, lang_id => $lang_id, store_id => $store_id)

webhook.create

Create webhook on the store and subscribe to it.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WebhookApi;
my $api_instance = WWW::OpenAPIClient::WebhookApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $entity = product; # string | Specify the entity that you want to enable webhooks for (e.g product, order, customer, category)
my $action = add; # string | Specify what action (event) will trigger the webhook (e.g add, delete, or update)
my $callback = https://example.com/callback; # string | Callback url that returns shipping rates. It should be able to accept POST requests with json data.
my $label = Super webhook; # string | The name you give to the webhook
my $fields = id, name, description; # string | Fields the webhook should send
my $active = true; # boolean | Webhook status
my $lang_id = 3; # string | Language id
my $store_id = 1; # string | Defines store id where the webhook should be assigned

eval {
    my $result = $api_instance->webhook_create(entity => $entity, action => $action, callback => $callback, label => $label, fields => $fields, active => $active, lang_id => $lang_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookApi->webhook_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity** | **string**| Specify the entity that you want to enable webhooks for (e.g product, order, customer, category) | 
 **action** | **string**| Specify what action (event) will trigger the webhook (e.g add, delete, or update) | 
 **callback** | **string**| Callback url that returns shipping rates. It should be able to accept POST requests with json data. | [optional] 
 **label** | **string**| The name you give to the webhook | [optional] 
 **fields** | **string**| Fields the webhook should send | [optional] [default to &#39;force_all&#39;]
 **active** | **boolean**| Webhook status | [optional] [default to true]
 **lang_id** | **string**| Language id | [optional] 
 **store_id** | **string**| Defines store id where the webhook should be assigned | [optional] 

### Return type

[**BasketLiveShippingServiceCreate200Response**](BasketLiveShippingServiceCreate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_delete**
> AttributeDelete200Response webhook_delete(id => $id)

webhook.delete

Delete registered webhook on the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WebhookApi;
my $api_instance = WWW::OpenAPIClient::WebhookApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 25; # string | Webhook id

eval {
    my $result = $api_instance->webhook_delete(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookApi->webhook_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Webhook id | 

### Return type

[**AttributeDelete200Response**](AttributeDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_events**
> WebhookEvents200Response webhook_events()

webhook.events

List all Webhooks that are available on this store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WebhookApi;
my $api_instance = WWW::OpenAPIClient::WebhookApi->new(

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
    my $result = $api_instance->webhook_events();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookApi->webhook_events: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookEvents200Response**](WebhookEvents200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_list**
> WebhookList200Response webhook_list(start => $start, count => $count, entity => $entity, action => $action, active => $active, ids => $ids, params => $params)

webhook.list

List registered webhook on the store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WebhookApi;
my $api_instance = WWW::OpenAPIClient::WebhookApi->new(

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
my $entity = product; # string | The entity you want to filter webhooks by (e.g. order or product)
my $action = add; # string | The action you want to filter webhooks by (e.g. add, update, or delete)
my $active = true; # boolean | The webhook status you want to filter webhooks by
my $ids = 3,14,25; # string | List of сomma-separated webhook ids
my $params = id,entity,callback,fields; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->webhook_list(start => $start, count => $count, entity => $entity, action => $action, active => $active, ids => $ids, params => $params);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookApi->webhook_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **entity** | **string**| The entity you want to filter webhooks by (e.g. order or product) | [optional] 
 **action** | **string**| The action you want to filter webhooks by (e.g. add, update, or delete) | [optional] 
 **active** | **boolean**| The webhook status you want to filter webhooks by | [optional] 
 **ids** | **string**| List of сomma-separated webhook ids | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,entity,action,callback&#39;]

### Return type

[**WebhookList200Response**](WebhookList200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_update**
> ProductImageUpdate200Response webhook_update(id => $id, callback => $callback, label => $label, fields => $fields, active => $active, lang_id => $lang_id)

webhook.update

Update Webhooks parameters.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WebhookApi;
my $api_instance = WWW::OpenAPIClient::WebhookApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 25; # string | Webhook id
my $callback = https://example.com/callback; # string | Callback url that returns shipping rates. It should be able to accept POST requests with json data.
my $label = Super webhook; # string | The name you give to the webhook
my $fields = id, name, description; # string | Fields the webhook should send
my $active = true; # boolean | Webhook status
my $lang_id = 3; # string | Language id

eval {
    my $result = $api_instance->webhook_update(id => $id, callback => $callback, label => $label, fields => $fields, active => $active, lang_id => $lang_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookApi->webhook_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Webhook id | 
 **callback** | **string**| Callback url that returns shipping rates. It should be able to accept POST requests with json data. | [optional] 
 **label** | **string**| The name you give to the webhook | [optional] 
 **fields** | **string**| Fields the webhook should send | [optional] 
 **active** | **boolean**| Webhook status | [optional] 
 **lang_id** | **string**| Language id | [optional] 

### Return type

[**ProductImageUpdate200Response**](ProductImageUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

