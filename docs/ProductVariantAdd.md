# WWW::OpenAPIClient::Object::ProductVariantAdd

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ProductVariantAdd;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **string** | Defines product&#39;s id where the variant has to be added | [optional] 
**attributes** | [**ARRAY[ProductVariantAddAttributesInner]**](ProductVariantAddAttributesInner.md) | Defines variant&#39;s attributes list | [optional] 
**name** | **string** | Defines variant&#39;s name that has to be added | [optional] 
**model** | **string** | Specifies variant&#39;s model that has to be added | 
**description** | **string** | Specifies variant&#39;s description | [optional] 
**short_description** | **string** | Defines short description | [optional] 
**available_for_view** | **boolean** | Specifies the set of visible/invisible product&#39;s variants for users | [optional] [default to true]
**available_for_sale** | **boolean** | Specifies the set of visible/invisible product&#39;s variants for sale | [optional] [default to true]
**is_virtual** | **boolean** | Defines whether the product is virtual | [optional] [default to false]
**is_default** | **boolean** | Defines as a default variant | [optional] 
**store_id** | **string** | Add variants specified by store id | [optional] 
**stores_ids** | **string** | Assign variant to the stores that is specified by comma-separated stores&#39; id | [optional] 
**lang_id** | **string** | Language id | [optional] 
**price** | **double** | Defines new product&#39;s variant price | [optional] 
**old_price** | **double** | Defines product&#39;s old price | [optional] 
**cost_price** | **double** | Defines new product&#39;s cost price | [optional] 
**special_price** | **double** | Specifies variant&#39;s model that has to be added | [optional] 
**sprice_create** | **string** | Defines the date of special price creation | [optional] 
**sprice_modified** | **string** | Defines the date of special price modification | [optional] 
**sprice_expire** | **string** | Defines the term of special price offer duration | [optional] 
**tier_prices** | [**ARRAY[ProductAddTierPricesInner]**](ProductAddTierPricesInner.md) | Defines product&#39;s tier prices | [optional] 
**quantity** | **double** | Defines product variant&#39;s quantity that has to be added | [optional] [default to 0]
**warehouse_id** | **string** | This parameter is used for selecting a warehouse where you need to set/modify a product quantity. | [optional] 
**in_stock** | **boolean** | Set stock status | [optional] 
**backorder_status** | **string** | Set backorder status | [optional] 
**manage_stock** | **boolean** | Defines inventory tracking for product variant | [optional] 
**weight** | **double** | Weight | [optional] [default to 0]
**width** | **double** | Defines product&#39;s width | [optional] 
**height** | **double** | Defines product&#39;s height | [optional] 
**length** | **double** | Defines product&#39;s length | [optional] 
**weight_unit** | **string** | Weight Unit | [optional] 
**sku** | **string** | Defines variant&#39;s sku that has to be added | [optional] 
**barcode** | **string** | A barcode is a unique code composed of numbers used as a product identifier. | [optional] 
**gtin** | **string** | Global Trade Item Number. An GTIN is an identifier for trade items. | [optional] 
**upc** | **string** | Universal Product Code. A UPC (UPC-A) is a commonly used identifer for many different products. | [optional] 
**ean** | **string** | European Article Number. An EAN is a unique 8 or 13-digit identifier that many industries (such as book publishers) use to identify products. | [optional] 
**mpn** | **string** | Manufacturer Part Number. A MPN is an identifier of a particular part design or material used. | [optional] 
**isbn** | **string** | International Standard Book Number. An ISBN is a unique identifier for books. | [optional] 
**manufacturer** | **string** | Specifies the product variant&#39;s manufacturer | [optional] 
**created_at** | **string** | Defines the date of entity creation | [optional] 
**meta_title** | **string** | Defines unique meta title for each entity | [optional] 
**meta_keywords** | **string** | Defines unique meta keywords for each entity | [optional] 
**meta_description** | **string** | Defines unique meta description of a entity | [optional] 
**url** | **string** | Defines unique product variant&#39;s URL | [optional] 
**tax_class_id** | **string** | Defines tax classes where entity has to be added | [optional] 
**taxable** | **boolean** | Specifies whether a tax is charged | [optional] [default to true]
**fixed_cost_shipping_price** | **double** | Specifies fixed cost shipping price | [optional] 
**is_free_shipping** | **boolean** | Specifies variant&#39;s free shipping flag that has to be added | [optional] 
**country_of_origin** | **string** | The country where the inventory item was made | [optional] 
**harmonized_system_code** | **string** | Harmonized System Code. An HSC is a 6-digit identifier that allows participating countries to classify traded goods on a common basis for customs purposes | [optional] 
**marketplace_item_properties** | **string** | String containing the JSON representation of the supplied data | [optional] 
**clear_cache** | **boolean** | Is cache clear required | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


