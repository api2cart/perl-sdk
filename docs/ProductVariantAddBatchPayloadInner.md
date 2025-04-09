# WWW::OpenAPIClient::Object::ProductVariantAddBatchPayloadInner

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ProductVariantAddBatchPayloadInner;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **string** |  | 
**combination** | [**ARRAY[ProductVariantAddBatchPayloadInnerCombinationInner]**](ProductVariantAddBatchPayloadInnerCombinationInner.md) | A unique combination that contains an array of options and their values, which form a variation. | 
**name** | **string** |  | [optional] 
**description** | **string** |  | [optional] 
**short_description** | **string** |  | [optional] 
**sku** | **string** |  | 
**model** | **string** |  | [optional] 
**price** | **double** |  | [optional] 
**old_price** | **double** |  | [optional] 
**cost_price** | **double** |  | [optional] 
**special_price** | **double** |  | [optional] 
**sprice_create** | **string** |  | [optional] 
**sprice_expire** | **string** |  | [optional] 
**advanced_prices** | [**ARRAY[ProductUpdateBatchPayloadInnerAdvancedPricesInner]**](ProductUpdateBatchPayloadInnerAdvancedPricesInner.md) |  | [optional] 
**meta_title** | **double** |  | [optional] 
**meta_description** | **double** |  | [optional] 
**meta_keywords** | **ARRAY[string]** |  | [optional] 
**categories_ids** | **ARRAY[string]** |  | [optional] 
**stores_ids** | **ARRAY[string]** |  | [optional] 
**weight** | **double** |  | [optional] 
**width** | **double** |  | [optional] 
**height** | **double** |  | [optional] 
**length** | **double** |  | [optional] 
**weight_unit** | **string** |  | [optional] 
**warehouse_id** | **string** |  | [optional] 
**quantity** | **double** |  | [optional] 
**manage_stock** | **boolean** |  | [optional] 
**in_stock** | **boolean** |  | [optional] 
**store_id** | **string** |  | [optional] 
**lang_id** | **string** |  | [optional] 
**tax_class_id** | **string** |  | [optional] 
**backorder_status** | **string** |  | [optional] 
**status** | **string** |  | [optional] 
**visible** | **string** |  | [optional] 
**is_virtual** | **boolean** |  | [optional] 
**downloadable** | **boolean** |  | [optional] 
**is_default** | **boolean** |  | [optional] 
**upc** | **string** |  | [optional] 
**isbn** | **string** |  | [optional] 
**mpn** | **string** |  | [optional] 
**ean** | **string** |  | [optional] 
**barcode** | **string** |  | [optional] 
**available_for_sale** | **boolean** |  | [optional] 
**is_free_shipping** | **boolean** |  | [optional] 
**taxable** | **boolean** |  | [optional] 
**seo_url** | **string** |  | [optional] 
**manufacturer_id** | **string** |  | [optional] 
**harmonized_system_code** | **string** |  | [optional] 
**marketplace_item_properties** | **object** |  | [optional] 
**images** | [**ARRAY[ProductAddBatchPayloadInnerImagesInner]**](ProductAddBatchPayloadInnerImagesInner.md) |  | [optional] 
**product_images_ids** | **ARRAY[string]** |  | [optional] 
**related_products_ids** | **ARRAY[string]** |  | [optional] 
**up_sell_products_ids** | **ARRAY[string]** |  | [optional] 
**cross_sell_products_ids** | **ARRAY[string]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


