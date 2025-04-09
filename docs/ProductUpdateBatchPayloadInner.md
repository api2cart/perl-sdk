# WWW::OpenAPIClient::Object::ProductUpdateBatchPayloadInner

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ProductUpdateBatchPayloadInner;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | 
**name** | **string** |  | [optional] 
**description** | **string** |  | [optional] 
**short_description** | **string** |  | [optional] 
**sku** | **string** |  | [optional] 
**model** | **string** |  | [optional] 
**price** | **double** |  | [optional] 
**special_price** | **double** |  | [optional] 
**sprice_create** | **string** |  | [optional] 
**sprice_expire** | **string** |  | [optional] 
**cost_price** | **double** |  | [optional] 
**old_price** | **double** |  | [optional] 
**fixed_cost_shipping_price** | **double** |  | [optional] 
**advanced_prices** | [**ARRAY[ProductUpdateBatchPayloadInnerAdvancedPricesInner]**](ProductUpdateBatchPayloadInnerAdvancedPricesInner.md) | If an empty array is passed, all entries will be deleted when the &#39;nested_items_update_behaviour&#39; parameter is set to &#39;replace&#39;. | [optional] 
**quantity** | **double** |  | [optional] 
**increase_quantity** | **double** |  | [optional] 
**reduce_quantity** | **double** |  | [optional] 
**reserve_quantity** | **double** |  | [optional] 
**store_id** | **string** |  | [optional] 
**lang_id** | **string** |  | [optional] 
**status** | **string** |  | [optional] 
**type** | **string** |  | [optional] 
**condition** | **string** |  | [optional] 
**visible** | **string** |  | [optional] 
**available_for_view** | **boolean** |  | [optional] 
**available_for_sale** | **boolean** |  | [optional] 
**avail_from** | **string** |  | [optional] 
**weight** | **double** |  | [optional] 
**length** | **double** |  | [optional] 
**width** | **double** |  | [optional] 
**height** | **double** |  | [optional] 
**dimensions_unit** | **string** |  | [optional] 
**weight_unit** | **string** |  | [optional] 
**manage_stock** | **boolean** |  | [optional] 
**in_stock** | **boolean** |  | [optional] 
**backorder_status** | **string** |  | [optional] 
**is_free_shipping** | **boolean** |  | [optional] 
**is_virtual** | **boolean** |  | [optional] 
**taxable** | **boolean** |  | [optional] 
**downloadable** | **boolean** |  | [optional] 
**warehouse_id** | **string** |  | [optional] 
**tax_class_id** | **string** |  | [optional] 
**categories_ids** | **ARRAY[string]** |  | [optional] 
**meta_title** | **string** |  | [optional] 
**meta_description** | **string** |  | [optional] 
**meta_keywords** | **ARRAY[string]** |  | [optional] 
**url** | **string** |  | [optional] 
**seo_url** | **string** |  | [optional] 
**manufacturer** | **string** |  | [optional] 
**manufacturer_id** | **string** |  | [optional] 
**mpn** | **string** |  | [optional] 
**gtin** | **string** |  | [optional] 
**upc** | **string** |  | [optional] 
**isbn** | **string** |  | [optional] 
**ean** | **string** |  | [optional] 
**barcode** | **string** |  | [optional] 
**images** | [**ARRAY[ProductUpdateBatchPayloadInnerImagesInner]**](ProductUpdateBatchPayloadInnerImagesInner.md) | Property &#39;nested_items_update_behaviour&#39; does not apply. Specified items will be added to existing product images | [optional] 
**related_products_ids** | **ARRAY[string]** | If an empty array is passed, all entries will be deleted when the &#39;nested_items_update_behaviour&#39; parameter is set to &#39;replace&#39;. | [optional] 
**up_sell_products_ids** | **ARRAY[string]** | If an empty array is passed, all entries will be deleted when the &#39;nested_items_update_behaviour&#39; parameter is set to &#39;replace&#39;. | [optional] 
**cross_sell_products_ids** | **ARRAY[string]** | If an empty array is passed, all entries will be deleted when the &#39;nested_items_update_behaviour&#39; parameter is set to &#39;replace&#39;. | [optional] 
**tags** | **ARRAY[string]** |  | [optional] 
**search_keywords** | **ARRAY[string]** |  | [optional] 
**harmonized_system_code** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


