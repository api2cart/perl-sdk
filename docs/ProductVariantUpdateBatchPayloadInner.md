# WWW::OpenAPIClient::Object::ProductVariantUpdateBatchPayloadInner

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ProductVariantUpdateBatchPayloadInner;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | 
**product_id** | **string** |  | 
**name** | **string** |  | [optional] 
**description** | **string** |  | [optional] 
**short_description** | **string** |  | [optional] 
**sku** | **string** |  | [optional] 
**upc** | **string** |  | [optional] 
**mpn** | **string** |  | [optional] 
**gtin** | **string** |  | [optional] 
**isbn** | **string** |  | [optional] 
**status** | **string** |  | [optional] 
**price** | **double** |  | [optional] 
**special_price** | **double** |  | [optional] 
**cost_price** | **double** |  | [optional] 
**retail_price** | **double** |  | [optional] 
**advanced_prices** | [**ARRAY[ProductUpdateBatchPayloadInnerAdvancedPricesInner]**](ProductUpdateBatchPayloadInnerAdvancedPricesInner.md) | If an empty array is passed, all entries will be deleted when the &#39;nested_items_update_behaviour&#39; parameter is set to &#39;replace&#39;. | [optional] 
**quantity** | **double** |  | [optional] 
**reserve_quantity** | **double** |  | [optional] 
**increase_quantity** | **double** |  | [optional] 
**reduce_quantity** | **double** |  | [optional] 
**warehouse_id** | **string** |  | [optional] 
**manufacturer_id** | **string** |  | [optional] 
**weight** | **double** |  | [optional] 
**height** | **double** |  | [optional] 
**length** | **double** |  | [optional] 
**width** | **double** |  | [optional] 
**store_id** | **string** |  | [optional] 
**lang_id** | **string** |  | [optional] 
**tax_class_id** | **string** |  | [optional] 
**backorder_status** | **string** |  | [optional] 
**visible** | **string** |  | [optional] 
**is_default** | **boolean** |  | [optional] 
**in_stock** | **boolean** |  | [optional] 
**is_virtual** | **boolean** |  | [optional] 
**downloadable** | **boolean** |  | [optional] 
**manage_stock** | **boolean** |  | [optional] 
**is_free_shipping** | **boolean** |  | [optional] 
**seo_url** | **string** |  | [optional] 
**meta_title** | **string** |  | [optional] 
**meta_description** | **string** |  | [optional] 
**meta_keywords** | **ARRAY[string]** |  | [optional] 
**categories_ids** | **ARRAY[string]** | If an empty array is passed, all entries will be deleted when the &#39;nested_items_update_behaviour&#39; parameter is set to &#39;replace&#39;. | [optional] 
**stores_ids** | **ARRAY[string]** |  | [optional] 
**images** | [**ARRAY[ProductAddBatchPayloadInnerImagesInner]**](ProductAddBatchPayloadInnerImagesInner.md) | The passed items will completely replace the original items | [optional] 
**product_images_ids** | **ARRAY[string]** |  | [optional] 
**related_products_ids** | **ARRAY[string]** | If an empty array is passed, all entries will be deleted when the &#39;nested_items_update_behaviour&#39; parameter is set to &#39;replace&#39;. | [optional] 
**up_sell_products_ids** | **ARRAY[string]** | If an empty array is passed, all entries will be deleted when the &#39;nested_items_update_behaviour&#39; parameter is set to &#39;replace&#39;. | [optional] 
**cross_sell_products_ids** | **ARRAY[string]** | If an empty array is passed, all entries will be deleted when the &#39;nested_items_update_behaviour&#39; parameter is set to &#39;replace&#39;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


