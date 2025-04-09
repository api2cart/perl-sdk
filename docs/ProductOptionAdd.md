# WWW::OpenAPIClient::Object::ProductOptionAdd

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ProductOptionAdd;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Defines option&#39;s name | 
**type** | **string** | Defines option&#39;s type that has to be added | 
**product_id** | **string** | Defines product id where the option should be added | [optional] 
**default_option_value** | **string** | Defines default option value that has to be added | [optional] 
**option_values** | **string** | Defines option values that has to be added | [optional] 
**description** | **string** | Defines option&#39;s description | [optional] 
**avail** | **boolean** | Defines whether the option is available | [optional] [default to true]
**sort_order** | **int** | Sort number in the list | [optional] [default to 0]
**required** | **boolean** | Defines if the option is required | [optional] [default to false]
**values** | [**ARRAY[ProductOptionAddValuesInner]**](ProductOptionAddValuesInner.md) | An array of option values.&lt;/b&gt; | [optional] 
**clear_cache** | **boolean** | Is cache clear required | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


