# WWW::OpenAPIClient::Object::CartCouponAdd

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CartCouponAdd;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **string** | Coupon code | 
**action_type** | **string** | Coupon discount type | 
**action_apply_to** | **string** | Defines where discount should be applied | 
**action_scope** | **string** | Specify how discount should be applied. If scope&#x3D;matching_items, then discount will be applied to each of the items that match action conditions. Scope order means that discount will be applied once. | 
**action_amount** | **double** | Defines the discount amount value. | 
**codes** | **ARRAY[string]** | Entity codes | [optional] 
**name** | **string** | Coupon name | [optional] 
**date_start** | **string** | Date start | [optional] [default to &#39;now&#39;]
**date_end** | **string** | Defines when discount code will be expired. | [optional] 
**usage_limit** | **int** | Usage limit for coupon. | [optional] 
**usage_limit_per_customer** | **int** | Usage limit per customer. | [optional] 
**action_condition_entity** | **string** | Defines entity for action condition. | [optional] 
**action_condition_key** | **string** | Defines entity attribute code for action condition. | [optional] 
**action_condition_operator** | **string** | Defines condition operator. | [optional] 
**action_condition_value** | **string** | Defines condition attribute value/s. Can be comma separated string. | [optional] 
**include_tax** | **boolean** | Indicates whether to apply a discount for taxes. | [optional] [default to false]
**store_id** | **string** | Store Id | [optional] 
**free_cash_on_delivery** | **boolean** | Defines whether the coupon provides free cash on delivery | [optional] 
**customer_id** | **string** | Retrieves orders specified by customer id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


