# WWW::OpenAPIClient::Object::Shipment

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Shipment;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] 
**order_id** | **string** |  | [optional] 
**name** | **string** |  | [optional] 
**warehouse_id** | **string** |  | [optional] 
**shipment_provider** | **string** |  | [optional] 
**tracking_numbers** | [**ARRAY[ShipmentTrackingNumber]**](ShipmentTrackingNumber.md) |  | [optional] 
**created_at** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**modified_time** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**items** | [**ARRAY[ShipmentItem]**](ShipmentItem.md) |  | [optional] 
**is_shipped** | **boolean** |  | [optional] 
**delivered_at** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**additional_fields** | **object** |  | [optional] 
**custom_fields** | **object** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


