# WWW::OpenAPIClient::OrderApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OrderApi;
```

All URIs are relative to *https://api.api2cart.local.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_abandoned_list**](OrderApi.md#order_abandoned_list) | **GET** /order.abandoned.list.json | order.abandoned.list
[**order_add**](OrderApi.md#order_add) | **POST** /order.add.json | order.add
[**order_count**](OrderApi.md#order_count) | **GET** /order.count.json | order.count
[**order_financial_status_list**](OrderApi.md#order_financial_status_list) | **GET** /order.financial_status.list.json | order.financial_status.list
[**order_fulfillment_status_list**](OrderApi.md#order_fulfillment_status_list) | **GET** /order.fulfillment_status.list.json | order.fulfillment_status.list
[**order_info**](OrderApi.md#order_info) | **GET** /order.info.json | order.info
[**order_list**](OrderApi.md#order_list) | **GET** /order.list.json | order.list
[**order_preestimate_shipping_list**](OrderApi.md#order_preestimate_shipping_list) | **POST** /order.preestimate_shipping.list.json | order.preestimate_shipping.list
[**order_refund_add**](OrderApi.md#order_refund_add) | **POST** /order.refund.add.json | order.refund.add
[**order_return_add**](OrderApi.md#order_return_add) | **POST** /order.return.add.json | order.return.add
[**order_return_delete**](OrderApi.md#order_return_delete) | **DELETE** /order.return.delete.json | order.return.delete
[**order_return_update**](OrderApi.md#order_return_update) | **PUT** /order.return.update.json | order.return.update
[**order_shipment_add**](OrderApi.md#order_shipment_add) | **POST** /order.shipment.add.json | order.shipment.add
[**order_shipment_add_batch**](OrderApi.md#order_shipment_add_batch) | **POST** /order.shipment.add.batch.json | order.shipment.add.batch
[**order_shipment_delete**](OrderApi.md#order_shipment_delete) | **DELETE** /order.shipment.delete.json | order.shipment.delete
[**order_shipment_info**](OrderApi.md#order_shipment_info) | **GET** /order.shipment.info.json | order.shipment.info
[**order_shipment_list**](OrderApi.md#order_shipment_list) | **GET** /order.shipment.list.json | order.shipment.list
[**order_shipment_tracking_add**](OrderApi.md#order_shipment_tracking_add) | **POST** /order.shipment.tracking.add.json | order.shipment.tracking.add
[**order_shipment_update**](OrderApi.md#order_shipment_update) | **PUT** /order.shipment.update.json | order.shipment.update
[**order_status_list**](OrderApi.md#order_status_list) | **GET** /order.status.list.json | order.status.list
[**order_transaction_list**](OrderApi.md#order_transaction_list) | **GET** /order.transaction.list.json | order.transaction.list
[**order_update**](OrderApi.md#order_update) | **PUT** /order.update.json | order.update


# **order_abandoned_list**
> ModelResponseOrderAbandonedList order_abandoned_list(start => $start, count => $count, page_cursor => $page_cursor, customer_id => $customer_id, customer_email => $customer_email, store_id => $store_id, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, skip_empty_email => $skip_empty_email, response_fields => $response_fields, params => $params, exclude => $exclude)

order.abandoned.list

Get list of orders that were left by customers before completing the order.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

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
my $customer_id = 5; # string | Retrieves orders specified by customer id
my $customer_email = jubari@hannsgroup.com; # string | Retrieves orders specified by customer email
my $store_id = 1; # string | Store Id
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $skip_empty_email = true; # boolean | Filter empty emails
my $response_fields = {return_code,pagination,result{order{id,customer{email},created_at,totals{total},order_products}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = force_all; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = customer; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->order_abandoned_list(start => $start, count => $count, page_cursor => $page_cursor, customer_id => $customer_id, customer_email => $customer_email, store_id => $store_id, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, skip_empty_email => $skip_empty_email, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_abandoned_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **customer_id** | **string**| Retrieves orders specified by customer id | [optional] 
 **customer_email** | **string**| Retrieves orders specified by customer email | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **skip_empty_email** | **boolean**| Filter empty emails | [optional] [default to false]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;customer,totals,items&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseOrderAbandonedList**](ModelResponseOrderAbandonedList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_add**
> OrderAdd200Response order_add(order_add => $order_add)

order.add

Add a new order to the cart.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_add = WWW::OpenAPIClient::Object::OrderAdd->new(); # OrderAdd | 

eval {
    my $result = $api_instance->order_add(order_add => $order_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_add** | [**OrderAdd**](OrderAdd.md)|  | 

### Return type

[**OrderAdd200Response**](OrderAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_count**
> OrderCount200Response order_count(order_ids => $order_ids, ids => $ids, customer_id => $customer_id, store_id => $store_id, customer_email => $customer_email, order_status => $order_status, order_status_ids => $order_status_ids, ebay_order_status => $ebay_order_status, financial_status => $financial_status, financial_status_ids => $financial_status_ids, fulfillment_channel => $fulfillment_channel, fulfillment_status => $fulfillment_status, shipping_method => $shipping_method, delivery_method => $delivery_method, tags => $tags, ship_node_type => $ship_node_type, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to)

order.count

Count orders in store

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_ids = 24,25; # string | Counts orders specified by order ids
my $ids = 24,25; # string | Counts orders specified by ids
my $customer_id = 5; # string | Counts orders quantity specified by customer id
my $store_id = 1; # string | Counts orders quantity specified by store id
my $customer_email = jubari@hannsgroup.com; # string | Counts orders quantity specified by customer email
my $order_status = Completed; # string | Counts orders quantity specified by order status
my $order_status_ids = [("null")]; # ARRAY[string] | Retrieves orders specified by order statuses
my $ebay_order_status = Active; # string | Counts orders quantity specified by order status
my $financial_status = paid; # string | Counts orders quantity specified by financial status
my $financial_status_ids = [("null")]; # ARRAY[string] | Retrieves orders count specified by financial status ids
my $fulfillment_channel = local; # string | Retrieves order with a fulfillment channel
my $fulfillment_status = fulfilled; # string | Create order with fulfillment status
my $shipping_method = flatrate_flatrate; # string | Retrieve entities according to shipping method
my $delivery_method = local; # string | Retrieves order with delivery method
my $tags = tag1,tag2; # string | Order tags
my $ship_node_type = SellerFulfilled; # string | Retrieves order with ship node type
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date

eval {
    my $result = $api_instance->order_count(order_ids => $order_ids, ids => $ids, customer_id => $customer_id, store_id => $store_id, customer_email => $customer_email, order_status => $order_status, order_status_ids => $order_status_ids, ebay_order_status => $ebay_order_status, financial_status => $financial_status, financial_status_ids => $financial_status_ids, fulfillment_channel => $fulfillment_channel, fulfillment_status => $fulfillment_status, shipping_method => $shipping_method, delivery_method => $delivery_method, tags => $tags, ship_node_type => $ship_node_type, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_ids** | **string**| Counts orders specified by order ids | [optional] 
 **ids** | **string**| Counts orders specified by ids | [optional] 
 **customer_id** | **string**| Counts orders quantity specified by customer id | [optional] 
 **store_id** | **string**| Counts orders quantity specified by store id | [optional] 
 **customer_email** | **string**| Counts orders quantity specified by customer email | [optional] 
 **order_status** | **string**| Counts orders quantity specified by order status | [optional] 
 **order_status_ids** | [**ARRAY[string]**](string.md)| Retrieves orders specified by order statuses | [optional] 
 **ebay_order_status** | **string**| Counts orders quantity specified by order status | [optional] 
 **financial_status** | **string**| Counts orders quantity specified by financial status | [optional] 
 **financial_status_ids** | [**ARRAY[string]**](string.md)| Retrieves orders count specified by financial status ids | [optional] 
 **fulfillment_channel** | **string**| Retrieves order with a fulfillment channel | [optional] 
 **fulfillment_status** | **string**| Create order with fulfillment status | [optional] 
 **shipping_method** | **string**| Retrieve entities according to shipping method | [optional] 
 **delivery_method** | **string**| Retrieves order with delivery method | [optional] 
 **tags** | **string**| Order tags | [optional] 
 **ship_node_type** | **string**| Retrieves order with ship node type | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 

### Return type

[**OrderCount200Response**](OrderCount200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_financial_status_list**
> OrderFinancialStatusList200Response order_financial_status_list()

order.financial_status.list

Retrieve list of financial statuses

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

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
    my $result = $api_instance->order_financial_status_list();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_financial_status_list: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrderFinancialStatusList200Response**](OrderFinancialStatusList200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_fulfillment_status_list**
> OrderFulfillmentStatusList200Response order_fulfillment_status_list(action => $action)

order.fulfillment_status.list

Retrieve list of fulfillment statuses

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $action = add; # string | Available statuses for the specified action.

eval {
    my $result = $api_instance->order_fulfillment_status_list(action => $action);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_fulfillment_status_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action** | **string**| Available statuses for the specified action. | [optional] 

### Return type

[**OrderFulfillmentStatusList200Response**](OrderFulfillmentStatusList200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_info**
> OrderInfo200Response order_info(id => $id, order_id => $order_id, store_id => $store_id, params => $params, response_fields => $response_fields, exclude => $exclude, enable_cache => $enable_cache, use_latest_api_version => $use_latest_api_version)

order.info

Info about a specific order by ID

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 10; # string | Retrieves order info specified by id
my $order_id = 25; # string | Retrieves order’s info specified by order id
my $store_id = 1; # string | Defines store id where the order should be found
my $params = order_id,totals,status; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {result{order_id,customer,totals,address,items,bundles,status}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = order_id,totals,status; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $enable_cache = true; # boolean | If the value is 'true' and order exist in our cache, we will return order.info response from cache
my $use_latest_api_version = true; # boolean | Use the latest platform API version

eval {
    my $result = $api_instance->order_info(id => $id, order_id => $order_id, store_id => $store_id, params => $params, response_fields => $response_fields, exclude => $exclude, enable_cache => $enable_cache, use_latest_api_version => $use_latest_api_version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Retrieves order info specified by id | [optional] 
 **order_id** | **string**| Retrieves order’s info specified by order id | [optional] 
 **store_id** | **string**| Defines store id where the order should be found | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;order_id,customer,totals,address,items,bundles,status&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **enable_cache** | **boolean**| If the value is &#39;true&#39; and order exist in our cache, we will return order.info response from cache | [optional] [default to false]
 **use_latest_api_version** | **boolean**| Use the latest platform API version | [optional] [default to false]

### Return type

[**OrderInfo200Response**](OrderInfo200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_list**
> ModelResponseOrderList order_list(start => $start, count => $count, page_cursor => $page_cursor, ids => $ids, order_ids => $order_ids, since_id => $since_id, store_id => $store_id, customer_id => $customer_id, customer_email => $customer_email, basket_id => $basket_id, currency_id => $currency_id, phone => $phone, order_status => $order_status, order_status_ids => $order_status_ids, ebay_order_status => $ebay_order_status, financial_status => $financial_status, financial_status_ids => $financial_status_ids, fulfillment_status => $fulfillment_status, return_status => $return_status, fulfillment_channel => $fulfillment_channel, shipping_method => $shipping_method, skip_order_ids => $skip_order_ids, is_deleted => $is_deleted, shipping_country_iso3 => $shipping_country_iso3, delivery_method => $delivery_method, ship_node_type => $ship_node_type, created_to => $created_to, created_from => $created_from, modified_to => $modified_to, modified_from => $modified_from, tags => $tags, sort_by => $sort_by, sort_direction => $sort_direction, params => $params, response_fields => $response_fields, exclude => $exclude, enable_cache => $enable_cache, use_latest_api_version => $use_latest_api_version)

order.list

Get list of orders from store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

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
my $page_cursor = ; # string | Used to retrieve orders via cursor-based pagination (it can't be used with any other filtering parameter)
my $ids = 24,25; # string | Retrieves orders specified by ids
my $order_ids = 24,25; # string | Retrieves orders specified by order ids
my $since_id = 56; # string | Retrieve entities starting from the specified id.
my $store_id = 1; # string | Store Id
my $customer_id = 5; # string | Retrieves orders specified by customer id
my $customer_email = jubari@hannsgroup.com; # string | Retrieves orders specified by customer email
my $basket_id = 1; # string | Retrieves order’s info specified by basket id.
my $currency_id = usd; # string | Currency Id
my $phone = 56686868654; # string | Filter orders by customer's phone number
my $order_status = Completed; # string | Retrieves orders specified by order status
my $order_status_ids = [("null")]; # ARRAY[string] | Retrieves orders specified by order statuses
my $ebay_order_status = Active; # string | Retrieves orders specified by order status
my $financial_status = paid; # string | Retrieves orders specified by financial status
my $financial_status_ids = [("null")]; # ARRAY[string] | Retrieves orders specified by financial status ids
my $fulfillment_status = fulfilled; # string | Create order with fulfillment status
my $return_status = RETURNED; # string | Retrieves orders specified by return status
my $fulfillment_channel = local; # string | Retrieves order with a fulfillment channel
my $shipping_method = flatrate_flatrate; # string | Retrieve entities according to shipping method
my $skip_order_ids = 24,25; # string | Skipped orders by ids
my $is_deleted = true; # boolean | Filter deleted orders
my $shipping_country_iso3 = DEU; # string | Retrieve entities according to shipping country
my $delivery_method = local; # string | Retrieves order with delivery method
my $ship_node_type = SellerFulfilled; # string | Retrieves order with ship node type
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $tags = tag1,tag2; # string | Order tags
my $sort_by = modified_at; # string | Set field to sort by
my $sort_direction = asc; # string | Set sorting direction
my $params = order_id,totals,status; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {return_code,pagination,result{order{order_id,customer,totals,address,items,bundles,status}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = order_id,totals,status; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
my $enable_cache = true; # boolean | If the value is 'true', we will cache orders for a 15 minutes in order to increase speed and reduce requests throttling for some methods and shoping platforms (for example order.shipment.add)
my $use_latest_api_version = true; # boolean | Use the latest platform API version

eval {
    my $result = $api_instance->order_list(start => $start, count => $count, page_cursor => $page_cursor, ids => $ids, order_ids => $order_ids, since_id => $since_id, store_id => $store_id, customer_id => $customer_id, customer_email => $customer_email, basket_id => $basket_id, currency_id => $currency_id, phone => $phone, order_status => $order_status, order_status_ids => $order_status_ids, ebay_order_status => $ebay_order_status, financial_status => $financial_status, financial_status_ids => $financial_status_ids, fulfillment_status => $fulfillment_status, return_status => $return_status, fulfillment_channel => $fulfillment_channel, shipping_method => $shipping_method, skip_order_ids => $skip_order_ids, is_deleted => $is_deleted, shipping_country_iso3 => $shipping_country_iso3, delivery_method => $delivery_method, ship_node_type => $ship_node_type, created_to => $created_to, created_from => $created_from, modified_to => $modified_to, modified_from => $modified_from, tags => $tags, sort_by => $sort_by, sort_direction => $sort_direction, params => $params, response_fields => $response_fields, exclude => $exclude, enable_cache => $enable_cache, use_latest_api_version => $use_latest_api_version);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve orders via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **ids** | **string**| Retrieves orders specified by ids | [optional] 
 **order_ids** | **string**| Retrieves orders specified by order ids | [optional] 
 **since_id** | **string**| Retrieve entities starting from the specified id. | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **customer_id** | **string**| Retrieves orders specified by customer id | [optional] 
 **customer_email** | **string**| Retrieves orders specified by customer email | [optional] 
 **basket_id** | **string**| Retrieves order’s info specified by basket id. | [optional] 
 **currency_id** | **string**| Currency Id | [optional] 
 **phone** | **string**| Filter orders by customer&#39;s phone number | [optional] 
 **order_status** | **string**| Retrieves orders specified by order status | [optional] 
 **order_status_ids** | [**ARRAY[string]**](string.md)| Retrieves orders specified by order statuses | [optional] 
 **ebay_order_status** | **string**| Retrieves orders specified by order status | [optional] 
 **financial_status** | **string**| Retrieves orders specified by financial status | [optional] 
 **financial_status_ids** | [**ARRAY[string]**](string.md)| Retrieves orders specified by financial status ids | [optional] 
 **fulfillment_status** | **string**| Create order with fulfillment status | [optional] 
 **return_status** | **string**| Retrieves orders specified by return status | [optional] 
 **fulfillment_channel** | **string**| Retrieves order with a fulfillment channel | [optional] 
 **shipping_method** | **string**| Retrieve entities according to shipping method | [optional] 
 **skip_order_ids** | **string**| Skipped orders by ids | [optional] 
 **is_deleted** | **boolean**| Filter deleted orders | [optional] 
 **shipping_country_iso3** | **string**| Retrieve entities according to shipping country | [optional] 
 **delivery_method** | **string**| Retrieves order with delivery method | [optional] 
 **ship_node_type** | **string**| Retrieves order with ship node type | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **tags** | **string**| Order tags | [optional] 
 **sort_by** | **string**| Set field to sort by | [optional] [default to &#39;order_id&#39;]
 **sort_direction** | **string**| Set sorting direction | [optional] [default to &#39;asc&#39;]
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;order_id,customer,totals,address,items,bundles,status&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **enable_cache** | **boolean**| If the value is &#39;true&#39;, we will cache orders for a 15 minutes in order to increase speed and reduce requests throttling for some methods and shoping platforms (for example order.shipment.add) | [optional] [default to false]
 **use_latest_api_version** | **boolean**| Use the latest platform API version | [optional] [default to false]

### Return type

[**ModelResponseOrderList**](ModelResponseOrderList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_preestimate_shipping_list**
> ModelResponseOrderPreestimateShippingList order_preestimate_shipping_list(order_preestimate_shipping_list => $order_preestimate_shipping_list)

order.preestimate_shipping.list

Retrieve list of order preestimated shipping methods

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_preestimate_shipping_list = WWW::OpenAPIClient::Object::OrderPreestimateShippingList->new(); # OrderPreestimateShippingList | 

eval {
    my $result = $api_instance->order_preestimate_shipping_list(order_preestimate_shipping_list => $order_preestimate_shipping_list);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_preestimate_shipping_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_preestimate_shipping_list** | [**OrderPreestimateShippingList**](OrderPreestimateShippingList.md)|  | 

### Return type

[**ModelResponseOrderPreestimateShippingList**](ModelResponseOrderPreestimateShippingList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_refund_add**
> OrderRefundAdd200Response order_refund_add(order_refund_add => $order_refund_add)

order.refund.add

Add a refund to the order.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_refund_add = WWW::OpenAPIClient::Object::OrderRefundAdd->new(); # OrderRefundAdd | 

eval {
    my $result = $api_instance->order_refund_add(order_refund_add => $order_refund_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_refund_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_refund_add** | [**OrderRefundAdd**](OrderRefundAdd.md)|  | 

### Return type

[**OrderRefundAdd200Response**](OrderRefundAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_return_add**
> OrderReturnAdd200Response order_return_add(order_return_add => $order_return_add)

order.return.add

Create new return request.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_return_add = WWW::OpenAPIClient::Object::OrderReturnAdd->new(); # OrderReturnAdd | 

eval {
    my $result = $api_instance->order_return_add(order_return_add => $order_return_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_return_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_return_add** | [**OrderReturnAdd**](OrderReturnAdd.md)|  | 

### Return type

[**OrderReturnAdd200Response**](OrderReturnAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_return_delete**
> AttributeValueDelete200Response order_return_delete(return_id => $return_id, order_id => $order_id, store_id => $store_id)

order.return.delete

Delete return.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $return_id = 200000002; # string | Return ID
my $order_id = 25; # string | Defines the order id
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->order_return_delete(return_id => $return_id, order_id => $order_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_return_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_id** | **string**| Return ID | 
 **order_id** | **string**| Defines the order id | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**AttributeValueDelete200Response**](AttributeValueDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_return_update**
> AccountConfigUpdate200Response order_return_update(order_return_update => $order_return_update)

order.return.update

Update order's shipment information.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_return_update = WWW::OpenAPIClient::Object::OrderReturnUpdate->new(); # OrderReturnUpdate | 

eval {
    my $result = $api_instance->order_return_update(order_return_update => $order_return_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_return_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_return_update** | [**OrderReturnUpdate**](OrderReturnUpdate.md)|  | 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_shipment_add**
> OrderShipmentAdd200Response order_shipment_add(order_shipment_add => $order_shipment_add)

order.shipment.add

Add a shipment to the order.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_shipment_add = WWW::OpenAPIClient::Object::OrderShipmentAdd->new(); # OrderShipmentAdd | 

eval {
    my $result = $api_instance->order_shipment_add(order_shipment_add => $order_shipment_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_shipment_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_shipment_add** | [**OrderShipmentAdd**](OrderShipmentAdd.md)|  | 

### Return type

[**OrderShipmentAdd200Response**](OrderShipmentAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_shipment_add_batch**
> CategoryAddBatch200Response order_shipment_add_batch(order_shipment_add_batch => $order_shipment_add_batch)

order.shipment.add.batch

Add a shipments to the orders.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_shipment_add_batch = WWW::OpenAPIClient::Object::OrderShipmentAddBatch->new(); # OrderShipmentAddBatch | 

eval {
    my $result = $api_instance->order_shipment_add_batch(order_shipment_add_batch => $order_shipment_add_batch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_shipment_add_batch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_shipment_add_batch** | [**OrderShipmentAddBatch**](OrderShipmentAddBatch.md)|  | 

### Return type

[**CategoryAddBatch200Response**](CategoryAddBatch200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_shipment_delete**
> OrderShipmentDelete200Response order_shipment_delete(shipment_id => $shipment_id, order_id => $order_id, store_id => $store_id)

order.shipment.delete

Delete order's shipment.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $shipment_id = 200000002; # string | Shipment id indicates the number of delivery
my $order_id = 25; # string | Defines the order for which the shipment will be deleted
my $store_id = 1; # string | Store Id

eval {
    my $result = $api_instance->order_shipment_delete(shipment_id => $shipment_id, order_id => $order_id, store_id => $store_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_shipment_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **string**| Shipment id indicates the number of delivery | 
 **order_id** | **string**| Defines the order for which the shipment will be deleted | 
 **store_id** | **string**| Store Id | [optional] 

### Return type

[**OrderShipmentDelete200Response**](OrderShipmentDelete200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_shipment_info**
> OrderShipmentInfo200Response order_shipment_info(id => $id, order_id => $order_id, start => $start, store_id => $store_id, response_fields => $response_fields, params => $params, exclude => $exclude)

order.shipment.info

Get information of shipment.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

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
my $order_id = 25; # string | Defines the order id
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $store_id = 1; # string | Store Id
my $response_fields = {result{id,order_id,shipment_provider,tracking_numbers{tracking_number},items{product_id,quantity}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->order_shipment_info(id => $id, order_id => $order_id, start => $start, store_id => $store_id, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_shipment_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Entity id | 
 **order_id** | **string**| Defines the order id | 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **store_id** | **string**| Store Id | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,order_id,items,tracking_numbers&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**OrderShipmentInfo200Response**](OrderShipmentInfo200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_shipment_list**
> ModelResponseOrderShipmentList order_shipment_list(order_id => $order_id, start => $start, count => $count, page_cursor => $page_cursor, store_id => $store_id, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, response_fields => $response_fields, params => $params, exclude => $exclude)

order.shipment.list

Get list of shipments per order.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_id = 25; # string | Retrieves shipments specified by order id
my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $store_id = 1; # string | Store Id
my $created_from = 2010-07-29 13:45:52; # string | Retrieve entities from their creation date
my $created_to = 2100-08-29 13:45:52; # string | Retrieve entities to their creation date
my $modified_from = 2010-07-29 13:45:52; # string | Retrieve entities from their modification date
my $modified_to = 2100-08-29 13:45:52; # string | Retrieve entities to their modification date
my $response_fields = {status_code,pagination,result{shipment{id,order_id,shipment_provider,tracking_numbers{tracking_number},items{product_id,quantity}}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->order_shipment_list(order_id => $order_id, start => $start, count => $count, page_cursor => $page_cursor, store_id => $store_id, created_from => $created_from, created_to => $created_to, modified_from => $modified_from, modified_to => $modified_to, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_shipment_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **string**| Retrieves shipments specified by order id | 
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **created_from** | **string**| Retrieve entities from their creation date | [optional] 
 **created_to** | **string**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **string**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **string**| Retrieve entities to their modification date | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,order_id,items,tracking_numbers&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseOrderShipmentList**](ModelResponseOrderShipmentList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_shipment_tracking_add**
> OrderShipmentTrackingAdd200Response order_shipment_tracking_add(order_shipment_tracking_add => $order_shipment_tracking_add)

order.shipment.tracking.add

Add order shipment's tracking info.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_shipment_tracking_add = WWW::OpenAPIClient::Object::OrderShipmentTrackingAdd->new(); # OrderShipmentTrackingAdd | 

eval {
    my $result = $api_instance->order_shipment_tracking_add(order_shipment_tracking_add => $order_shipment_tracking_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_shipment_tracking_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_shipment_tracking_add** | [**OrderShipmentTrackingAdd**](OrderShipmentTrackingAdd.md)|  | 

### Return type

[**OrderShipmentTrackingAdd200Response**](OrderShipmentTrackingAdd200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_shipment_update**
> AccountConfigUpdate200Response order_shipment_update(order_shipment_update => $order_shipment_update)

order.shipment.update

Update order's shipment information.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_shipment_update = WWW::OpenAPIClient::Object::OrderShipmentUpdate->new(); # OrderShipmentUpdate | 

eval {
    my $result = $api_instance->order_shipment_update(order_shipment_update => $order_shipment_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_shipment_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_shipment_update** | [**OrderShipmentUpdate**](OrderShipmentUpdate.md)|  | 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_status_list**
> ModelResponseOrderStatusList order_status_list(store_id => $store_id, action => $action, response_fields => $response_fields)

order.status.list

Retrieve list of statuses

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

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
my $action = add; # string | Available statuses for the specified action.
my $response_fields = {return_code,return_message,result}; # string | Set this parameter in order to choose which entity fields you want to retrieve

eval {
    my $result = $api_instance->order_status_list(store_id => $store_id, action => $action, response_fields => $response_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_status_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **string**| Store Id | [optional] 
 **action** | **string**| Available statuses for the specified action. | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 

### Return type

[**ModelResponseOrderStatusList**](ModelResponseOrderStatusList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_transaction_list**
> ModelResponseOrderTransactionList order_transaction_list(order_ids => $order_ids, count => $count, page_cursor => $page_cursor, store_id => $store_id, params => $params, response_fields => $response_fields, exclude => $exclude)

order.transaction.list

Retrieve list of order transaction

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_ids = 24,25; # string | Retrieves order transactions specified by order ids
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $store_id = 1; # string | Store Id
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $response_fields = {return_code,pagination,result{transactions_count,transactions{id,transaction_id,status,description,settlement_amount,gateway,card_brand,card_last_four}}}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->order_transaction_list(order_ids => $order_ids, count => $count, page_cursor => $page_cursor, store_id => $store_id, params => $params, response_fields => $response_fields, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_transaction_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_ids** | **string**| Retrieves order transactions specified by order ids | 
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;id,order_id,amount,description&#39;]
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseOrderTransactionList**](ModelResponseOrderTransactionList.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_update**
> AccountConfigUpdate200Response order_update(order_id => $order_id, store_id => $store_id, order_status => $order_status, financial_status => $financial_status, fulfillment_status => $fulfillment_status, cancellation_reason => $cancellation_reason, order_payment_method => $order_payment_method, comment => $comment, admin_comment => $admin_comment, admin_private_comment => $admin_private_comment, invoice_admin_comment => $invoice_admin_comment, date_modified => $date_modified, date_finished => $date_finished, send_notifications => $send_notifications, create_invoice => $create_invoice, origin => $origin, tags => $tags)

order.update

Update existing order.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrderApi;
my $api_instance = WWW::OpenAPIClient::OrderApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $order_id = 25; # string | Defines the orders specified by order id
my $store_id = 1; # string | Defines store id where the order should be found
my $order_status = Completed; # string | Defines new order's status
my $financial_status = paid; # string | Update order financial status to specified
my $fulfillment_status = fulfilled; # string | Create order with fulfillment status
my $cancellation_reason = ORDER_UNPAID; # string | Defines the cancellation reason when the order will be canceled
my $order_payment_method = PayPal; # string | Defines order payment method.<br/>Setting order_payment_method on Shopify will also change financial_status field value to 'paid'
my $comment = This coole order; # string | Specifies order comment
my $admin_comment = Test admin comment; # string | Specifies admin's order comment
my $admin_private_comment = Test admin private comment; # string | Specifies private admin's order comment
my $invoice_admin_comment = Test admin comment; # string | Specifies admin's order invoice comment
my $date_modified = 2014-05-05 05:05:00; # string | Specifies order's  modification date
my $date_finished = 2014-06-05 05:05:00; # string | Specifies order's  finished date
my $send_notifications = true; # boolean | Send notifications to customer after order was created
my $create_invoice = true; # boolean | Determines whether an invoice should be created if it has not already been created
my $origin = newsletter; # string | The source of the order
my $tags = tag1,tag2; # string | Order tags

eval {
    my $result = $api_instance->order_update(order_id => $order_id, store_id => $store_id, order_status => $order_status, financial_status => $financial_status, fulfillment_status => $fulfillment_status, cancellation_reason => $cancellation_reason, order_payment_method => $order_payment_method, comment => $comment, admin_comment => $admin_comment, admin_private_comment => $admin_private_comment, invoice_admin_comment => $invoice_admin_comment, date_modified => $date_modified, date_finished => $date_finished, send_notifications => $send_notifications, create_invoice => $create_invoice, origin => $origin, tags => $tags);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrderApi->order_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **string**| Defines the orders specified by order id | 
 **store_id** | **string**| Defines store id where the order should be found | [optional] 
 **order_status** | **string**| Defines new order&#39;s status | [optional] 
 **financial_status** | **string**| Update order financial status to specified | [optional] 
 **fulfillment_status** | **string**| Create order with fulfillment status | [optional] 
 **cancellation_reason** | **string**| Defines the cancellation reason when the order will be canceled | [optional] 
 **order_payment_method** | **string**| Defines order payment method.&lt;br/&gt;Setting order_payment_method on Shopify will also change financial_status field value to &#39;paid&#39; | [optional] 
 **comment** | **string**| Specifies order comment | [optional] 
 **admin_comment** | **string**| Specifies admin&#39;s order comment | [optional] 
 **admin_private_comment** | **string**| Specifies private admin&#39;s order comment | [optional] 
 **invoice_admin_comment** | **string**| Specifies admin&#39;s order invoice comment | [optional] 
 **date_modified** | **string**| Specifies order&#39;s  modification date | [optional] 
 **date_finished** | **string**| Specifies order&#39;s  finished date | [optional] 
 **send_notifications** | **boolean**| Send notifications to customer after order was created | [optional] [default to false]
 **create_invoice** | **boolean**| Determines whether an invoice should be created if it has not already been created | [optional] 
 **origin** | **string**| The source of the order | [optional] 
 **tags** | **string**| Order tags | [optional] 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

