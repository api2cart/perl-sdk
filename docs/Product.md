# WWW::OpenAPIClient::Object::Product

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Product;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] 
**type** | **string** |  | [optional] 
**u_model** | **string** |  | [optional] 
**u_sku** | **string** |  | [optional] 
**name** | **string** |  | [optional] 
**description** | **string** |  | [optional] 
**short_description** | **string** |  | [optional] 
**price** | **double** |  | [optional] 
**advanced_price** | [**ARRAY[ProductAdvancedPrice]**](ProductAdvancedPrice.md) |  | [optional] 
**cost_price** | **double** |  | [optional] 
**quantity** | **double** |  | [optional] 
**inventory** | [**ARRAY[ProductInventory]**](ProductInventory.md) |  | [optional] 
**group_items** | [**ARRAY[ProductGroupItem]**](ProductGroupItem.md) |  | [optional] 
**u_brand_id** | **string** |  | [optional] 
**u_brand** | **string** |  | [optional] 
**categories_ids** | **ARRAY[string]** |  | [optional] 
**stores_ids** | **ARRAY[string]** |  | [optional] 
**url** | **string** |  | [optional] 
**seo_url** | **string** |  | [optional] 
**meta_title** | **string** |  | [optional] 
**meta_keywords** | **string** |  | [optional] 
**meta_description** | **string** |  | [optional] 
**avail_sale** | **boolean** |  | [optional] 
**avail_view** | **boolean** |  | [optional] 
**is_virtual** | **boolean** |  | [optional] 
**is_downloadable** | **boolean** |  | [optional] 
**weight** | **double** |  | [optional] 
**weight_unit** | **string** |  | [optional] 
**sort_order** | **int** |  | [optional] 
**in_stock** | **boolean** |  | [optional] 
**backorders** | **string** |  | [optional] 
**manage_stock** | **string** |  | [optional] 
**is_stock_managed** | **boolean** |  | [optional] 
**on_sale** | **boolean** |  | [optional] 
**create_at** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**modified_at** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**tax_class_id** | **string** |  | [optional] 
**special_price** | [**SpecialPrice**](SpecialPrice.md) |  | [optional] 
**tier_price** | [**ARRAY[ProductTierPrice]**](ProductTierPrice.md) |  | [optional] 
**group_price** | [**ARRAY[ProductGroupPrice]**](ProductGroupPrice.md) |  | [optional] 
**images** | [**ARRAY[Image]**](Image.md) |  | [optional] 
**product_options** | [**ARRAY[ProductOption]**](ProductOption.md) |  | [optional] 
**u_upc** | **string** |  | [optional] 
**u_mpn** | **string** |  | [optional] 
**u_gtin** | **string** |  | [optional] 
**u_isbn** | **string** |  | [optional] 
**u_ean** | **string** |  | [optional] 
**related_products_ids** | **ARRAY[string]** |  | [optional] 
**up_sell_products_ids** | **ARRAY[string]** |  | [optional] 
**cross_sell_products_ids** | **ARRAY[string]** |  | [optional] 
**dimensions_unit** | **string** |  | [optional] 
**width** | **double** |  | [optional] 
**height** | **double** |  | [optional] 
**length** | **double** |  | [optional] 
**discounts** | [**ARRAY[Discount]**](Discount.md) |  | [optional] 
**additional_fields** | **object** |  | [optional] 
**custom_fields** | **object** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


