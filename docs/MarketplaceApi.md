# WWW::OpenAPIClient::MarketplaceApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MarketplaceApi;
```

All URIs are relative to *https://api.api2cart.local.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketplace_product_find**](MarketplaceApi.md#marketplace_product_find) | **GET** /marketplace.product.find.json | marketplace.product.find


# **marketplace_product_find**
> ModelResponseMarketplaceProductFind marketplace_product_find(count => $count, page_cursor => $page_cursor, keyword => $keyword, categories_ids => $categories_ids, store_id => $store_id, asin => $asin, ean => $ean, gtin => $gtin, upc => $upc, mpn => $mpn, isbn => $isbn, response_fields => $response_fields, params => $params, exclude => $exclude)

marketplace.product.find

Search product in global catalog.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MarketplaceApi;
my $api_instance = WWW::OpenAPIClient::MarketplaceApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $page_cursor = ; # string | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
my $keyword = T-shirt; # string | Defines search keyword
my $categories_ids = 23,56; # string | Defines product add that is specified by comma-separated categories id
my $store_id = 1; # string | Store Id
my $asin = 97703178470; # string | Amazon Standard Identification Number.
my $ean = 5901234123457; # string | European Article Number. An EAN is a unique 8 or 13-digit identifier that many industries (such as book publishers) use to identify products.
my $gtin = 12345678912345; # string | Global Trade Item Number. An GTIN is an identifier for trade items.
my $upc = 9770317847001; # string | Universal Product Code. A UPC (UPC-A) is a commonly used identifer for many different products.
my $mpn = 9770317847001; # string | Manufacturer Part Number. A MPN is an identifier of a particular part design or material used.
my $isbn = 9783161484100; # string | International Standard Book Number. An ISBN is a unique identifier for books.
my $response_fields = {result}; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $params = id,model,price,images; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = false; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->marketplace_product_find(count => $count, page_cursor => $page_cursor, keyword => $keyword, categories_ids => $categories_ids, store_id => $store_id, asin => $asin, ean => $ean, gtin => $gtin, upc => $upc, mpn => $mpn, isbn => $isbn, response_fields => $response_fields, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MarketplaceApi->marketplace_product_find: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **string**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **keyword** | **string**| Defines search keyword | [optional] 
 **categories_ids** | **string**| Defines product add that is specified by comma-separated categories id | [optional] 
 **store_id** | **string**| Store Id | [optional] 
 **asin** | **string**| Amazon Standard Identification Number. | [optional] 
 **ean** | **string**| European Article Number. An EAN is a unique 8 or 13-digit identifier that many industries (such as book publishers) use to identify products. | [optional] 
 **gtin** | **string**| Global Trade Item Number. An GTIN is an identifier for trade items. | [optional] 
 **upc** | **string**| Universal Product Code. A UPC (UPC-A) is a commonly used identifer for many different products. | [optional] 
 **mpn** | **string**| Manufacturer Part Number. A MPN is an identifier of a particular part design or material used. | [optional] 
 **isbn** | **string**| International Standard Book Number. An ISBN is a unique identifier for books. | [optional] 
 **response_fields** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;force_all&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseMarketplaceProductFind**](ModelResponseMarketplaceProductFind.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

