# WWW::OpenAPIClient::Object::Order

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Order;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] 
**order_id** | **string** |  | [optional] 
**basket_id** | **string** |  | [optional] 
**channel_id** | **string** |  | [optional] 
**customer** | [**BaseCustomer**](BaseCustomer.md) |  | [optional] 
**create_at** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**currency** | [**Currency**](Currency.md) |  | [optional] 
**shipping_address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**billing_address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**payment_method** | [**OrderPaymentMethod**](OrderPaymentMethod.md) |  | [optional] 
**shipping_method** | [**OrderShippingMethod**](OrderShippingMethod.md) |  | [optional] 
**shipping_methods** | [**ARRAY[OrderShippingMethod]**](OrderShippingMethod.md) |  | [optional] 
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] 
**totals** | [**OrderTotals**](OrderTotals.md) |  | [optional] 
**total** | [**OrderTotal**](OrderTotal.md) |  | [optional] 
**discounts** | [**ARRAY[OrderTotalsNewDiscount]**](OrderTotalsNewDiscount.md) |  | [optional] 
**order_products** | [**ARRAY[OrderItem]**](OrderItem.md) |  | [optional] 
**bundles** | [**ARRAY[OrderItem]**](OrderItem.md) |  | [optional] 
**modified_at** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**finished_time** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**comment** | **string** |  | [optional] 
**store_id** | **string** |  | [optional] 
**warehouses_ids** | **ARRAY[string]** |  | [optional] 
**refunds** | [**ARRAY[OrderRefund]**](OrderRefund.md) |  | [optional] 
**gift_message** | **string** |  | [optional] 
**order_details_url** | **string** |  | [optional] 
**additional_fields** | **object** |  | [optional] 
**custom_fields** | **object** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


