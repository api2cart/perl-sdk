# WWW::OpenAPIClient::Object::OrderShipmentTrackingAdd

## Load the model package
```perl
use WWW::OpenAPIClient::Object::OrderShipmentTrackingAdd;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **string** | Defines the order id | [optional] 
**shipment_id** | **string** | Shipment id indicates the number of delivery | 
**carrier_id** | **string** | Defines tracking carrier id | [optional] 
**store_id** | **string** | Store Id | [optional] 
**tracking_provider** | **string** | Defines name of the company which provides shipment tracking | [optional] 
**tracking_number** | **string** | Defines tracking number | 
**tracking_link** | **string** | Defines custom tracking link | [optional] 
**send_notifications** | **boolean** | Send notifications to customer after tracking was created | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


