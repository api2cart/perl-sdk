=begin comment

API2Cart OpenAPI

API2Cart

The version of the OpenAPI document: 1.1
Contact: contact@api2cart.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::Object::CartCreate;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::OpenAPIClient::Object::AccountCartAddHybrisWebsitesInner;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

API2Cart OpenAPI

API2Cart

The version of the OpenAPI document: 1.1
Contact: contact@api2cart.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            my $_json_attribute = $self->attribute_map->{$_key};
            my $_type = $self->openapi_types->{$_key};
            my $_value = $self->{$_key};
            if ($_type =~ /^array\[(.+)\]$/i) { # array
                my $_subclass = $1;
                $_data->{$_json_attribute} =  [ map { $self->_to_json_primitives($_subclass, $_) } @$_value ];
            } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
                my $_subclass = $1;
                my %_hash = ();
                while (my($_key, $_element) = each %{$_value}) {
                    $_hash{$_key} = $self->_to_json_primitives($_subclass, $_element);
                }
                $_data->{$_json_attribute} = \%_hash;
            } elsif ( grep( /^$_type$/, ('int', 'double', 'string', 'boolean', 'DATE', 'DATE_TIME'))) {
                $_data->{$_json_attribute} = $self->_to_json_primitives($_type, $_value);
            } else {
                $_data->{$_json_attribute} = $_value;
            }
        }
    }

    return $_data;
}

