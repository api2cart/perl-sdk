# WWW::OpenAPIClient::Object::OrderRefundAdd

## Load the model package
```perl
use WWW::OpenAPIClient::Object::OrderRefundAdd;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **string** | Defines the order for which the refund will be created. | [optional] 
**items** | [**ARRAY[OrderRefundAddItemsInner]**](OrderRefundAddItemsInner.md) | Defines items in the order that will be refunded | [optional] 
**total_price** | **double** | Defines order refund amount. | [optional] 
**shipping_price** | **double** | Defines refund shipping amount. | [optional] 
**fee_price** | **double** | Specifies refund&#39;s fee price | [optional] 
**message** | **string** | Refund reason, or some else message which assigned to refund. | [optional] 
**item_restock** | **boolean** | Boolean, whether or not to add the line items back to the store inventory. | [optional] [default to false]
**send_notifications** | **boolean** | Send notifications to customer after refund was created | [optional] [default to false]
**date** | **string** | Specifies an order creation date in format Y-m-d H:i:s | [optional] 
**is_online** | **boolean** | Indicates whether refund type is online | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


