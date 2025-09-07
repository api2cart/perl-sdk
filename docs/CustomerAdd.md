# WWW::OpenAPIClient::Object::CustomerAdd

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CustomerAdd;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **string** | Defines customer&#39;s email | 
**first_name** | **string** | Defines customer&#39;s first name | [optional] 
**last_name** | **string** | Defines customer&#39;s last name | [optional] 
**password** | **string** | Defines customer&#39;s unique password | [optional] 
**group** | **string** | Defines the group where the customer | [optional] 
**group_id** | **string** | Customer group_id | [optional] 
**group_ids** | **string** | Groups that will be assigned to a customer | [optional] 
**status** | **string** | Defines customer&#39;s status | [optional] [default to &#39;enabled&#39;]
**created_time** | **string** | Entity&#39;s date creation | [optional] 
**modified_time** | **string** | Entity&#39;s date modification | [optional] 
**login** | **string** | Specifies customer&#39;s login name | [optional] 
**last_login** | **string** | Defines customer&#39;s last login time | [optional] 
**birth_day** | **string** | Defines customer&#39;s birthday | [optional] 
**news_letter_subscription** | **boolean** | Defines whether the newsletter subscription is available for the user | [optional] 
**consents** | [**ARRAY[CustomerAddConsentsInner]**](CustomerAddConsentsInner.md) | Defines consents to notifications | [optional] 
**gender** | **string** | Defines customer&#39;s gender | [optional] 
**website** | **string** | Link to customer website | [optional] 
**fax** | **string** | Defines customer&#39;s fax | [optional] 
**company** | **string** | Defines customer&#39;s company | [optional] 
**phone** | **string** | Defines customer&#39;s phone number | [optional] 
**note** | **string** | The customer note. | [optional] 
**country** | **string** | Specifies ISO code or name of country | [optional] 
**store_id** | **string** | Store Id | [optional] 
**address** | [**ARRAY[CustomerAddAddressInner]**](CustomerAddAddressInner.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


