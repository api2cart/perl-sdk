# WWW::OpenAPIClient::Object::CustomerUpdate

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CustomerUpdate;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Entity id | [optional] 
**group_id** | **string** | Customer group_id | [optional] 
**group_ids** | **string** | Groups that will be assigned to a customer | [optional] 
**group** | **string** | Defines the group where the customer | [optional] 
**email** | **string** | Defines customer&#39;s email | [optional] 
**phone** | **string** | Defines customer&#39;s phone number | [optional] 
**first_name** | **string** | Defines customer&#39;s first name | [optional] 
**last_name** | **string** | Defines customer&#39;s last name | [optional] 
**birth_day** | **string** | Defines customer&#39;s birthday | [optional] 
**news_letter_subscription** | **boolean** | Defines whether the newsletter subscription is available for the user | [optional] 
**consents** | [**ARRAY[CustomerAddConsentsInner]**](CustomerAddConsentsInner.md) | Defines consents to notifications | [optional] 
**tags** | **string** | Customer tags | [optional] 
**gender** | **string** | Defines customer&#39;s gender | [optional] 
**note** | **string** | The customer note. | [optional] 
**status** | **string** | Defines customer&#39;s status | [optional] 
**store_id** | **string** | Store Id | [optional] 
**address** | [**ARRAY[CustomerUpdateAddressInner]**](CustomerUpdateAddressInner.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


