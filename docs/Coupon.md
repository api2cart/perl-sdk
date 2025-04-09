# WWW::OpenAPIClient::Object::Coupon

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Coupon;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] 
**code** | **string** |  | [optional] 
**codes** | [**ARRAY[CouponCode]**](CouponCode.md) |  | [optional] 
**name** | **string** |  | [optional] 
**description** | **string** |  | [optional] 
**actions** | [**ARRAY[CouponAction]**](CouponAction.md) |  | [optional] 
**date_start** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**date_end** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**avail** | **boolean** |  | [optional] 
**priority** | **int** |  | [optional] 
**used_times** | **int** |  | [optional] 
**usage_limit** | **int** |  | [optional] 
**usage_limit_per_customer** | **int** |  | [optional] 
**logic_operator** | **string** |  | [optional] 
**conditions** | [**ARRAY[CouponCondition]**](CouponCondition.md) |  | [optional] 
**usage_history** | [**ARRAY[CouponHistory]**](CouponHistory.md) |  | [optional] 
**additional_fields** | **object** |  | [optional] 
**custom_fields** | **object** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


