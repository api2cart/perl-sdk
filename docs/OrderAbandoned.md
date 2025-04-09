# WWW::OpenAPIClient::Object::OrderAbandoned

## Load the model package
```perl
use WWW::OpenAPIClient::Object::OrderAbandoned;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] 
**customer** | [**BaseCustomer**](BaseCustomer.md) |  | [optional] 
**basket_id** | **string** |  | [optional] 
**basket_url** | **string** |  | [optional] 
**created_at** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**modified_at** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**currency** | [**Currency**](Currency.md) |  | [optional] 
**totals** | [**OrderTotals**](OrderTotals.md) |  | [optional] 
**order_products** | [**ARRAY[OrderItem]**](OrderItem.md) |  | [optional] 
**additional_fields** | **object** |  | [optional] 
**custom_fields** | **object** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


