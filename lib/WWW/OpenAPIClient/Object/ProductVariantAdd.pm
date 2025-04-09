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
package WWW::OpenAPIClient::Object::ProductVariantAdd;

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

use WWW::OpenAPIClient::Object::ProductAddTierPricesInner;
use WWW::OpenAPIClient::Object::ProductVariantAddAttributesInner;

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
                                  class => 'ProductVariantAdd',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'product_id' => {
        datatype => 'string',
        base_name => 'product_id',
        description => 'Defines product&#39;s id where the variant has to be added',
        format => '',
        read_only => '',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'Defines variant&#39;s name that has to be added',
        format => '',
        read_only => '',
            },
    'model' => {
        datatype => 'string',
        base_name => 'model',
        description => 'Specifies variant&#39;s model that has to be added',
        format => '',
        read_only => '',
            },
    'sku' => {
        datatype => 'string',
        base_name => 'sku',
        description => 'Defines variant&#39;s sku that has to be added',
        format => '',
        read_only => '',
            },
    'barcode' => {
        datatype => 'string',
        base_name => 'barcode',
        description => 'A barcode is a unique code composed of numbers used as a product identifier.',
        format => '',
        read_only => '',
            },
    'gtin' => {
        datatype => 'string',
        base_name => 'gtin',
        description => 'Global Trade Item Number. An GTIN is an identifier for trade items.',
        format => '',
        read_only => '',
            },
    'price' => {
        datatype => 'double',
        base_name => 'price',
        description => 'Defines new product&#39;s variant price',
        format => '',
        read_only => '',
            },
    'old_price' => {
        datatype => 'double',
        base_name => 'old_price',
        description => 'Defines product&#39;s old price',
        format => '',
        read_only => '',
            },
    'cost_price' => {
        datatype => 'double',
        base_name => 'cost_price',
        description => 'Defines new product&#39;s cost price',
        format => '',
        read_only => '',
            },
    'fixed_cost_shipping_price' => {
        datatype => 'double',
        base_name => 'fixed_cost_shipping_price',
        description => 'Specifies fixed cost shipping price',
        format => '',
        read_only => '',
            },
    'attributes' => {
        datatype => 'ARRAY[ProductVariantAddAttributesInner]',
        base_name => 'attributes',
        description => 'Defines variant&#39;s attributes list',
        format => '',
        read_only => '',
            },
    'description' => {
        datatype => 'string',
        base_name => 'description',
        description => 'Specifies variant&#39;s description',
        format => '',
        read_only => '',
            },
    'special_price' => {
        datatype => 'double',
        base_name => 'special_price',
        description => 'Specifies variant&#39;s model that has to be added',
        format => '',
        read_only => '',
            },
    'sprice_create' => {
        datatype => 'string',
        base_name => 'sprice_create',
        description => 'Defines the date of special price creation',
        format => '',
        read_only => '',
            },
    'sprice_modified' => {
        datatype => 'string',
        base_name => 'sprice_modified',
        description => 'Defines the date of special price modification',
        format => '',
        read_only => '',
            },
    'sprice_expire' => {
        datatype => 'string',
        base_name => 'sprice_expire',
        description => 'Defines the term of special price offer duration',
        format => '',
        read_only => '',
            },
    'available_for_view' => {
        datatype => 'boolean',
        base_name => 'available_for_view',
        description => 'Specifies the set of visible/invisible product&#39;s variants for users',
        format => '',
        read_only => '',
            },
    'available_for_sale' => {
        datatype => 'boolean',
        base_name => 'available_for_sale',
        description => 'Specifies the set of visible/invisible product&#39;s variants for sale',
        format => '',
        read_only => '',
            },
    'weight' => {
        datatype => 'double',
        base_name => 'weight',
        description => 'Weight',
        format => '',
        read_only => '',
            },
    'width' => {
        datatype => 'double',
        base_name => 'width',
        description => 'Defines product&#39;s width',
        format => '',
        read_only => '',
            },
    'height' => {
        datatype => 'double',
        base_name => 'height',
        description => 'Defines product&#39;s height',
        format => '',
        read_only => '',
            },
    'length' => {
        datatype => 'double',
        base_name => 'length',
        description => 'Defines product&#39;s length',
        format => '',
        read_only => '',
            },
    'weight_unit' => {
        datatype => 'string',
        base_name => 'weight_unit',
        description => 'Weight Unit',
        format => '',
        read_only => '',
            },
    'short_description' => {
        datatype => 'string',
        base_name => 'short_description',
        description => 'Defines short description',
        format => '',
        read_only => '',
            },
    'warehouse_id' => {
        datatype => 'string',
        base_name => 'warehouse_id',
        description => 'This parameter is used for selecting a warehouse where you need to set/modify a product quantity.',
        format => '',
        read_only => '',
            },
    'quantity' => {
        datatype => 'double',
        base_name => 'quantity',
        description => 'Defines product variant&#39;s quantity that has to be added',
        format => '',
        read_only => '',
            },
    'created_at' => {
        datatype => 'string',
        base_name => 'created_at',
        description => 'Defines the date of entity creation',
        format => '',
        read_only => '',
            },
    'manufacturer' => {
        datatype => 'string',
        base_name => 'manufacturer',
        description => 'Specifies the product variant&#39;s manufacturer',
        format => '',
        read_only => '',
            },
    'tax_class_id' => {
        datatype => 'string',
        base_name => 'tax_class_id',
        description => 'Defines tax classes where entity has to be added',
        format => '',
        read_only => '',
            },
    'meta_title' => {
        datatype => 'string',
        base_name => 'meta_title',
        description => 'Defines unique meta title for each entity',
        format => '',
        read_only => '',
            },
    'meta_keywords' => {
        datatype => 'string',
        base_name => 'meta_keywords',
        description => 'Defines unique meta keywords for each entity',
        format => '',
        read_only => '',
            },
    'meta_description' => {
        datatype => 'string',
        base_name => 'meta_description',
        description => 'Defines unique meta description of a entity',
        format => '',
        read_only => '',
            },
    'url' => {
        datatype => 'string',
        base_name => 'url',
        description => 'Defines unique product variant&#39;s URL',
        format => '',
        read_only => '',
            },
    'store_id' => {
        datatype => 'string',
        base_name => 'store_id',
        description => 'Add variants specified by store id',
        format => '',
        read_only => '',
            },
    'lang_id' => {
        datatype => 'string',
        base_name => 'lang_id',
        description => 'Language id',
        format => '',
        read_only => '',
            },
    'clear_cache' => {
        datatype => 'boolean',
        base_name => 'clear_cache',
        description => 'Is cache clear required',
        format => '',
        read_only => '',
            },
    'taxable' => {
        datatype => 'boolean',
        base_name => 'taxable',
        description => 'Specifies whether a tax is charged',
        format => '',
        read_only => '',
            },
    'harmonized_system_code' => {
        datatype => 'string',
        base_name => 'harmonized_system_code',
        description => 'Harmonized System Code. An HSC is a 6-digit identifier that allows participating countries to classify traded goods on a common basis for customs purposes',
        format => '',
        read_only => '',
            },
    'country_of_origin' => {
        datatype => 'string',
        base_name => 'country_of_origin',
        description => 'The country where the inventory item was made',
        format => '',
        read_only => '',
            },
    'manage_stock' => {
        datatype => 'boolean',
        base_name => 'manage_stock',
        description => 'Defines inventory tracking for product variant',
        format => '',
        read_only => '',
            },
    'upc' => {
        datatype => 'string',
        base_name => 'upc',
        description => 'Universal Product Code. A UPC (UPC-A) is a commonly used identifer for many different products.',
        format => '',
        read_only => '',
            },
    'mpn' => {
        datatype => 'string',
        base_name => 'mpn',
        description => 'Manufacturer Part Number. A MPN is an identifier of a particular part design or material used.',
        format => '',
        read_only => '',
            },
    'ean' => {
        datatype => 'string',
        base_name => 'ean',
        description => 'European Article Number. An EAN is a unique 8 or 13-digit identifier that many industries (such as book publishers) use to identify products.',
        format => '',
        read_only => '',
            },
    'isbn' => {
        datatype => 'string',
        base_name => 'isbn',
        description => 'International Standard Book Number. An ISBN is a unique identifier for books.',
        format => '',
        read_only => '',
            },
    'stores_ids' => {
        datatype => 'string',
        base_name => 'stores_ids',
        description => 'Assign variant to the stores that is specified by comma-separated stores&#39; id',
        format => '',
        read_only => '',
            },
    'is_default' => {
        datatype => 'boolean',
        base_name => 'is_default',
        description => 'Defines as a default variant',
        format => '',
        read_only => '',
            },
    'is_free_shipping' => {
        datatype => 'boolean',
        base_name => 'is_free_shipping',
        description => 'Specifies variant&#39;s free shipping flag that has to be added',
        format => '',
        read_only => '',
            },
    'marketplace_item_properties' => {
        datatype => 'string',
        base_name => 'marketplace_item_properties',
        description => 'String containing the JSON representation of the supplied data',
        format => '',
        read_only => '',
            },
    'in_stock' => {
        datatype => 'boolean',
        base_name => 'in_stock',
        description => 'Set stock status',
        format => '',
        read_only => '',
            },
    'backorder_status' => {
        datatype => 'string',
        base_name => 'backorder_status',
        description => 'Set backorder status',
        format => '',
        read_only => '',
            },
    'tier_prices' => {
        datatype => 'ARRAY[ProductAddTierPricesInner]',
        base_name => 'tier_prices',
        description => 'Defines product&#39;s tier prices',
        format => '',
        read_only => '',
            },
    'is_virtual' => {
        datatype => 'boolean',
        base_name => 'is_virtual',
        description => 'Defines whether the product is virtual',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'product_id' => 'string',
    'name' => 'string',
    'model' => 'string',
    'sku' => 'string',
    'barcode' => 'string',
    'gtin' => 'string',
    'price' => 'double',
    'old_price' => 'double',
    'cost_price' => 'double',
    'fixed_cost_shipping_price' => 'double',
    'attributes' => 'ARRAY[ProductVariantAddAttributesInner]',
    'description' => 'string',
    'special_price' => 'double',
    'sprice_create' => 'string',
    'sprice_modified' => 'string',
    'sprice_expire' => 'string',
    'available_for_view' => 'boolean',
    'available_for_sale' => 'boolean',
    'weight' => 'double',
    'width' => 'double',
    'height' => 'double',
    'length' => 'double',
    'weight_unit' => 'string',
    'short_description' => 'string',
    'warehouse_id' => 'string',
    'quantity' => 'double',
    'created_at' => 'string',
    'manufacturer' => 'string',
    'tax_class_id' => 'string',
    'meta_title' => 'string',
    'meta_keywords' => 'string',
    'meta_description' => 'string',
    'url' => 'string',
    'store_id' => 'string',
    'lang_id' => 'string',
    'clear_cache' => 'boolean',
    'taxable' => 'boolean',
    'harmonized_system_code' => 'string',
    'country_of_origin' => 'string',
    'manage_stock' => 'boolean',
    'upc' => 'string',
    'mpn' => 'string',
    'ean' => 'string',
    'isbn' => 'string',
    'stores_ids' => 'string',
    'is_default' => 'boolean',
    'is_free_shipping' => 'boolean',
    'marketplace_item_properties' => 'string',
    'in_stock' => 'boolean',
    'backorder_status' => 'string',
    'tier_prices' => 'ARRAY[ProductAddTierPricesInner]',
    'is_virtual' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'product_id' => 'product_id',
    'name' => 'name',
    'model' => 'model',
    'sku' => 'sku',
    'barcode' => 'barcode',
    'gtin' => 'gtin',
    'price' => 'price',
    'old_price' => 'old_price',
    'cost_price' => 'cost_price',
    'fixed_cost_shipping_price' => 'fixed_cost_shipping_price',
    'attributes' => 'attributes',
    'description' => 'description',
    'special_price' => 'special_price',
    'sprice_create' => 'sprice_create',
    'sprice_modified' => 'sprice_modified',
    'sprice_expire' => 'sprice_expire',
    'available_for_view' => 'available_for_view',
    'available_for_sale' => 'available_for_sale',
    'weight' => 'weight',
    'width' => 'width',
    'height' => 'height',
    'length' => 'length',
    'weight_unit' => 'weight_unit',
    'short_description' => 'short_description',
    'warehouse_id' => 'warehouse_id',
    'quantity' => 'quantity',
    'created_at' => 'created_at',
    'manufacturer' => 'manufacturer',
    'tax_class_id' => 'tax_class_id',
    'meta_title' => 'meta_title',
    'meta_keywords' => 'meta_keywords',
    'meta_description' => 'meta_description',
    'url' => 'url',
    'store_id' => 'store_id',
    'lang_id' => 'lang_id',
    'clear_cache' => 'clear_cache',
    'taxable' => 'taxable',
    'harmonized_system_code' => 'harmonized_system_code',
    'country_of_origin' => 'country_of_origin',
    'manage_stock' => 'manage_stock',
    'upc' => 'upc',
    'mpn' => 'mpn',
    'ean' => 'ean',
    'isbn' => 'isbn',
    'stores_ids' => 'stores_ids',
    'is_default' => 'is_default',
    'is_free_shipping' => 'is_free_shipping',
    'marketplace_item_properties' => 'marketplace_item_properties',
    'in_stock' => 'in_stock',
    'backorder_status' => 'backorder_status',
    'tier_prices' => 'tier_prices',
    'is_virtual' => 'is_virtual'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
