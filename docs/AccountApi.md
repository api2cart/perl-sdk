# WWW::OpenAPIClient::AccountApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::AccountApi;
```

All URIs are relative to *https://api.api2cart.local.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_cart_add**](AccountApi.md#account_cart_add) | **POST** /account.cart.add.json | account.cart.add
[**account_cart_list**](AccountApi.md#account_cart_list) | **GET** /account.cart.list.json | account.cart.list
[**account_config_update**](AccountApi.md#account_config_update) | **PUT** /account.config.update.json | account.config.update
[**account_failed_webhooks**](AccountApi.md#account_failed_webhooks) | **GET** /account.failed_webhooks.json | account.failed_webhooks
[**account_supported_platforms**](AccountApi.md#account_supported_platforms) | **GET** /account.supported_platforms.json | account.supported_platforms


# **account_cart_add**
> AccountCartAdd200Response account_cart_add(account_cart_add => $account_cart_add)

account.cart.add

Use this method to automate the process of connecting stores to API2Cart. The list of parameters will vary depending on the platform. To get a list of parameters that are specific to a particular shopping platform, you need to execute the account.supported_platforms.json method.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AccountApi;
my $api_instance = WWW::OpenAPIClient::AccountApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $account_cart_add = WWW::OpenAPIClient::Object::AccountCartAdd->new(); # AccountCartAdd | 

eval {
    my $result = $api_instance->account_cart_add(account_cart_add => $account_cart_add);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->account_cart_add: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_cart_add** | [**AccountCartAdd**](AccountCartAdd.md)|  | 

### Return type

[**AccountCartAdd200Response**](AccountCartAdd200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **account_cart_list**
> AccountCartList200Response account_cart_list(store_url => $store_url, store_key => $store_key, request_from_date => $request_from_date, request_to_date => $request_to_date, params => $params, exclude => $exclude)

account.cart.list

This method lets you get a list of online stores connected to your API2Cart account. You can get the number of API requests to each store if you specify a period using parameters (request_from_date, request_to_date). The total_calls field is displayed only if there are parameters (request_from_date, request_to_date).

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AccountApi;
my $api_instance = WWW::OpenAPIClient::AccountApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $store_url = http://mystore.com; # string | A web address of a store
my $store_key = ab37fc230bc5df63a5be1b11220949be; # string | Find store by store key
my $request_from_date = 2010-07-29; # string | Retrieve entities from their creation date
my $request_to_date = 2100-08-29; # string | Retrieve entities to their creation date
my $params = url,store_key; # string | Set this parameter in order to choose which entity fields you want to retrieve
my $exclude = url,store_key; # string | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all

eval {
    my $result = $api_instance->account_cart_list(store_url => $store_url, store_key => $store_key, request_from_date => $request_from_date, request_to_date => $request_to_date, params => $params, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->account_cart_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_url** | **string**| A web address of a store | [optional] 
 **store_key** | **string**| Find store by store key | [optional] 
 **request_from_date** | **string**| Retrieve entities from their creation date | [optional] 
 **request_to_date** | **string**| Retrieve entities to their creation date | [optional] 
 **params** | **string**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to &#39;force_all&#39;]
 **exclude** | **string**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**AccountCartList200Response**](AccountCartList200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **account_config_update**
> AccountConfigUpdate200Response account_config_update(replace_parameters => $replace_parameters, new_store_url => $new_store_url, new_store_key => $new_store_key, bridge_url => $bridge_url, store_root => $store_root, db_tables_prefix => $db_tables_prefix, user_agent => $user_agent, _3dcart_private_key => $_3dcart_private_key, _3dcart_access_token => $_3dcart_access_token, _3dcartapi_api_key => $_3dcartapi_api_key, amazon_sp_client_id => $amazon_sp_client_id, amazon_sp_client_secret => $amazon_sp_client_secret, amazon_sp_refresh_token => $amazon_sp_refresh_token, amazon_sp_aws_region => $amazon_sp_aws_region, amazon_sp_api_environment => $amazon_sp_api_environment, amazon_seller_id => $amazon_seller_id, aspdotnetstorefront_api_user => $aspdotnetstorefront_api_user, aspdotnetstorefront_api_pass => $aspdotnetstorefront_api_pass, bigcommerceapi_admin_account => $bigcommerceapi_admin_account, bigcommerceapi_api_path => $bigcommerceapi_api_path, bigcommerceapi_api_key => $bigcommerceapi_api_key, bigcommerceapi_client_id => $bigcommerceapi_client_id, bigcommerceapi_access_token => $bigcommerceapi_access_token, bigcommerceapi_context => $bigcommerceapi_context, bol_api_key => $bol_api_key, bol_api_secret => $bol_api_secret, bol_retailer_id => $bol_retailer_id, demandware_client_id => $demandware_client_id, demandware_api_password => $demandware_api_password, demandware_user_name => $demandware_user_name, demandware_user_password => $demandware_user_password, ebay_client_id => $ebay_client_id, ebay_client_secret => $ebay_client_secret, ebay_runame => $ebay_runame, ebay_access_token => $ebay_access_token, ebay_refresh_token => $ebay_refresh_token, ebay_environment => $ebay_environment, ebay_site_id => $ebay_site_id, ecwid_acess_token => $ecwid_acess_token, ecwid_store_id => $ecwid_store_id, lazada_app_id => $lazada_app_id, lazada_app_secret => $lazada_app_secret, lazada_refresh_token => $lazada_refresh_token, lazada_region => $lazada_region, etsy_keystring => $etsy_keystring, etsy_shared_secret => $etsy_shared_secret, etsy_access_token => $etsy_access_token, etsy_token_secret => $etsy_token_secret, etsy_client_id => $etsy_client_id, etsy_refresh_token => $etsy_refresh_token, facebook_app_id => $facebook_app_id, facebook_app_secret => $facebook_app_secret, facebook_access_token => $facebook_access_token, facebook_business_id => $facebook_business_id, neto_api_key => $neto_api_key, neto_api_username => $neto_api_username, shopline_access_token => $shopline_access_token, shopline_app_key => $shopline_app_key, shopline_app_secret => $shopline_app_secret, shopline_shared_secret => $shopline_shared_secret, shopify_access_token => $shopify_access_token, shopify_api_key => $shopify_api_key, shopify_api_password => $shopify_api_password, shopify_shared_secret => $shopify_shared_secret, shopee_partner_id => $shopee_partner_id, shopee_partner_key => $shopee_partner_key, shopee_shop_id => $shopee_shop_id, shopee_refresh_token => $shopee_refresh_token, shopee_region => $shopee_region, shopee_environment => $shopee_environment, shoplazza_access_token => $shoplazza_access_token, shoplazza_shared_secret => $shoplazza_shared_secret, miva_access_token => $miva_access_token, miva_signature => $miva_signature, shopware_access_key => $shopware_access_key, shopware_api_key => $shopware_api_key, shopware_api_secret => $shopware_api_secret, bigcartel_user_name => $bigcartel_user_name, bigcartel_password => $bigcartel_password, bricklink_consumer_key => $bricklink_consumer_key, bricklink_consumer_secret => $bricklink_consumer_secret, bricklink_token => $bricklink_token, bricklink_token_secret => $bricklink_token_secret, volusion_login => $volusion_login, volusion_password => $volusion_password, walmart_client_id => $walmart_client_id, walmart_client_secret => $walmart_client_secret, walmart_environment => $walmart_environment, walmart_channel_type => $walmart_channel_type, walmart_region => $walmart_region, square_client_id => $square_client_id, square_client_secret => $square_client_secret, square_refresh_token => $square_refresh_token, squarespace_api_key => $squarespace_api_key, squarespace_client_id => $squarespace_client_id, squarespace_client_secret => $squarespace_client_secret, squarespace_access_token => $squarespace_access_token, squarespace_refresh_token => $squarespace_refresh_token, hybris_client_id => $hybris_client_id, hybris_client_secret => $hybris_client_secret, hybris_username => $hybris_username, hybris_password => $hybris_password, hybris_websites => $hybris_websites, lightspeed_api_key => $lightspeed_api_key, lightspeed_api_secret => $lightspeed_api_secret, commercehq_api_key => $commercehq_api_key, commercehq_api_password => $commercehq_api_password, wc_consumer_key => $wc_consumer_key, wc_consumer_secret => $wc_consumer_secret, magento_consumer_key => $magento_consumer_key, magento_consumer_secret => $magento_consumer_secret, magento_access_token => $magento_access_token, magento_token_secret => $magento_token_secret, prestashop_webservice_key => $prestashop_webservice_key, wix_app_id => $wix_app_id, wix_app_secret_key => $wix_app_secret_key, wix_instance_id => $wix_instance_id, wix_refresh_token => $wix_refresh_token, mercado_libre_app_id => $mercado_libre_app_id, mercado_libre_app_secret_key => $mercado_libre_app_secret_key, mercado_libre_refresh_token => $mercado_libre_refresh_token, zid_client_id => $zid_client_id, zid_client_secret => $zid_client_secret, zid_access_token => $zid_access_token, zid_authorization => $zid_authorization, zid_refresh_token => $zid_refresh_token, flipkart_client_id => $flipkart_client_id, flipkart_client_secret => $flipkart_client_secret, allegro_client_id => $allegro_client_id, allegro_client_secret => $allegro_client_secret, allegro_access_token => $allegro_access_token, allegro_refresh_token => $allegro_refresh_token, allegro_environment => $allegro_environment, zoho_client_id => $zoho_client_id, zoho_client_secret => $zoho_client_secret, zoho_refresh_token => $zoho_refresh_token, zoho_region => $zoho_region, tiendanube_user_id => $tiendanube_user_id, tiendanube_access_token => $tiendanube_access_token, tiendanube_client_secret => $tiendanube_client_secret, otto_client_id => $otto_client_id, otto_client_secret => $otto_client_secret, otto_app_id => $otto_app_id, otto_refresh_token => $otto_refresh_token, otto_environment => $otto_environment, otto_access_token => $otto_access_token, tiktokshop_app_key => $tiktokshop_app_key, tiktokshop_app_secret => $tiktokshop_app_secret, tiktokshop_refresh_token => $tiktokshop_refresh_token, tiktokshop_access_token => $tiktokshop_access_token, salla_client_id => $salla_client_id, salla_client_secret => $salla_client_secret, salla_refresh_token => $salla_refresh_token, salla_access_token => $salla_access_token, temu_app_key => $temu_app_key, temu_app_secret => $temu_app_secret, temu_access_token => $temu_access_token, temu_region => $temu_region)

account.config.update

Use this method to automate the change of credentials used to connect online stores. The list of supported parameters differs depending on the platform.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AccountApi;
my $api_instance = WWW::OpenAPIClient::AccountApi->new(

    # Configure API key authorization: StoreKeyAuth
    api_key => {'x-store-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-store-key' => 'Bearer'},
    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $replace_parameters = true; # boolean | Identifies if there is a necessity to replace parameters
my $new_store_url = http://mystore.com; # string | The web address of the store you want to update to connect to API2Cart
my $new_store_key = b636495648de3086f6f57b1bd4be548f; # string | Update store key
my $bridge_url = https://your-store.com/custom/bridge/path/bridge.php; # string | This parameter allows to set up store with custom bridge url (also you must use store_root parameter if a bridge folder is not in the root folder of the store)
my $store_root = /home/www/stores/magento1922; # string | Absolute path to the store root directory (used with \"bridge_url\" parameter)
my $db_tables_prefix = oc_; # string | DB tables prefix
my $user_agent = Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0; # string | This parameter allows you to set your custom user agent, which will be used in requests to the store. Please use it cautiously, as the store's firewall may block specific values.
my $_3dcart_private_key = 7dba81f90bdbe25e7000e73214ca51b; # string | 3DCart Private Key
my $_3dcart_access_token = 4Grr_ZCLNNoSUuhAjesKuchxo9SL; # string | 3DCart Token
my $_3dcartapi_api_key = 82cc921c6a5c67082cc921c6a5c6707e1d6e6862ba3201a; # string | 3DCart API Key
my $amazon_sp_client_id = amzn1.application-oa2-client.11e000e1f47d4998aca3733716d3b5a4; # string | Amazon SP API app client id
my $amazon_sp_client_secret = 2c987428209f235443221255bde064f4bdf8a65165a80f5d22760a83cb; # string | Amazon SP API app client secret
my $amazon_sp_refresh_token = Atzr|IwEBIPUI-bwRTdDgKNQ_g56C30wGqymtx30c9MdDC7Emwmojhs20k5BBG2hHtJiGZ_7OfG7khd1RuQr6KEst4qyWbo_eXi5S_T_VOxzJUuksG1cFOGFpFK-cnhReNzAeZIpZeJT7_ROy1csEFlQfC8FJS3bsbSkkbTz2ZcTN7_7ey0HVlhyfFizgROeSeOI24Wjs9l_KKzZW0jvi_oC2cxlIcyknnHLK6KMNz2rTXqQJWRtlK9xPJDdbcUa5STA8MQru91cxNBpSkZN_cq9OOELhbsIGKD75y7nZ3yJU4uHQC_9iBQQoFm0biKgi-kEQwOhwws8; # string | Amazon SP API OAuth refresh token
my $amazon_sp_aws_region = us-east-1; # string | Amazon AWS Region
my $amazon_sp_api_environment = sandbox; # string | Amazon SP API environment
my $amazon_seller_id = 13P636B2M1N4WR; # string | Amazon Seller ID (Merchant token)
my $aspdotnetstorefront_api_user = admin; # string | It's a AspDotNetStorefront account for which API is available
my $aspdotnetstorefront_api_pass = f6471ef78f72b41849a8b8b67791b0b5; # string | AspDotNetStorefront API Password
my $bigcommerceapi_admin_account = admin; # string | It's a BigCommerce account for which API is enabled
my $bigcommerceapi_api_path = http://mystore.bigcommerce.com/api/v1; # string | BigCommerce API URL
my $bigcommerceapi_api_key = 6b89704cd75738cb0f9f6468d5462aba; # string | Bigcommerce API Key
my $bigcommerceapi_client_id = p1r37bt131z86675nofv9xmhietoe4t; # string | Client ID of the requesting app
my $bigcommerceapi_access_token = igse8e4rdmzkxdi937qe69d59en1imw; # string | Access token authorizing the app to access resources on behalf of a user
my $bigcommerceapi_context = stores/etplnf8o8v; # string | API Path section unique to the store
my $bol_api_key = 51369628-feee-11ed-be56-0242ac120002; # string | Bol API Key
my $bol_api_secret = 8fGzEsbEP5z2MNZubmIil87m-sWzTkj?KDQKrmzmU!fA6aAUNMdKRp7LMWHwE!G37UMfnWByHBGSXJHkAG?QcuYTO2uklv4idIHwUMLHK!OO1yfRlWh!; # string | Bol API Secret
my $bol_retailer_id = 145001; # int | Bol Retailer ID
my $demandware_client_id = b849eb85-v8b9-1dw8-9fe2-97e1d6ffc7b0; # string | Demandware client id
my $demandware_api_password = testpassword; # string | Demandware api password
my $demandware_user_name = admin; # string | Demandware user name
my $demandware_user_password = 12345; # string | Demandware user password
my $ebay_client_id = a9psel85v1wy5faeyjw03y0r; # string | Application ID (AppID).
my $ebay_client_secret = gmz3iz45x2; # string | Shared Secret from eBay application
my $ebay_runame = gmz3iz45x2; # string | The RuName value that eBay assigns to your application.
my $ebay_access_token = v^1.1#i ... AjRV4yNjA=; # string | Used to authenticate API requests.
my $ebay_refresh_token = v^1.1#i ... rAewqVasdA=; # string | Used to renew the access token.
my $ebay_environment = sandbox; # string | eBay environment
my $ebay_site_id = 101; # int | eBay global ID
my $ecwid_acess_token = igse8e4rdmzkxdi937qe69d59en1imw; # string | Access token authorizing the app to access resources on behalf of a user
my $ecwid_store_id = 1; # string | Store Id
my $lazada_app_id = 112577; # string | Lazada App ID
my $lazada_app_secret = er33raICJ79Q5b0EsR9stmRnjE9XQ2WH; # string | Lazada App Secret
my $lazada_refresh_token = EAAPP06rM2n8BO4mZBuMPnu9zS0MaMbN7ue8aUkcxw4zewU337mVVb5br; # string | Lazada Refresh Token
my $lazada_region = Malaysia; # string | Lazada API endpoint Region
my $etsy_keystring = a9psel85v1wy5faeyjw03y0r; # string | Etsy keystring
my $etsy_shared_secret = gmz3iz45x2; # string | Etsy shared secret
my $etsy_access_token = igse8e4rdmzkxdi937qe69d59en1imw; # string | Access token authorizing the app to access resources on behalf of a user
my $etsy_token_secret = igse8e4rdmzkxdi937qe69d59en1imw; # string | Secret token authorizing the app to access resources on behalf of a user
my $etsy_client_id = w0fi0igk2w29bjcd7ydr2s35; # string | Etsy Client Id
my $etsy_refresh_token = 223577551.L07_RE-y7unmKf2dox4djsHkVxwpUfs1ikG_uQmHhF-aASEReNn_Qns1Wqn3dDa0ZMxrt9CIael3dgudeDZb31ZUdS; # string | Etsy Refresh token
my $facebook_app_id = 6516912365277570; # string | Facebook App ID
my $facebook_app_secret = 737cf6bd2879cb6c7e5a8ff9cd63f3d46b0b5b7b; # string | Facebook App Secret
my $facebook_access_token = EAAPP06rM2n8BO4mZBuMPnu9zS0MaMbN7ue8aUAhqbS58clzJwyp1rYRMpP31QJGziqtYbKypdVx3Cs0RpuufoUeLsbfX195XIB8VTlkcxw4zewU337mVVb5br; # string | Facebook Access Token
my $facebook_business_id = 294042786906655; # string | Facebook Business ID
my $neto_api_key = bbca57d8ff3c3677128112c15556d9e3; # string | Neto API Key
my $neto_api_username = mylogin; # string | Neto User Name
my $shopline_access_token = igse8e4rdmzkxdi937qe69d59en1imw; # string | Shopline APP Key
my $shopline_app_key = 737cf6bd2879cb6c7e5a8ff9cd63f3d46b0b5b7b; # string | Shopline APP Key
my $shopline_app_secret = 1701d123bb5cc14cd2732dcaed90638316c0a09; # string | Shopline App Secret
my $shopline_shared_secret = 1701d123bb5cc14cd2732dcaed90638316c0a09; # string | Shopline Shared Secret
my $shopify_access_token = igse8e4rdmzkxdi937qe69d59en1imw; # string | Access token authorizing the app to access resources on behalf of a user
my $shopify_api_key = bbca57d8ff3c3677128112c15556d9e3; # string | Shopify API Key
my $shopify_api_password = 860f3a6fc87632301a42cd88e4b5ab3d; # string | Shopify API Password
my $shopify_shared_secret = gmz3iz45x2; # string | Shared secret
my $shopee_partner_id = 1276777; # string | Shopee Partner ID
my $shopee_partner_key = 6a46494b4d746576554646626775617a577542774850636375464d6a736d5598; # string | Shopee Partner Key
my $shopee_shop_id = 137968; # string | Shopee SHOP ID
my $shopee_refresh_token = EAAPP06rM2n8BO4mZBuMPnu9zS0MaMbN7ue8aUkcxw4zewU987mVVb5br; # string | Shopee Refresh Token
my $shopee_region = CN; # string | Shopee API endpoint Region. Use for Chinese Mainland or Brazil.
my $shopee_environment = sandbox; # string | Shopee Environment
my $shoplazza_access_token = igse8e4rdmzkxdi937qe69d59en1imw; # string | Access token authorizing the app to access resources on behalf of a user
my $shoplazza_shared_secret = gmz3iz45x2; # string | Shared secret
my $miva_access_token = 227cbe434a1e358d72db0de993x9d9fd; # string | Miva access token
my $miva_signature = 1hpkrebfdsObGTor/0Gk9XcNBUQohrxrw67Sg9AM9ps=; # string | Miva signature
my $shopware_access_key = SWSCS3O1RJBSRNBYQLFIYJN2ZQ; # string | Shopware access key
my $shopware_api_key = SWSCS3O1RJBSRNBYQLFIYJN2ZQ; # string | Shopware api key
my $shopware_api_secret = V3NYNWg2b1dZdHBUWDN1cmdKdGhnenp5enVJYlJ0WlJvOFF2bnQ; # string | Shopware client secret access key
my $bigcartel_user_name = subdomain; # string | Subdomain of store
my $bigcartel_password = 4GrrZCLNNoSUuhAjesKuchxo9SL; # string | BigCartel account password
my $bricklink_consumer_key = 26F6CDA087D9444EAA71AC09E7A1D39A; # string | Bricklink Consumer Key
my $bricklink_consumer_secret = a46abc3kxyinlbggy06i9g975xqo6gjq; # string | Bricklink Consumer Secret
my $bricklink_token = ktv4n9rgrj0evjuy2t6p2xlb1f8u5pmy; # string | Bricklink Access Token
my $bricklink_token_secret = a46abc3kxyinlbggy06i9g975xqo6gjq; # string | Bricklink Access Token Secret
my $volusion_login = admin; # string | It's a Volusion account for which API is enabled
my $volusion_password = 7943CA5F3990E00D9A4CCF0BD998211F; # string | Volusion API Password
my $walmart_client_id = 423f6A24-123z-8654-989u-6fa96478289; # string | Walmart client ID. For the region 'ca' use Consumer ID
my $walmart_client_secret = 1gf85fea-8974-2648-w12w-rt54284tdf54; # string | Walmart client secret. For the region 'ca' use Private Key
my $walmart_environment = production; # string | Walmart environment
my $walmart_channel_type = 0f3e4dd4-0514-4346-b39d-af0e00ea066d; # string | Walmart WM_CONSUMER.CHANNEL.TYPE header
my $walmart_region = us; # string | Walmart region
my $square_client_id = sq0idp-qwer_1pvuTYe9cAf1lmxyQ; # string | Square (Weebly) Client ID
my $square_client_secret = c8d7077fce7b2b111111111898170695a01473a2ad; # string | Square (Weebly) Client Secret
my $square_refresh_token = EQAAlquVXMr6xIcPu7qPkIEAZ0thqChhQuowrvZIqOlwhOwhtmyh4ZRfesdRc434; # string | Square (Weebly) Refresh Token
my $squarespace_api_key = 8f7849d5-1411-47f2-9722-aa81c2a48d95; # string | Squarespace API Key
my $squarespace_client_id = 9UGbUtS2V96BxRGmfOjsGAhTdsr9Vxxx; # string | Squarespace Connector Client ID
my $squarespace_client_secret = GPZkUFkIKWg0KLE6rajsFMMYA9ma0udaaq2bYwBDXXX=; # string | Squarespace Connector Client Secret
my $squarespace_access_token = SWSCS3O1RJBSRNBYQLFIYJN2ZQ; # string | Squarespace access token
my $squarespace_refresh_token = def50eyfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe657e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65de64a0c865d; # string | Squarespace refresh token
my $hybris_client_id = api_client_1; # string | Omni Commerce Connector Client ID
my $hybris_client_secret = secret_phrase_1; # string | Omni Commerce Connector Client Secret
my $hybris_username = admin; # string | User Name
my $hybris_password = nimda; # string | User password
my $hybris_websites = [hybris_websites[0][uid]=apparel-website&hybris_websites[0][url]=https://apparel.local/yacceleratorstorefront&hybris_websites[0][storeIds][0]=apparel-de&hybris_websites[0][storeIds][1]=apparel-uk]; # ARRAY[string] | Websites to stores mapping data
my $lightspeed_api_key = cf5444729c2abd6b6a5d983691767cb5; # string | LightSpeed api key
my $lightspeed_api_secret = 2620ee52a8bc942f9d5d3a575f4d363e; # string | LightSpeed api secret
my $commercehq_api_key = sJrD-LM0eddhe63rfgfva0dDydXfre4; # string | CommerceHQ api key
my $commercehq_api_password = 4Grr_ZCLNNoSUuhAjesKuchxo9SL; # string | CommerceHQ api password
my $wc_consumer_key = ck_26d8e2ad604f3917e429df6961722282bdcf109d; # string | Woocommerce consumer key
my $wc_consumer_secret = cs_931ced666118a15c5f7b4a33a15gf5589cbeba55; # string | Woocommerce consumer secret
my $magento_consumer_key = ktv4n9rgrj0evjuy2t6p2xlb1f8u5pmy; # string | Magento Consumer Key
my $magento_consumer_secret = a46abc3kxyinlbggy06i9g975xqo6gjq; # string | Magento Consumer Secret
my $magento_access_token = igse8e4rdmzkxdi937qe69d59en1imw; # string | Magento Access Token
my $magento_token_secret = igse8e4rdmzkxdi937qe69d59en1imw; # string | Magento Token Secret
my $prestashop_webservice_key = CKJ1ZEWRJWRLTPVBQJ9FGGRORD4AGS96; # string | Prestashop webservice key
my $wix_app_id = 6b0b5b7b-7d87-45b5-bf34-ac6b438e63da; # string | Wix App ID
my $wix_app_secret_key = 316c0a09-f195-42be-74f6-a02cebb9cae6; # string | Wix App Secret Key
my $wix_instance_id = 58b893a4-6b16-5c2f-qt78-qa3r61t32rt8; # string | Wix Instance ID
my $wix_refresh_token = 
        OAUTH2.eyJraWQiOiJkZ0x3cjNRMCIsImFsZyI6IkhTMjU2In0.
        eyJkYXRhIjoie1wiaWRcIjpcImJlZjM3MmRmLTUyNGItNDI3NS05M2RkL
        Tg4NDBlOTU3ZWU2OFwifSIsImlhdCI6MTY0ODA0NTEyNiwiZXhwIjoxNzExMTE3MTI2fQ.
        VRR2lGSbcTVmaArtmyyhy6o4WRDwTn-nlDCQpZ97eYw
      ; # string | Wix refresh token
my $mercado_libre_app_id = 211188015100135; # string | Mercado Libre App ID
my $mercado_libre_app_secret_key = e2qoG2zklLlfP7cEngEJ94YjhkejkjAm; # string | Mercado Libre App Secret Key
my $mercado_libre_refresh_token = TG-63h13529vb5464110188d2x9-703754376; # string | Mercado Libre Refresh Token
my $zid_client_id = 1234; # int | Zid Client ID
my $zid_client_secret = nl5l1lE0vxgv6cV111fHsdlOOIfb0Ms5IR7l4Igs; # string | Zid Client Secret
my $zid_access_token = def50eyfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe657e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65de64a0c865d; # string | Zid Access Token
my $zid_authorization = def50eyfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe657e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65de64a0c865d; # string | Zid Authorization
my $zid_refresh_token = def50eyfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe657e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65d7e64a0cfe9fe65de64a0c865d; # string | Zid refresh token
my $flipkart_client_id = 19414773883a13a850b6a52350b7246499a24; # string | Flipkart Client ID
my $flipkart_client_secret = nl5l1lE0vxgv6cV111fHsdlOOIfb0Ms5IR7l4Igs; # string | Flipkart Client Secret
my $allegro_client_id = 2915e189ce3d23d23d2327d204ae6a0bd; # string | Allegro Client ID
my $allegro_client_secret = DNHtqdL2WPIefeUhQWYgtXPS23fgbfgasdsGHHJGhg3RTFDQWFGZmVoFRT5IfkQj1E7eR5; # string | Allegro Client Secret
my $allegro_access_token = eyJhbGciOiJSUzI1NiIsInR5cCI6IsfddfdfdeyJ1c2VyX25hbWUiOiI5NDUxMzE1MSIsInNjb3BlIjpbImFsbGVncm86YXBpOm9yZGVyczpyZWFkIiwiYWxsZWdybzphcGk6cHJvZmlsZTp3cml0ZSIsImFsbGVncm86YXBpOnNhbGU6b2ZmZXJzOndyaXRlIiwiYWxsZWdybzphcGk6YmlsbGluZzpyZWFkIiwiYWxsZWdybzphcGk6Y2FtcGFpZ25zIiwiYWxsZWdybzphcGk6ZGlzcHV0ZXMiLCJhbGxlZ3JvOmFwaTpzYWxlOm9mZmVyczpyZWFkIiwiYWxsZWdybzphcGk6YmlkcyIsImFsbGVncm86YXBpOm9yZGVyczp3cml0ZSIsImFsbGVncm86YXBpOnBheW1lbnRzOndyaXRlIiwiYWxsZWdybzphcGk6c2FsZTpzZXR0aW5nczp3cml0ZSIsImFsbGVncm86YXBpOnByb2ZpbGU6cmVhZCIsImFsbGVncm86YXBpOnJhdGluZ3MiLCJhbGxlZ3JvOmFwaTpzYWxlOnNldHRpbmdzOnJlYWQiLCJhbGxlZ3JvOmFwaTpwYXltZW50czpyZWFkIiwiYWxsZWdybzphcGk6bWVzc2FnaW5nIl0sI; # string | Allegro Access Token
my $allegro_refresh_token = eyJhbGciOiJSUzI1NiIsInR5cCI6IsfddfdfdeyJ1c2VyX25hbWUiOiI5NDUxMzE1MSIsInNjb3BlIjpbImFsbGVncm86YXBpOm9yZGVyczpyZWFkIiwiYWxsZWdybzphcGk6cHJvZmlsZTp3cml0ZSIsImFsbGVncm86YXBpOnNhbGU6b2ZmZXJzOndyaXRlIiwiYWxsZWdybzphcGk6YmlsbGluZzpyZWFkIiwiYWxsZWdybzphcGk6Y2FtcGFpZ25zIiwiYWxsZWdybzphcGk6ZGlzcHV0ZXMiLCJhbGxlZ3JvOmFwaTpzYWxlOm9mZmVyczpyZWFkIiwiYWxsZWdybzphcGk6YmlkcyIsImFsbGVncm86YXBpOm9yZGVyczp3cml0ZSIsImFsbGVncm86YXBpOnBheW1lbnRzOndyaXRlIiwiYWxsZWdybzphcGk6c2FsZTpzZXR0aW5nczp3cml0ZSIsImFsbGVncm86YXBpOnByb2ZpbGU6cmVhZCIsImFsbGVncm86YXBpOnJhdGluZ3MiLCJhbGxlZ3JvOmFwaTpzYWxlOnNldHRpbmdzOnJlYWQiLCJhbGxlZ3JvOmFwaTpwYXltZW50czpyZWFkIiwiYWxsZWdybzphcGk6bWVzc2FnaW5nIl0sI; # string | Allegro Refresh Token
my $allegro_environment = sandbox; # string | Allegro Environment
my $zoho_client_id = 1000.FLCHGI2LS1111111TOR4OGB697W4IX; # string | Zoho Client ID
my $zoho_client_secret = c8d7077fce7b2b111111111898170695a01473a2ad; # string | Zoho Client Secret
my $zoho_refresh_token = 1000.11111111111111111111111111111111.1b3ca6f054341a111118abf928beb33b; # string | Zoho Refresh Token
my $zoho_region = Europe; # string | Zoho API endpoint Region
my $tiendanube_user_id = 1234; # int | Tiendanube User ID
my $tiendanube_access_token = 75bde7bb0b437475423e7e87c142c06052f80199; # string | Tiendanube Access Token
my $tiendanube_client_secret = 5e3588f514a5ae0d0fa063d1b556531e25c83fa7e47472ed; # string | Tiendanube Client Secret
my $otto_client_id = 911a3dbf-d261-4763-cc81-052876465b55; # string | Otto Client ID
my $otto_client_secret = 9887a82a-2879-421e-a6wc-54e986b3458c; # string | Otto Client Secret
my $otto_app_id = 6eaef6a3-822e-425b-8mc9-53750063e34d; # string | Otto App ID
my $otto_refresh_token = eyJhbGciOiJSUzI1NiIsInR5cCI6IsfddfdfdeyJ1c2VyX25hbWUiOiI5NDUxMzE1MSIsInNjb3BlIjpbImFsbGVncm86YXBpOm9yZGVyczpyZWFkIiwiYWxsZWdybzphcGk6cHJvZmlsZTp3cml0ZSIsImFsbGVncm86YXBpOnNhbGU6b2ZmZXJzOndyaXRlIiwiYWxsZWdybzphcGk6YmlsbGluZzpyZWFkIiwiYWxsZWdybzphcGk6Y2FtcGFpZ25zIiwiYWxsZWdybzphcGk6ZGlzcHV0ZXMiLCJhbGxlZ3JvOmFwaTpzYWxlOm9mZmVyczpyZWFkIiwiYWxsZWdybzphcGk6YmlkcyIsImFsbGVncm86YXBpOm9yZGVyczp3cml0ZSIsImFsbGVncm86YXBpOnBheW1lbnRzOndyaXRlIiwiYWxsZWdybzphcGk6c2FsZTpzZXR0aW5nczp3cml0ZSIsImFsbGVncm86YXBpOnByb2ZpbGU6cmVhZCIsImFsbGVncm86YXBpOnJhdGluZ3MiLCJhbGxlZ3JvOmFwaTpzYWxlOnNldHRpbmdzOnJlYWQiLCJhbGxlZ3JvOmFwaTpwYXltZW50czpyZWFkIiwiYWxsZWdybzphcGk6bWVzc2FnaW5nIl0sI; # string | Otto Refresh Token
my $otto_environment = sandbox; # string | Otto Environment
my $otto_access_token = eyJhbGciOiJS34535f45f54f5656deyJ1c2VyX25hbWUiOiI5NDUxMzE1MSIsInNjb3BlIjpbImFsbGVncm86YXBpOm9yZGVyczpyZWFkIiwiYWxsZWdybzphcGk6cHJvZmlsZTp3cml0ZSIsImFsbGVncm86YXBpOnNhbGU6b2ZmZXJzOndyaXRlIiwiYWxsZWdybzphcGk6YmlsbGluZzpyZWFkIiwiYWxsZWdybzphcGk6Y2FtcGFpZ25zIiwiYWxsZWdybzphcGk6ZGlzcHV0ZXMiLCJhbGxlZ3JvOmFwaTpzYWxlOm9mZmVyczpyZWFkIiwiYWxsZWdybzphcGk6YmlkcyIsImFsbGVncm86YXBpOm9yZGVyczp3cml0ZSIsImFsbGVncm86YXBpOnBheW1lbnRzOndyaXRlIiwiYWxsZWdybzphcGk6c2FsZTpzZXR0aW5nczp3cml0ZSIsImFsbGVncm86YXBpOnByb2ZpbGU6cmVhZCIsImFsbGVncm86YXBpOnJhdGluZ3MiLCJhbGxlZ3JvOmFwaTpzYWxlOnNldHRpbmdzOnJlYWQiLCJhbGxlZ3JvOmFwaTpwYXltZW50czpyZWFkIiwiYWxsZWdybzphcGk6bWVzc2FnaW5nIl0sI; # string | Otto Access Token
my $tiktokshop_app_key = 6arbhkzno8nbv; # string | TikTok Shop App Key
my $tiktokshop_app_secret = d95820a05a0cd54fb394fcd26fgat63999b183bc; # string | TikTok Shop App Secret
my $tiktokshop_refresh_token = TTP_NTUxZTNhYTQ2ZDk2YmRmZWNmYWY2YWY12345NGYwNjQ3YjkzYTllYjA0YmNlMw; # string | TikTok Shop Refresh Token
my $tiktokshop_access_token = TTP_Fw8r12345kW03FYd09DG-9INtpw361hWthei12345iPJ5AUv99fLSCYD9-Uu12345TgNRzKZxi5-tfFMtdWqglEt5_iCk; # string | TikTok Shop Access Token
my $salla_client_id = 1bxxxcf9-5xx4-xxx-bxxf-929b8xxxxe11; # string | Salla Client ID
my $salla_client_secret = 8x88axxxc25e1fxxxa1c06fxxx150xx5; # string | Salla Client Secret
my $salla_refresh_token = oxy_rt_zxxxxiY2xxZWWxxxxlU-tROxxxxx2JzS2fwzxxxxxkU.p3xxxkCIyFexxxxP50WwZYfhw5_wg1xxxxV5F-8xxXc; # string | Salla Refresh Token
my $salla_access_token = oxy_rt_zxxxxiY2xxZWWxxxxlU-tROxxxxx2JzS2fwzxxxxxkU.p3xxxkCIyFexxxxP50WwZYfhw5_wg1xxxxV5F-8xxXc; # string | Salla Access Token
my $temu_app_key = 4ebbc9190ae410443d65b4c2faca9811; # string | Temu App Key
my $temu_app_secret = 4782d2d827276688bf4758bed55dbdd4bbe79a78; # string | Temu App Secret
my $temu_access_token = uplv3hfyt5kcwoymrgnajnbl1ow5qxlz4sqhev6hl3xosz5dejrtyl2jre6; # string | Temu Access Token
my $temu_region = US; # string | Temu API endpoint Region.

eval {
    my $result = $api_instance->account_config_update(replace_parameters => $replace_parameters, new_store_url => $new_store_url, new_store_key => $new_store_key, bridge_url => $bridge_url, store_root => $store_root, db_tables_prefix => $db_tables_prefix, user_agent => $user_agent, _3dcart_private_key => $_3dcart_private_key, _3dcart_access_token => $_3dcart_access_token, _3dcartapi_api_key => $_3dcartapi_api_key, amazon_sp_client_id => $amazon_sp_client_id, amazon_sp_client_secret => $amazon_sp_client_secret, amazon_sp_refresh_token => $amazon_sp_refresh_token, amazon_sp_aws_region => $amazon_sp_aws_region, amazon_sp_api_environment => $amazon_sp_api_environment, amazon_seller_id => $amazon_seller_id, aspdotnetstorefront_api_user => $aspdotnetstorefront_api_user, aspdotnetstorefront_api_pass => $aspdotnetstorefront_api_pass, bigcommerceapi_admin_account => $bigcommerceapi_admin_account, bigcommerceapi_api_path => $bigcommerceapi_api_path, bigcommerceapi_api_key => $bigcommerceapi_api_key, bigcommerceapi_client_id => $bigcommerceapi_client_id, bigcommerceapi_access_token => $bigcommerceapi_access_token, bigcommerceapi_context => $bigcommerceapi_context, bol_api_key => $bol_api_key, bol_api_secret => $bol_api_secret, bol_retailer_id => $bol_retailer_id, demandware_client_id => $demandware_client_id, demandware_api_password => $demandware_api_password, demandware_user_name => $demandware_user_name, demandware_user_password => $demandware_user_password, ebay_client_id => $ebay_client_id, ebay_client_secret => $ebay_client_secret, ebay_runame => $ebay_runame, ebay_access_token => $ebay_access_token, ebay_refresh_token => $ebay_refresh_token, ebay_environment => $ebay_environment, ebay_site_id => $ebay_site_id, ecwid_acess_token => $ecwid_acess_token, ecwid_store_id => $ecwid_store_id, lazada_app_id => $lazada_app_id, lazada_app_secret => $lazada_app_secret, lazada_refresh_token => $lazada_refresh_token, lazada_region => $lazada_region, etsy_keystring => $etsy_keystring, etsy_shared_secret => $etsy_shared_secret, etsy_access_token => $etsy_access_token, etsy_token_secret => $etsy_token_secret, etsy_client_id => $etsy_client_id, etsy_refresh_token => $etsy_refresh_token, facebook_app_id => $facebook_app_id, facebook_app_secret => $facebook_app_secret, facebook_access_token => $facebook_access_token, facebook_business_id => $facebook_business_id, neto_api_key => $neto_api_key, neto_api_username => $neto_api_username, shopline_access_token => $shopline_access_token, shopline_app_key => $shopline_app_key, shopline_app_secret => $shopline_app_secret, shopline_shared_secret => $shopline_shared_secret, shopify_access_token => $shopify_access_token, shopify_api_key => $shopify_api_key, shopify_api_password => $shopify_api_password, shopify_shared_secret => $shopify_shared_secret, shopee_partner_id => $shopee_partner_id, shopee_partner_key => $shopee_partner_key, shopee_shop_id => $shopee_shop_id, shopee_refresh_token => $shopee_refresh_token, shopee_region => $shopee_region, shopee_environment => $shopee_environment, shoplazza_access_token => $shoplazza_access_token, shoplazza_shared_secret => $shoplazza_shared_secret, miva_access_token => $miva_access_token, miva_signature => $miva_signature, shopware_access_key => $shopware_access_key, shopware_api_key => $shopware_api_key, shopware_api_secret => $shopware_api_secret, bigcartel_user_name => $bigcartel_user_name, bigcartel_password => $bigcartel_password, bricklink_consumer_key => $bricklink_consumer_key, bricklink_consumer_secret => $bricklink_consumer_secret, bricklink_token => $bricklink_token, bricklink_token_secret => $bricklink_token_secret, volusion_login => $volusion_login, volusion_password => $volusion_password, walmart_client_id => $walmart_client_id, walmart_client_secret => $walmart_client_secret, walmart_environment => $walmart_environment, walmart_channel_type => $walmart_channel_type, walmart_region => $walmart_region, square_client_id => $square_client_id, square_client_secret => $square_client_secret, square_refresh_token => $square_refresh_token, squarespace_api_key => $squarespace_api_key, squarespace_client_id => $squarespace_client_id, squarespace_client_secret => $squarespace_client_secret, squarespace_access_token => $squarespace_access_token, squarespace_refresh_token => $squarespace_refresh_token, hybris_client_id => $hybris_client_id, hybris_client_secret => $hybris_client_secret, hybris_username => $hybris_username, hybris_password => $hybris_password, hybris_websites => $hybris_websites, lightspeed_api_key => $lightspeed_api_key, lightspeed_api_secret => $lightspeed_api_secret, commercehq_api_key => $commercehq_api_key, commercehq_api_password => $commercehq_api_password, wc_consumer_key => $wc_consumer_key, wc_consumer_secret => $wc_consumer_secret, magento_consumer_key => $magento_consumer_key, magento_consumer_secret => $magento_consumer_secret, magento_access_token => $magento_access_token, magento_token_secret => $magento_token_secret, prestashop_webservice_key => $prestashop_webservice_key, wix_app_id => $wix_app_id, wix_app_secret_key => $wix_app_secret_key, wix_instance_id => $wix_instance_id, wix_refresh_token => $wix_refresh_token, mercado_libre_app_id => $mercado_libre_app_id, mercado_libre_app_secret_key => $mercado_libre_app_secret_key, mercado_libre_refresh_token => $mercado_libre_refresh_token, zid_client_id => $zid_client_id, zid_client_secret => $zid_client_secret, zid_access_token => $zid_access_token, zid_authorization => $zid_authorization, zid_refresh_token => $zid_refresh_token, flipkart_client_id => $flipkart_client_id, flipkart_client_secret => $flipkart_client_secret, allegro_client_id => $allegro_client_id, allegro_client_secret => $allegro_client_secret, allegro_access_token => $allegro_access_token, allegro_refresh_token => $allegro_refresh_token, allegro_environment => $allegro_environment, zoho_client_id => $zoho_client_id, zoho_client_secret => $zoho_client_secret, zoho_refresh_token => $zoho_refresh_token, zoho_region => $zoho_region, tiendanube_user_id => $tiendanube_user_id, tiendanube_access_token => $tiendanube_access_token, tiendanube_client_secret => $tiendanube_client_secret, otto_client_id => $otto_client_id, otto_client_secret => $otto_client_secret, otto_app_id => $otto_app_id, otto_refresh_token => $otto_refresh_token, otto_environment => $otto_environment, otto_access_token => $otto_access_token, tiktokshop_app_key => $tiktokshop_app_key, tiktokshop_app_secret => $tiktokshop_app_secret, tiktokshop_refresh_token => $tiktokshop_refresh_token, tiktokshop_access_token => $tiktokshop_access_token, salla_client_id => $salla_client_id, salla_client_secret => $salla_client_secret, salla_refresh_token => $salla_refresh_token, salla_access_token => $salla_access_token, temu_app_key => $temu_app_key, temu_app_secret => $temu_app_secret, temu_access_token => $temu_access_token, temu_region => $temu_region);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->account_config_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **replace_parameters** | **boolean**| Identifies if there is a necessity to replace parameters | [optional] 
 **new_store_url** | **string**| The web address of the store you want to update to connect to API2Cart | [optional] 
 **new_store_key** | **string**| Update store key | [optional] 
 **bridge_url** | **string**| This parameter allows to set up store with custom bridge url (also you must use store_root parameter if a bridge folder is not in the root folder of the store) | [optional] 
 **store_root** | **string**| Absolute path to the store root directory (used with \&quot;bridge_url\&quot; parameter) | [optional] 
 **db_tables_prefix** | **string**| DB tables prefix | [optional] 
 **user_agent** | **string**| This parameter allows you to set your custom user agent, which will be used in requests to the store. Please use it cautiously, as the store&#39;s firewall may block specific values. | [optional] 
 **_3dcart_private_key** | **string**| 3DCart Private Key | [optional] 
 **_3dcart_access_token** | **string**| 3DCart Token | [optional] 
 **_3dcartapi_api_key** | **string**| 3DCart API Key | [optional] 
 **amazon_sp_client_id** | **string**| Amazon SP API app client id | [optional] 
 **amazon_sp_client_secret** | **string**| Amazon SP API app client secret | [optional] 
 **amazon_sp_refresh_token** | **string**| Amazon SP API OAuth refresh token | [optional] 
 **amazon_sp_aws_region** | **string**| Amazon AWS Region | [optional] 
 **amazon_sp_api_environment** | **string**| Amazon SP API environment | [optional] [default to &#39;production&#39;]
 **amazon_seller_id** | **string**| Amazon Seller ID (Merchant token) | [optional] 
 **aspdotnetstorefront_api_user** | **string**| It&#39;s a AspDotNetStorefront account for which API is available | [optional] 
 **aspdotnetstorefront_api_pass** | **string**| AspDotNetStorefront API Password | [optional] 
 **bigcommerceapi_admin_account** | **string**| It&#39;s a BigCommerce account for which API is enabled | [optional] 
 **bigcommerceapi_api_path** | **string**| BigCommerce API URL | [optional] 
 **bigcommerceapi_api_key** | **string**| Bigcommerce API Key | [optional] 
 **bigcommerceapi_client_id** | **string**| Client ID of the requesting app | [optional] 
 **bigcommerceapi_access_token** | **string**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **bigcommerceapi_context** | **string**| API Path section unique to the store | [optional] 
 **bol_api_key** | **string**| Bol API Key | [optional] 
 **bol_api_secret** | **string**| Bol API Secret | [optional] 
 **bol_retailer_id** | **int**| Bol Retailer ID | [optional] 
 **demandware_client_id** | **string**| Demandware client id | [optional] 
 **demandware_api_password** | **string**| Demandware api password | [optional] 
 **demandware_user_name** | **string**| Demandware user name | [optional] 
 **demandware_user_password** | **string**| Demandware user password | [optional] 
 **ebay_client_id** | **string**| Application ID (AppID). | [optional] 
 **ebay_client_secret** | **string**| Shared Secret from eBay application | [optional] 
 **ebay_runame** | **string**| The RuName value that eBay assigns to your application. | [optional] 
 **ebay_access_token** | **string**| Used to authenticate API requests. | [optional] 
 **ebay_refresh_token** | **string**| Used to renew the access token. | [optional] 
 **ebay_environment** | **string**| eBay environment | [optional] 
 **ebay_site_id** | **int**| eBay global ID | [optional] [default to 0]
 **ecwid_acess_token** | **string**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **ecwid_store_id** | **string**| Store Id | [optional] 
 **lazada_app_id** | **string**| Lazada App ID | [optional] 
 **lazada_app_secret** | **string**| Lazada App Secret | [optional] 
 **lazada_refresh_token** | **string**| Lazada Refresh Token | [optional] 
 **lazada_region** | **string**| Lazada API endpoint Region | [optional] 
 **etsy_keystring** | **string**| Etsy keystring | [optional] 
 **etsy_shared_secret** | **string**| Etsy shared secret | [optional] 
 **etsy_access_token** | **string**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **etsy_token_secret** | **string**| Secret token authorizing the app to access resources on behalf of a user | [optional] 
 **etsy_client_id** | **string**| Etsy Client Id | [optional] 
 **etsy_refresh_token** | **string**| Etsy Refresh token | [optional] 
 **facebook_app_id** | **string**| Facebook App ID | [optional] 
 **facebook_app_secret** | **string**| Facebook App Secret | [optional] 
 **facebook_access_token** | **string**| Facebook Access Token | [optional] 
 **facebook_business_id** | **string**| Facebook Business ID | [optional] 
 **neto_api_key** | **string**| Neto API Key | [optional] 
 **neto_api_username** | **string**| Neto User Name | [optional] 
 **shopline_access_token** | **string**| Shopline APP Key | [optional] 
 **shopline_app_key** | **string**| Shopline APP Key | [optional] 
 **shopline_app_secret** | **string**| Shopline App Secret | [optional] 
 **shopline_shared_secret** | **string**| Shopline Shared Secret | [optional] 
 **shopify_access_token** | **string**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **shopify_api_key** | **string**| Shopify API Key | [optional] 
 **shopify_api_password** | **string**| Shopify API Password | [optional] 
 **shopify_shared_secret** | **string**| Shared secret | [optional] 
 **shopee_partner_id** | **string**| Shopee Partner ID | [optional] 
 **shopee_partner_key** | **string**| Shopee Partner Key | [optional] 
 **shopee_shop_id** | **string**| Shopee SHOP ID | [optional] 
 **shopee_refresh_token** | **string**| Shopee Refresh Token | [optional] 
 **shopee_region** | **string**| Shopee API endpoint Region. Use for Chinese Mainland or Brazil. | [optional] 
 **shopee_environment** | **string**| Shopee Environment | [optional] 
 **shoplazza_access_token** | **string**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **shoplazza_shared_secret** | **string**| Shared secret | [optional] 
 **miva_access_token** | **string**| Miva access token | [optional] 
 **miva_signature** | **string**| Miva signature | [optional] 
 **shopware_access_key** | **string**| Shopware access key | [optional] 
 **shopware_api_key** | **string**| Shopware api key | [optional] 
 **shopware_api_secret** | **string**| Shopware client secret access key | [optional] 
 **bigcartel_user_name** | **string**| Subdomain of store | [optional] 
 **bigcartel_password** | **string**| BigCartel account password | [optional] 
 **bricklink_consumer_key** | **string**| Bricklink Consumer Key | [optional] 
 **bricklink_consumer_secret** | **string**| Bricklink Consumer Secret | [optional] 
 **bricklink_token** | **string**| Bricklink Access Token | [optional] 
 **bricklink_token_secret** | **string**| Bricklink Access Token Secret | [optional] 
 **volusion_login** | **string**| It&#39;s a Volusion account for which API is enabled | [optional] 
 **volusion_password** | **string**| Volusion API Password | [optional] 
 **walmart_client_id** | **string**| Walmart client ID. For the region &#39;ca&#39; use Consumer ID | [optional] 
 **walmart_client_secret** | **string**| Walmart client secret. For the region &#39;ca&#39; use Private Key | [optional] 
 **walmart_environment** | **string**| Walmart environment | [optional] [default to &#39;production&#39;]
 **walmart_channel_type** | **string**| Walmart WM_CONSUMER.CHANNEL.TYPE header | [optional] 
 **walmart_region** | **string**| Walmart region | [optional] [default to &#39;us&#39;]
 **square_client_id** | **string**| Square (Weebly) Client ID | [optional] 
 **square_client_secret** | **string**| Square (Weebly) Client Secret | [optional] 
 **square_refresh_token** | **string**| Square (Weebly) Refresh Token | [optional] 
 **squarespace_api_key** | **string**| Squarespace API Key | [optional] 
 **squarespace_client_id** | **string**| Squarespace Connector Client ID | [optional] 
 **squarespace_client_secret** | **string**| Squarespace Connector Client Secret | [optional] 
 **squarespace_access_token** | **string**| Squarespace access token | [optional] 
 **squarespace_refresh_token** | **string**| Squarespace refresh token | [optional] 
 **hybris_client_id** | **string**| Omni Commerce Connector Client ID | [optional] 
 **hybris_client_secret** | **string**| Omni Commerce Connector Client Secret | [optional] 
 **hybris_username** | **string**| User Name | [optional] 
 **hybris_password** | **string**| User password | [optional] 
 **hybris_websites** | [**ARRAY[string]**](string.md)| Websites to stores mapping data | [optional] 
 **lightspeed_api_key** | **string**| LightSpeed api key | [optional] 
 **lightspeed_api_secret** | **string**| LightSpeed api secret | [optional] 
 **commercehq_api_key** | **string**| CommerceHQ api key | [optional] 
 **commercehq_api_password** | **string**| CommerceHQ api password | [optional] 
 **wc_consumer_key** | **string**| Woocommerce consumer key | [optional] 
 **wc_consumer_secret** | **string**| Woocommerce consumer secret | [optional] 
 **magento_consumer_key** | **string**| Magento Consumer Key | [optional] 
 **magento_consumer_secret** | **string**| Magento Consumer Secret | [optional] 
 **magento_access_token** | **string**| Magento Access Token | [optional] 
 **magento_token_secret** | **string**| Magento Token Secret | [optional] 
 **prestashop_webservice_key** | **string**| Prestashop webservice key | [optional] 
 **wix_app_id** | **string**| Wix App ID | [optional] 
 **wix_app_secret_key** | **string**| Wix App Secret Key | [optional] 
 **wix_instance_id** | **string**| Wix Instance ID | [optional] 
 **wix_refresh_token** | **string**| Wix refresh token | [optional] 
 **mercado_libre_app_id** | **string**| Mercado Libre App ID | [optional] 
 **mercado_libre_app_secret_key** | **string**| Mercado Libre App Secret Key | [optional] 
 **mercado_libre_refresh_token** | **string**| Mercado Libre Refresh Token | [optional] 
 **zid_client_id** | **int**| Zid Client ID | [optional] 
 **zid_client_secret** | **string**| Zid Client Secret | [optional] 
 **zid_access_token** | **string**| Zid Access Token | [optional] 
 **zid_authorization** | **string**| Zid Authorization | [optional] 
 **zid_refresh_token** | **string**| Zid refresh token | [optional] 
 **flipkart_client_id** | **string**| Flipkart Client ID | [optional] 
 **flipkart_client_secret** | **string**| Flipkart Client Secret | [optional] 
 **allegro_client_id** | **string**| Allegro Client ID | [optional] 
 **allegro_client_secret** | **string**| Allegro Client Secret | [optional] 
 **allegro_access_token** | **string**| Allegro Access Token | [optional] 
 **allegro_refresh_token** | **string**| Allegro Refresh Token | [optional] 
 **allegro_environment** | **string**| Allegro Environment | [optional] [default to &#39;production&#39;]
 **zoho_client_id** | **string**| Zoho Client ID | [optional] 
 **zoho_client_secret** | **string**| Zoho Client Secret | [optional] 
 **zoho_refresh_token** | **string**| Zoho Refresh Token | [optional] 
 **zoho_region** | **string**| Zoho API endpoint Region | [optional] 
 **tiendanube_user_id** | **int**| Tiendanube User ID | [optional] 
 **tiendanube_access_token** | **string**| Tiendanube Access Token | [optional] 
 **tiendanube_client_secret** | **string**| Tiendanube Client Secret | [optional] 
 **otto_client_id** | **string**| Otto Client ID | [optional] 
 **otto_client_secret** | **string**| Otto Client Secret | [optional] 
 **otto_app_id** | **string**| Otto App ID | [optional] 
 **otto_refresh_token** | **string**| Otto Refresh Token | [optional] 
 **otto_environment** | **string**| Otto Environment | [optional] 
 **otto_access_token** | **string**| Otto Access Token | [optional] 
 **tiktokshop_app_key** | **string**| TikTok Shop App Key | [optional] 
 **tiktokshop_app_secret** | **string**| TikTok Shop App Secret | [optional] 
 **tiktokshop_refresh_token** | **string**| TikTok Shop Refresh Token | [optional] 
 **tiktokshop_access_token** | **string**| TikTok Shop Access Token | [optional] 
 **salla_client_id** | **string**| Salla Client ID | [optional] 
 **salla_client_secret** | **string**| Salla Client Secret | [optional] 
 **salla_refresh_token** | **string**| Salla Refresh Token | [optional] 
 **salla_access_token** | **string**| Salla Access Token | [optional] 
 **temu_app_key** | **string**| Temu App Key | [optional] 
 **temu_app_secret** | **string**| Temu App Secret | [optional] 
 **temu_access_token** | **string**| Temu Access Token | [optional] 
 **temu_region** | **string**| Temu API endpoint Region. | [optional] 

### Return type

[**AccountConfigUpdate200Response**](AccountConfigUpdate200Response.md)

### Authorization

[StoreKeyAuth](../README.md#StoreKeyAuth), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **account_failed_webhooks**
> AccountFailedWebhooks200Response account_failed_webhooks(start => $start, count => $count, ids => $ids)

account.failed_webhooks

If the callback of your service for some reason could not accept webhooks from API2Cart, then with the help of this method you can get a list of missed webhooks to perform synchronization again using entity_id. Please note that we keep such records for 24 hours.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AccountApi;
my $api_instance = WWW::OpenAPIClient::AccountApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $start = 0; # int | This parameter sets the number from which you want to get entities
my $count = 20; # int | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
my $ids = 3,14,25; # string | List of сomma-separated webhook ids

eval {
    my $result = $api_instance->account_failed_webhooks(start => $start, count => $count, ids => $ids);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->account_failed_webhooks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **int**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **ids** | **string**| List of сomma-separated webhook ids | [optional] 

### Return type

[**AccountFailedWebhooks200Response**](AccountFailedWebhooks200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **account_supported_platforms**
> AccountSupportedPlatforms200Response account_supported_platforms()

account.supported_platforms

Use this method to retrieve a list of supported platforms and the sets of parameters required for connecting to each of them. Note: some platforms may have multiple connection methods so that the response will contain multiple sets of parameters.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AccountApi;
my $api_instance = WWW::OpenAPIClient::AccountApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval {
    my $result = $api_instance->account_supported_platforms();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->account_supported_platforms: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountSupportedPlatforms200Response**](AccountSupportedPlatforms200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

