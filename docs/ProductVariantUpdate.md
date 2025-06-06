# WWW::OpenAPIClient::Object::ProductVariantUpdate

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ProductVariantUpdate;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Defines variant update specified by variant id | [optional] 
**product_id** | **string** | Defines product&#39;s id where the variant has to be updated | [optional] 
**store_id** | **string** | Defines store id where the variant should be found | [optional] 
**lang_id** | **string** | Language id | [optional] 
**options** | [**ARRAY[ProductVariantUpdateOptionsInner]**](ProductVariantUpdateOptionsInner.md) | Defines variant&#39;s options list | [optional] 
**name** | **string** | Defines variant&#39;s name that has to be updated | [optional] 
**description** | **string** | Specifies variant&#39;s description | [optional] 
**short_description** | **string** | Defines short description | [optional] 
**model** | **string** | Specifies variant&#39;s model that has to be added | [optional] 
**sku** | **string** | Defines new product&#39;s variant sku | [optional] 
**visible** | **string** | Set visibility status | [optional] 
**status** | **string** | Defines product variant&#39;s status | [optional] 
**backorder_status** | **string** | Set backorder status | [optional] 
**available_for_sale** | **boolean** | Specifies the set of visible/invisible product&#39;s variants for sale | [optional] [default to true]
**avail** | **boolean** | Defines category&#39;s visibility status | [optional] [default to true]
**is_default** | **boolean** | Defines as a default variant | [optional] 
**is_free_shipping** | **boolean** | Specifies variant&#39;s free shipping flag that has to be added | [optional] 
**taxable** | **boolean** | Specifies whether a tax is charged | [optional] [default to true]
**tax_class_id** | **string** | Defines tax classes where entity has to be added | [optional] 
**is_virtual** | **boolean** | Defines whether the product is virtual | [optional] [default to false]
**manage_stock** | **boolean** | Defines inventory tracking for product variant | [optional] 
**in_stock** | **boolean** | Set stock status | [optional] 
**warehouse_id** | **string** | This parameter is used for selecting a warehouse where you need to set/modify a product quantity. | [optional] 
**reserve_quantity** | **double** | This parameter allows to reserve/unreserve product variants quantity. | [optional] 
**quantity** | **double** | Defines new products&#39; variants quantity | [optional] 
**increase_quantity** | **double** | Defines the incremental changes in product quantity | [optional] [default to 0]
**reduce_quantity** | **double** | Defines the decrement changes in product quantity | [optional] [default to 0]
**price** | **double** | Defines new product&#39;s variant price | [optional] 
**special_price** | **double** | Defines new product&#39;s variant special price | [optional] 
**retail_price** | **double** | Defines new product&#39;s retail price | [optional] 
**old_price** | **double** | Defines product&#39;s old price | [optional] 
**cost_price** | **double** | Defines new product&#39;s cost price | [optional] 
**fixed_cost_shipping_price** | **double** | Specifies fixed cost shipping price | [optional] 
**sprice_create** | **string** | Defines the date of special price creation | [optional] 
**sprice_expire** | **string** | Defines the term of special price offer duration | [optional] 
**weight** | **double** | Weight | [optional] [default to 0]
**barcode** | **string** | A barcode is a unique code composed of numbers used as a product identifier. | [optional] 
**width** | **double** | Defines product&#39;s width | [optional] 
**weight_unit** | **string** | Weight Unit | [optional] 
**height** | **double** | Defines product&#39;s height | [optional] 
**length** | **double** | Defines product&#39;s length | [optional] 
**gtin** | **string** | Global Trade Item Number. An GTIN is an identifier for trade items. | [optional] 
**upc** | **string** | Universal Product Code. A UPC (UPC-A) is a commonly used identifer for many different products. | [optional] 
**mpn** | **string** | Manufacturer Part Number. A MPN is an identifier of a particular part design or material used. | [optional] 
**ean** | **string** | European Article Number. An EAN is a unique 8 or 13-digit identifier that many industries (such as book publishers) use to identify products. | [optional] 
**isbn** | **string** | International Standard Book Number. An ISBN is a unique identifier for books. | [optional] 
**harmonized_system_code** | **string** | Harmonized System Code. An HSC is a 6-digit identifier that allows participating countries to classify traded goods on a common basis for customs purposes | [optional] 
**country_of_origin** | **string** | The country where the inventory item was made | [optional] 
**meta_title** | **string** | Defines unique meta title for each entity | [optional] 
**meta_description** | **string** | Defines unique meta description of a entity | [optional] 
**meta_keywords** | **string** | Defines unique meta keywords for each entity | [optional] 
**reindex** | **boolean** | Is reindex required | [optional] [default to true]
**clear_cache** | **boolean** | Is cache clear required | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