# to_json non-array data
sub _to_json_primitives {
    my ($self, $type, $data) = @_;
    if ( grep( /^$type$/, ('int', 'double'))) {
        # https://metacpan.org/pod/JSON#simple-scalars
        # numify it, ensuring it will be dumped as a number
        return undef unless defined $data;
        return $data + 0;
    } elsif ($type eq 'string') {
        # https://metacpan.org/pod/JSON#simple-scalars
        # stringified
        return undef unless defined $data;
        return $data . q();
    } elsif ($type eq 'boolean') {
        # https://metacpan.org/pod/JSON#JSON::true,-JSON::false,-JSON::null
        return $data ? \1 : \0;
    } elsif ($type eq 'DATE') {
        return undef unless defined $data;
        if (ref($data) eq 'DateTime') {
            # https://metacpan.org/pod/DateTime#$dt-%3Eymd($optional_separator),-$dt-%3Emdy(...),-$dt-%3Edmy(...)
            return $data->ymd;
        }
        return $data .q();
    } elsif ($type eq 'DATE_TIME') {
        return undef unless defined $data;
        # the date-time notation as defined by RFC 3339, section 5.6, for example, 2017-07-21T17:32:28Z
        if (ref($data) eq 'DateTime') {
            # https://metacpan.org/pod/DateTime#$dt-%3Erfc3339
            return $data->rfc3339;
        }
        return $data .q();
    } else { # hash (model),  In this case, the TO_JSON of the $data object is executed
        return $data;
    }
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if (grep( /^$type$/ , ('DATE_TIME', 'DATE'))) {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double'))) {
        return undef unless defined $data;
        return $data + 0;
    } elsif ($type eq 'string') {
        return undef unless defined $data;
        return $data . q();
    } elsif ($type eq 'boolean') {
        return !!$data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => '',
                                  class => 'CartCreate',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'cart_id' => {
        datatype => 'string',
        base_name => 'cart_id',
        description => 'Store’s identifier which you can get from cart_list method',
        format => '',
        read_only => '',
            },
    'store_url' => {
        datatype => 'string',
        base_name => 'store_url',
        description => 'A web address of a store that you would like to connect to API2Cart',
        format => '',
        read_only => '',
            },
    'bridge_url' => {
        datatype => 'string',
        base_name => 'bridge_url',
        description => 'This parameter allows to set up store with custom bridge url (also you must use store_root parameter if a bridge folder is not in the root folder of the store)',
        format => '',
        read_only => '',
            },
    'store_root' => {
        datatype => 'string',
        base_name => 'store_root',
        description => 'Absolute path to the store root directory (used with \&quot;bridge_url\&quot; parameter)',
        format => '',
        read_only => '',
            },
    'store_key' => {
        datatype => 'string',
        base_name => 'store_key',
        description => 'Set this parameter if bridge is already uploaded to store',
        format => '',
        read_only => '',
            },
    'shared_secret' => {
        datatype => 'string',
        base_name => 'shared_secret',
        description => 'Shared secret',
        format => '',
        read_only => '',
            },
    'validate_version' => {
        datatype => 'boolean',
        base_name => 'validate_version',
        description => 'Specify if api2cart should validate cart version',
        format => '',
        read_only => '',
            },
    'verify' => {
        datatype => 'boolean',
        base_name => 'verify',
        description => 'Enables or disables cart&#39;s verification',
        format => '',
        read_only => '',
            },
    'db_tables_prefix' => {
        datatype => 'string',
        base_name => 'db_tables_prefix',
        description => 'DB tables prefix',
        format => '',
        read_only => '',
            },
    'user_agent' => {
        datatype => 'string',
        base_name => 'user_agent',
        description => 'This parameter allows you to set your custom user agent, which will be used in requests to the store. Please use it cautiously, as the store&#39;s firewall may block specific values.',
        format => '',
        read_only => '',
            },
    'ftp_host' => {
        datatype => 'string',
        base_name => 'ftp_host',
        description => 'FTP connection host',
        format => '',
        read_only => '',
            },
    'ftp_user' => {
        datatype => 'string',
        base_name => 'ftp_user',
        description => 'FTP User',
        format => '',
        read_only => '',
            },
    'ftp_password' => {
        datatype => 'string',
        base_name => 'ftp_password',
        description => 'FTP Password',
        format => '',
        read_only => '',
            },
    'ftp_port' => {
        datatype => 'int',
        base_name => 'ftp_port',
        description => 'FTP Port',
        format => '',
        read_only => '',
            },
    'ftp_store_dir' => {
        datatype => 'string',
        base_name => 'ftp_store_dir',
        description => 'FTP Store dir',
        format => '',
        read_only => '',
            },
    'api_key_3dcart' => {
        datatype => 'string',
        base_name => 'apiKey_3dcart',
        description => '3DCart API Key',
        format => '',
        read_only => '',
            },
    'admin_account' => {
        datatype => 'string',
        base_name => 'AdminAccount',
        description => 'It&#39;s a BigCommerce account for which API is enabled',
        format => '',
        read_only => '',
            },
    'api_path' => {
        datatype => 'string',
        base_name => 'ApiPath',
        description => 'BigCommerce API URL',
        format => '',
        read_only => '',
            },
    'api_key_bigcommerce' => {
        datatype => 'string',
        base_name => 'ApiKey_Bigcommerce',
        description => 'Bigcommerce API Key',
        format => '',
        read_only => '',
            },
    'client_id' => {
        datatype => 'string',
        base_name => 'client_id',
        description => 'Client ID of the requesting app',
        format => '',
        read_only => '',
            },
    'access_token' => {
        datatype => 'string',
        base_name => 'accessToken',
        description => 'Access token authorizing the app to access resources on behalf of a user',
        format => '',
        read_only => '',
            },
    'context' => {
        datatype => 'string',
        base_name => 'context',
        description => 'API Path section unique to the store',
        format => '',
        read_only => '',
            },
    'access_token' => {
        datatype => 'string',
        base_name => 'access_token',
        description => 'Access token authorizing the app to access resources on behalf of a user',
        format => '',
        read_only => '',
            },
    'api_key_shopify' => {
        datatype => 'string',
        base_name => 'apiKey_shopify',
        description => 'Shopify API Key',
        format => '',
        read_only => '',
            },
    'api_password' => {
        datatype => 'string',
        base_name => 'apiPassword',
        description => 'Shopify API Password',
        format => '',
        read_only => '',
            },
    'access_token_shopify' => {
        datatype => 'string',
        base_name => 'accessToken_shopify',
        description => 'Access token authorizing the app to access resources on behalf of a user',
        format => '',
        read_only => '',
            },
    'api_key' => {
        datatype => 'string',
        base_name => 'apiKey',
        description => 'Neto API Key',
        format => '',
        read_only => '',
            },
    'api_username' => {
        datatype => 'string',
        base_name => 'apiUsername',
        description => 'Neto User Name',
        format => '',
        read_only => '',
            },
    'encrypted_password' => {
        datatype => 'string',
        base_name => 'EncryptedPassword',
        description => 'Volusion API Password',
        format => '',
        read_only => '',
            },
    'login' => {
        datatype => 'string',
        base_name => 'Login',
        description => 'It&#39;s a Volusion account for which API is enabled',
        format => '',
        read_only => '',
            },
    'api_user_adnsf' => {
        datatype => 'string',
        base_name => 'apiUser_adnsf',
        description => 'It&#39;s a AspDotNetStorefront account for which API is available',
        format => '',
        read_only => '',
            },
    'api_pass' => {
        datatype => 'string',
        base_name => 'apiPass',
        description => 'AspDotNetStorefront API Password',
        format => '',
        read_only => '',
            },
    'private_key' => {
        datatype => 'string',
        base_name => 'privateKey',
        description => '3DCart Application Private Key',
        format => '',
        read_only => '',
            },
    'app_token' => {
        datatype => 'string',
        base_name => 'appToken',
        description => '3DCart Token from Application',
        format => '',
        read_only => '',
            },
    'etsy_keystring' => {
        datatype => 'string',
        base_name => 'etsy_keystring',
        description => 'Etsy keystring',
        format => '',
        read_only => '',
            },
    'etsy_shared_secret' => {
        datatype => 'string',
        base_name => 'etsy_shared_secret',
        description => 'Etsy shared secret',
        format => '',
        read_only => '',
            },
    'token_secret' => {
        datatype => 'string',
        base_name => 'tokenSecret',
        description => 'Secret token authorizing the app to access resources on behalf of a user',
        format => '',
        read_only => '',
            },
    'etsy_client_id' => {
        datatype => 'string',
        base_name => 'etsy_client_id',
        description => 'Etsy Client Id',
        format => '',
        read_only => '',
            },
    'etsy_refresh_token' => {
        datatype => 'string',
        base_name => 'etsy_refresh_token',
        description => 'Etsy Refresh token',
        format => '',
        read_only => '',
            },
    'ebay_client_id' => {
        datatype => 'string',
        base_name => 'ebay_client_id',
        description => 'Application ID (AppID).',
        format => '',
        read_only => '',
            },
    'ebay_client_secret' => {
        datatype => 'string',
        base_name => 'ebay_client_secret',
        description => 'Shared Secret from eBay application',
        format => '',
        read_only => '',
            },
    'ebay_runame' => {
        datatype => 'string',
        base_name => 'ebay_runame',
        description => 'The RuName value that eBay assigns to your application.',
        format => '',
        read_only => '',
            },
    'ebay_access_token' => {
        datatype => 'string',
        base_name => 'ebay_access_token',
        description => 'Used to authenticate API requests.',
        format => '',
        read_only => '',
            },
    'ebay_refresh_token' => {
        datatype => 'string',
        base_name => 'ebay_refresh_token',
        description => 'Used to renew the access token.',
        format => '',
        read_only => '',
            },
    'ebay_environment' => {
        datatype => 'string',
        base_name => 'ebay_environment',
        description => 'eBay environment',
        format => '',
        read_only => '',
            },
    'ebay_site_id' => {
        datatype => 'int',
        base_name => 'ebay_site_id',
        description => 'eBay global ID',
        format => '',
        read_only => '',
            },
    'dw_client_id' => {
        datatype => 'string',
        base_name => 'dw_client_id',
        description => 'Demandware client id',
        format => '',
        read_only => '',
            },
    'dw_api_pass' => {
        datatype => 'string',
        base_name => 'dw_api_pass',
        description => 'Demandware api password',
        format => '',
        read_only => '',
            },
    'demandware_user_name' => {
        datatype => 'string',
        base_name => 'demandware_user_name',
        description => 'Demandware user name',
        format => '',
        read_only => '',
            },
    'demandware_user_password' => {
        datatype => 'string',
        base_name => 'demandware_user_password',
        description => 'Demandware user password',
        format => '',
        read_only => '',
            },
    'store_id' => {
        datatype => 'string',
        base_name => 'store_id',
        description => 'Store Id',
        format => '',
        read_only => '',
            },
    'seller_id' => {
        datatype => 'string',
        base_name => 'seller_id',
        description => 'Seller Id',
        format => '',
        read_only => '',
            },
    'environment' => {
        datatype => 'string',
        base_name => 'environment',
        description => '',
        format => '',
        read_only => '',
            },
    'hybris_client_id' => {
        datatype => 'string',
        base_name => 'hybris_client_id',
        description => 'Omni Commerce Connector Client ID',
        format => '',
        read_only => '',
            },
    'hybris_client_secret' => {
        datatype => 'string',
        base_name => 'hybris_client_secret',
        description => 'Omni Commerce Connector Client Secret',
        format => '',
        read_only => '',
            },
    'hybris_username' => {
        datatype => 'string',
        base_name => 'hybris_username',
        description => 'User Name',
        format => '',
        read_only => '',
            },
    'hybris_password' => {
        datatype => 'string',
        base_name => 'hybris_password',
        description => 'User password',
        format => '',
        read_only => '',
            },
    'hybris_websites' => {
        datatype => 'ARRAY[AccountCartAddHybrisWebsitesInner]',
        base_name => 'hybris_websites',
        description => 'Websites to stores mapping data',
        format => '',
        read_only => '',
            },
    'walmart_client_id' => {
        datatype => 'string',
        base_name => 'walmart_client_id',
        description => 'Walmart client ID. For the region &#39;ca&#39; use Consumer ID',
        format => '',
        read_only => '',
            },
    'walmart_client_secret' => {
        datatype => 'string',
        base_name => 'walmart_client_secret',
        description => 'Walmart client secret. For the region &#39;ca&#39; use Private Key',
        format => '',
        read_only => '',
            },
    'walmart_environment' => {
        datatype => 'string',
        base_name => 'walmart_environment',
        description => 'Walmart environment',
        format => '',
        read_only => '',
            },
    'walmart_channel_type' => {
        datatype => 'string',
        base_name => 'walmart_channel_type',
        description => 'Walmart WM_CONSUMER.CHANNEL.TYPE header',
        format => '',
        read_only => '',
            },
    'walmart_region' => {
        datatype => 'string',
        base_name => 'walmart_region',
        description => 'Walmart region',
        format => '',
        read_only => '',
            },
    'lightspeed_api_key' => {
        datatype => 'string',
        base_name => 'lightspeed_api_key',
        description => 'LightSpeed api key',
        format => '',
        read_only => '',
            },
    'lightspeed_api_secret' => {
        datatype => 'string',
        base_name => 'lightspeed_api_secret',
        description => 'LightSpeed api secret',
        format => '',
        read_only => '',
            },
    'shoplazza_access_token' => {
        datatype => 'string',
        base_name => 'shoplazza_access_token',
        description => 'Access token authorizing the app to access resources on behalf of a user',
        format => '',
        read_only => '',
            },
    'shoplazza_shared_secret' => {
        datatype => 'string',
        base_name => 'shoplazza_shared_secret',
        description => 'Shared secret',
        format => '',
        read_only => '',
            },
    'shopware_access_key' => {
        datatype => 'string',
        base_name => 'shopware_access_key',
        description => 'Shopware access key',
        format => '',
        read_only => '',
            },
    'shopware_api_key' => {
        datatype => 'string',
        base_name => 'shopware_api_key',
        description => 'Shopware api key',
        format => '',
        read_only => '',
            },
    'shopware_api_secret' => {
        datatype => 'string',
        base_name => 'shopware_api_secret',
        description => 'Shopware client secret access key',
        format => '',
        read_only => '',
            },
    'commercehq_api_key' => {
        datatype => 'string',
        base_name => 'commercehq_api_key',
        description => 'CommerceHQ api key',
        format => '',
        read_only => '',
            },
    'commercehq_api_password' => {
        datatype => 'string',
        base_name => 'commercehq_api_password',
        description => 'CommerceHQ api password',
        format => '',
        read_only => '',
            },
    '_3dcart_private_key' => {
        datatype => 'string',
        base_name => '3dcart_private_key',
        description => '3DCart Private Key',
        format => '',
        read_only => '',
            },
    '_3dcart_access_token' => {
        datatype => 'string',
        base_name => '3dcart_access_token',
        description => '3DCart Token',
        format => '',
        read_only => '',
            },
    'wc_consumer_key' => {
        datatype => 'string',
        base_name => 'wc_consumer_key',
        description => 'Woocommerce consumer key',
        format => '',
        read_only => '',
            },
    'wc_consumer_secret' => {
        datatype => 'string',
        base_name => 'wc_consumer_secret',
        description => 'Woocommerce consumer secret',
        format => '',
        read_only => '',
            },
    'magento_consumer_key' => {
        datatype => 'string',
        base_name => 'magento_consumer_key',
        description => 'Magento Consumer Key',
        format => '',
        read_only => '',
            },
    'magento_consumer_secret' => {
        datatype => 'string',
        base_name => 'magento_consumer_secret',
        description => 'Magento Consumer Secret',
        format => '',
        read_only => '',
            },
    'magento_access_token' => {
        datatype => 'string',
        base_name => 'magento_access_token',
        description => 'Magento Access Token',
        format => '',
        read_only => '',
            },
    'magento_token_secret' => {
        datatype => 'string',
        base_name => 'magento_token_secret',
        description => 'Magento Token Secret',
        format => '',
        read_only => '',
            },
    'prestashop_webservice_key' => {
        datatype => 'string',
        base_name => 'prestashop_webservice_key',
        description => 'Prestashop webservice key',
        format => '',
        read_only => '',
            },
    'wix_app_id' => {
        datatype => 'string',
        base_name => 'wix_app_id',
        description => 'Wix App ID',
        format => '',
        read_only => '',
            },
    'wix_app_secret_key' => {
        datatype => 'string',
        base_name => 'wix_app_secret_key',
        description => 'Wix App Secret Key',
        format => '',
        read_only => '',
            },
    'wix_instance_id' => {
        datatype => 'string',
        base_name => 'wix_instance_id',
        description => 'Wix Instance ID',
        format => '',
        read_only => '',
            },
    'wix_refresh_token' => {
        datatype => 'string',
        base_name => 'wix_refresh_token',
        description => 'Wix refresh token',
        format => '',
        read_only => '',
            },
    'mercado_libre_app_id' => {
        datatype => 'string',
        base_name => 'mercado_libre_app_id',
        description => 'Mercado Libre App ID',
        format => '',
        read_only => '',
            },
    'mercado_libre_app_secret_key' => {
        datatype => 'string',
        base_name => 'mercado_libre_app_secret_key',
        description => 'Mercado Libre App Secret Key',
        format => '',
        read_only => '',
            },
    'mercado_libre_refresh_token' => {
        datatype => 'string',
        base_name => 'mercado_libre_refresh_token',
        description => 'Mercado Libre Refresh Token',
        format => '',
        read_only => '',
            },
    'zid_client_id' => {
        datatype => 'int',
        base_name => 'zid_client_id',
        description => 'Zid Client ID',
        format => '',
        read_only => '',
            },
    'zid_client_secret' => {
        datatype => 'string',
        base_name => 'zid_client_secret',
        description => 'Zid Client Secret',
        format => '',
        read_only => '',
            },
    'zid_access_token' => {
        datatype => 'string',
        base_name => 'zid_access_token',
        description => 'Zid Access Token',
        format => '',
        read_only => '',
            },
    'zid_authorization' => {
        datatype => 'string',
        base_name => 'zid_authorization',
        description => 'Zid Authorization',
        format => '',
        read_only => '',
            },
    'zid_refresh_token' => {
        datatype => 'string',
        base_name => 'zid_refresh_token',
        description => 'Zid refresh token',
        format => '',
        read_only => '',
            },
    'flipkart_client_id' => {
        datatype => 'string',
        base_name => 'flipkart_client_id',
        description => 'Flipkart Client ID',
        format => '',
        read_only => '',
            },
    'flipkart_client_secret' => {
        datatype => 'string',
        base_name => 'flipkart_client_secret',
        description => 'Flipkart Client Secret',
        format => '',
        read_only => '',
            },
    'allegro_client_id' => {
        datatype => 'string',
        base_name => 'allegro_client_id',
        description => 'Allegro Client ID',
        format => '',
        read_only => '',
            },
    'allegro_client_secret' => {
        datatype => 'string',
        base_name => 'allegro_client_secret',
        description => 'Allegro Client Secret',
        format => '',
        read_only => '',
            },
    'allegro_access_token' => {
        datatype => 'string',
        base_name => 'allegro_access_token',
        description => 'Allegro Access Token',
        format => '',
        read_only => '',
            },
    'allegro_refresh_token' => {
        datatype => 'string',
        base_name => 'allegro_refresh_token',
        description => 'Allegro Refresh Token',
        format => '',
        read_only => '',
            },
    'allegro_environment' => {
        datatype => 'string',
        base_name => 'allegro_environment',
        description => 'Allegro Environment',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'cart_id' => 'string',
    'store_url' => 'string',
    'bridge_url' => 'string',
    'store_root' => 'string',
    'store_key' => 'string',
    'shared_secret' => 'string',
    'validate_version' => 'boolean',
    'verify' => 'boolean',
    'db_tables_prefix' => 'string',
    'user_agent' => 'string',
    'ftp_host' => 'string',
    'ftp_user' => 'string',
    'ftp_password' => 'string',
    'ftp_port' => 'int',
    'ftp_store_dir' => 'string',
    'api_key_3dcart' => 'string',
    'admin_account' => 'string',
    'api_path' => 'string',
    'api_key_bigcommerce' => 'string',
    'client_id' => 'string',
    'access_token' => 'string',
    'context' => 'string',
    'access_token' => 'string',
    'api_key_shopify' => 'string',
    'api_password' => 'string',
    'access_token_shopify' => 'string',
    'api_key' => 'string',
    'api_username' => 'string',
    'encrypted_password' => 'string',
    'login' => 'string',
    'api_user_adnsf' => 'string',
    'api_pass' => 'string',
    'private_key' => 'string',
    'app_token' => 'string',
    'etsy_keystring' => 'string',
    'etsy_shared_secret' => 'string',
    'token_secret' => 'string',
    'etsy_client_id' => 'string',
    'etsy_refresh_token' => 'string',
    'ebay_client_id' => 'string',
    'ebay_client_secret' => 'string',
    'ebay_runame' => 'string',
    'ebay_access_token' => 'string',
    'ebay_refresh_token' => 'string',
    'ebay_environment' => 'string',
    'ebay_site_id' => 'int',
    'dw_client_id' => 'string',
    'dw_api_pass' => 'string',
    'demandware_user_name' => 'string',
    'demandware_user_password' => 'string',
    'store_id' => 'string',
    'seller_id' => 'string',
    'environment' => 'string',
    'hybris_client_id' => 'string',
    'hybris_client_secret' => 'string',
    'hybris_username' => 'string',
    'hybris_password' => 'string',
    'hybris_websites' => 'ARRAY[AccountCartAddHybrisWebsitesInner]',
    'walmart_client_id' => 'string',
    'walmart_client_secret' => 'string',
    'walmart_environment' => 'string',
    'walmart_channel_type' => 'string',
    'walmart_region' => 'string',
    'lightspeed_api_key' => 'string',
    'lightspeed_api_secret' => 'string',
    'shoplazza_access_token' => 'string',
    'shoplazza_shared_secret' => 'string',
    'shopware_access_key' => 'string',
    'shopware_api_key' => 'string',
    'shopware_api_secret' => 'string',
    'commercehq_api_key' => 'string',
    'commercehq_api_password' => 'string',
    '_3dcart_private_key' => 'string',
    '_3dcart_access_token' => 'string',
    'wc_consumer_key' => 'string',
    'wc_consumer_secret' => 'string',
    'magento_consumer_key' => 'string',
    'magento_consumer_secret' => 'string',
    'magento_access_token' => 'string',
    'magento_token_secret' => 'string',
    'prestashop_webservice_key' => 'string',
    'wix_app_id' => 'string',
    'wix_app_secret_key' => 'string',
    'wix_instance_id' => 'string',
    'wix_refresh_token' => 'string',
    'mercado_libre_app_id' => 'string',
    'mercado_libre_app_secret_key' => 'string',
    'mercado_libre_refresh_token' => 'string',
    'zid_client_id' => 'int',
    'zid_client_secret' => 'string',
    'zid_access_token' => 'string',
    'zid_authorization' => 'string',
    'zid_refresh_token' => 'string',
    'flipkart_client_id' => 'string',
    'flipkart_client_secret' => 'string',
    'allegro_client_id' => 'string',
    'allegro_client_secret' => 'string',
    'allegro_access_token' => 'string',
    'allegro_refresh_token' => 'string',
    'allegro_environment' => 'string'
} );

__PACKAGE__->attribute_map( {
    'cart_id' => 'cart_id',
    'store_url' => 'store_url',
    'bridge_url' => 'bridge_url',
    'store_root' => 'store_root',
    'store_key' => 'store_key',
    'shared_secret' => 'shared_secret',
    'validate_version' => 'validate_version',
    'verify' => 'verify',
    'db_tables_prefix' => 'db_tables_prefix',
    'user_agent' => 'user_agent',
    'ftp_host' => 'ftp_host',
    'ftp_user' => 'ftp_user',
    'ftp_password' => 'ftp_password',
    'ftp_port' => 'ftp_port',
    'ftp_store_dir' => 'ftp_store_dir',
    'api_key_3dcart' => 'apiKey_3dcart',
    'admin_account' => 'AdminAccount',
    'api_path' => 'ApiPath',
    'api_key_bigcommerce' => 'ApiKey_Bigcommerce',
    'client_id' => 'client_id',
    'access_token' => 'accessToken',
    'context' => 'context',
    'access_token' => 'access_token',
    'api_key_shopify' => 'apiKey_shopify',
    'api_password' => 'apiPassword',
    'access_token_shopify' => 'accessToken_shopify',
    'api_key' => 'apiKey',
    'api_username' => 'apiUsername',
    'encrypted_password' => 'EncryptedPassword',
    'login' => 'Login',
    'api_user_adnsf' => 'apiUser_adnsf',
    'api_pass' => 'apiPass',
    'private_key' => 'privateKey',
    'app_token' => 'appToken',
    'etsy_keystring' => 'etsy_keystring',
    'etsy_shared_secret' => 'etsy_shared_secret',
    'token_secret' => 'tokenSecret',
    'etsy_client_id' => 'etsy_client_id',
    'etsy_refresh_token' => 'etsy_refresh_token',
    'ebay_client_id' => 'ebay_client_id',
    'ebay_client_secret' => 'ebay_client_secret',
    'ebay_runame' => 'ebay_runame',
    'ebay_access_token' => 'ebay_access_token',
    'ebay_refresh_token' => 'ebay_refresh_token',
    'ebay_environment' => 'ebay_environment',
    'ebay_site_id' => 'ebay_site_id',
    'dw_client_id' => 'dw_client_id',
    'dw_api_pass' => 'dw_api_pass',
    'demandware_user_name' => 'demandware_user_name',
    'demandware_user_password' => 'demandware_user_password',
    'store_id' => 'store_id',
    'seller_id' => 'seller_id',
    'environment' => 'environment',
    'hybris_client_id' => 'hybris_client_id',
    'hybris_client_secret' => 'hybris_client_secret',
    'hybris_username' => 'hybris_username',
    'hybris_password' => 'hybris_password',
    'hybris_websites' => 'hybris_websites',
    'walmart_client_id' => 'walmart_client_id',
    'walmart_client_secret' => 'walmart_client_secret',
    'walmart_environment' => 'walmart_environment',
    'walmart_channel_type' => 'walmart_channel_type',
    'walmart_region' => 'walmart_region',
    'lightspeed_api_key' => 'lightspeed_api_key',
    'lightspeed_api_secret' => 'lightspeed_api_secret',
    'shoplazza_access_token' => 'shoplazza_access_token',
    'shoplazza_shared_secret' => 'shoplazza_shared_secret',
    'shopware_access_key' => 'shopware_access_key',
    'shopware_api_key' => 'shopware_api_key',
    'shopware_api_secret' => 'shopware_api_secret',
    'commercehq_api_key' => 'commercehq_api_key',
    'commercehq_api_password' => 'commercehq_api_password',
    '_3dcart_private_key' => '3dcart_private_key',
    '_3dcart_access_token' => '3dcart_access_token',
    'wc_consumer_key' => 'wc_consumer_key',
    'wc_consumer_secret' => 'wc_consumer_secret',
    'magento_consumer_key' => 'magento_consumer_key',
    'magento_consumer_secret' => 'magento_consumer_secret',
    'magento_access_token' => 'magento_access_token',
    'magento_token_secret' => 'magento_token_secret',
    'prestashop_webservice_key' => 'prestashop_webservice_key',
    'wix_app_id' => 'wix_app_id',
    'wix_app_secret_key' => 'wix_app_secret_key',
    'wix_instance_id' => 'wix_instance_id',
    'wix_refresh_token' => 'wix_refresh_token',
    'mercado_libre_app_id' => 'mercado_libre_app_id',
    'mercado_libre_app_secret_key' => 'mercado_libre_app_secret_key',
    'mercado_libre_refresh_token' => 'mercado_libre_refresh_token',
    'zid_client_id' => 'zid_client_id',
    'zid_client_secret' => 'zid_client_secret',
    'zid_access_token' => 'zid_access_token',
    'zid_authorization' => 'zid_authorization',
    'zid_refresh_token' => 'zid_refresh_token',
    'flipkart_client_id' => 'flipkart_client_id',
    'flipkart_client_secret' => 'flipkart_client_secret',
    'allegro_client_id' => 'allegro_client_id',
    'allegro_client_secret' => 'allegro_client_secret',
    'allegro_access_token' => 'allegro_access_token',
    'allegro_refresh_token' => 'allegro_refresh_token',
    'allegro_environment' => 'allegro_environment'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
