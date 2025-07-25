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
package WWW::OpenAPIClient::Object::Child;

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

use WWW::OpenAPIClient::Object::A2CDateTime;
use WWW::OpenAPIClient::Object::Discount;
use WWW::OpenAPIClient::Object::Image;
use WWW::OpenAPIClient::Object::ProductAdvancedPrice;
use WWW::OpenAPIClient::Object::ProductChildItemCombination;
use WWW::OpenAPIClient::Object::ProductInventory;

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
                                  class => 'Child',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => '',
        format => '',
        read_only => '',
            },
    'parent_id' => {
        datatype => 'string',
        base_name => 'parent_id',
        description => '',
        format => '',
        read_only => '',
            },
    'sku' => {
        datatype => 'string',
        base_name => 'sku',
        description => '',
        format => '',
        read_only => '',
            },
    'upc' => {
        datatype => 'string',
        base_name => 'upc',
        description => '',
        format => '',
        read_only => '',
            },
    'ean' => {
        datatype => 'string',
        base_name => 'ean',
        description => '',
        format => '',
        read_only => '',
            },
    'mpn' => {
        datatype => 'string',
        base_name => 'mpn',
        description => '',
        format => '',
        read_only => '',
            },
    'gtin' => {
        datatype => 'string',
        base_name => 'gtin',
        description => '',
        format => '',
        read_only => '',
            },
    'isbn' => {
        datatype => 'string',
        base_name => 'isbn',
        description => '',
        format => '',
        read_only => '',
            },
    'url' => {
        datatype => 'string',
        base_name => 'url',
        description => '',
        format => '',
        read_only => '',
            },
    'seo_url' => {
        datatype => 'string',
        base_name => 'seo_url',
        description => '',
        format => '',
        read_only => '',
            },
    'sort_order' => {
        datatype => 'int',
        base_name => 'sort_order',
        description => '',
        format => '',
        read_only => '',
            },
    'created_time' => {
        datatype => 'A2CDateTime',
        base_name => 'created_time',
        description => '',
        format => '',
        read_only => '',
            },
    'modified_time' => {
        datatype => 'A2CDateTime',
        base_name => 'modified_time',
        description => '',
        format => '',
        read_only => '',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => '',
        format => '',
        read_only => '',
            },
    'short_description' => {
        datatype => 'string',
        base_name => 'short_description',
        description => '',
        format => '',
        read_only => '',
            },
    'full_description' => {
        datatype => 'string',
        base_name => 'full_description',
        description => '',
        format => '',
        read_only => '',
            },
    'images' => {
        datatype => 'ARRAY[Image]',
        base_name => 'images',
        description => '',
        format => '',
        read_only => '',
            },
    'combination' => {
        datatype => 'ARRAY[ProductChildItemCombination]',
        base_name => 'combination',
        description => '',
        format => '',
        read_only => '',
            },
    'default_price' => {
        datatype => 'double',
        base_name => 'default_price',
        description => '',
        format => '',
        read_only => '',
            },
    'cost_price' => {
        datatype => 'double',
        base_name => 'cost_price',
        description => '',
        format => '',
        read_only => '',
            },
    'list_price' => {
        datatype => 'double',
        base_name => 'list_price',
        description => '',
        format => '',
        read_only => '',
            },
    'wholesale_price' => {
        datatype => 'double',
        base_name => 'wholesale_price',
        description => '',
        format => '',
        read_only => '',
            },
    'advanced_price' => {
        datatype => 'ARRAY[ProductAdvancedPrice]',
        base_name => 'advanced_price',
        description => '',
        format => '',
        read_only => '',
            },
    'tax_class_id' => {
        datatype => 'string',
        base_name => 'tax_class_id',
        description => '',
        format => '',
        read_only => '',
            },
    'avail_for_sale' => {
        datatype => 'boolean',
        base_name => 'avail_for_sale',
        description => '',
        format => '',
        read_only => '',
            },
    'allow_backorders' => {
        datatype => 'boolean',
        base_name => 'allow_backorders',
        description => '',
        format => '',
        read_only => '',
            },
    'in_stock' => {
        datatype => 'boolean',
        base_name => 'in_stock',
        description => '',
        format => '',
        read_only => '',
            },
    'on_sale' => {
        datatype => 'boolean',
        base_name => 'on_sale',
        description => '',
        format => '',
        read_only => '',
            },
    'manage_stock' => {
        datatype => 'boolean',
        base_name => 'manage_stock',
        description => '',
        format => '',
        read_only => '',
            },
    'inventory_level' => {
        datatype => 'double',
        base_name => 'inventory_level',
        description => '',
        format => '',
        read_only => '',
            },
    'inventory' => {
        datatype => 'ARRAY[ProductInventory]',
        base_name => 'inventory',
        description => '',
        format => '',
        read_only => '',
            },
    'min_quantity' => {
        datatype => 'double',
        base_name => 'min_quantity',
        description => '',
        format => '',
        read_only => '',
            },
    'default_qty_in_pack' => {
        datatype => 'double',
        base_name => 'default_qty_in_pack',
        description => '',
        format => '',
        read_only => '',
            },
    'is_qty_in_pack_fixed' => {
        datatype => 'boolean',
        base_name => 'is_qty_in_pack_fixed',
        description => '',
        format => '',
        read_only => '',
            },
    'weight_unit' => {
        datatype => 'string',
        base_name => 'weight_unit',
        description => '',
        format => '',
        read_only => '',
            },
    'weight' => {
        datatype => 'double',
        base_name => 'weight',
        description => '',
        format => '',
        read_only => '',
            },
    'dimensions_unit' => {
        datatype => 'string',
        base_name => 'dimensions_unit',
        description => '',
        format => '',
        read_only => '',
            },
    'width' => {
        datatype => 'double',
        base_name => 'width',
        description => '',
        format => '',
        read_only => '',
            },
    'height' => {
        datatype => 'double',
        base_name => 'height',
        description => '',
        format => '',
        read_only => '',
            },
    'length' => {
        datatype => 'double',
        base_name => 'length',
        description => '',
        format => '',
        read_only => '',
            },
    'meta_title' => {
        datatype => 'string',
        base_name => 'meta_title',
        description => '',
        format => '',
        read_only => '',
            },
    'meta_description' => {
        datatype => 'string',
        base_name => 'meta_description',
        description => '',
        format => '',
        read_only => '',
            },
    'meta_keywords' => {
        datatype => 'string',
        base_name => 'meta_keywords',
        description => '',
        format => '',
        read_only => '',
            },
    'discounts' => {
        datatype => 'ARRAY[Discount]',
        base_name => 'discounts',
        description => '',
        format => '',
        read_only => '',
            },
    'is_virtual' => {
        datatype => 'boolean',
        base_name => 'is_virtual',
        description => '',
        format => '',
        read_only => '',
            },
    'additional_fields' => {
        datatype => 'object',
        base_name => 'additional_fields',
        description => '',
        format => '',
        read_only => '',
            },
    'custom_fields' => {
        datatype => 'object',
        base_name => 'custom_fields',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'id' => 'string',
    'parent_id' => 'string',
    'sku' => 'string',
    'upc' => 'string',
    'ean' => 'string',
    'mpn' => 'string',
    'gtin' => 'string',
    'isbn' => 'string',
    'url' => 'string',
    'seo_url' => 'string',
    'sort_order' => 'int',
    'created_time' => 'A2CDateTime',
    'modified_time' => 'A2CDateTime',
    'name' => 'string',
    'short_description' => 'string',
    'full_description' => 'string',
    'images' => 'ARRAY[Image]',
    'combination' => 'ARRAY[ProductChildItemCombination]',
    'default_price' => 'double',
    'cost_price' => 'double',
    'list_price' => 'double',
    'wholesale_price' => 'double',
    'advanced_price' => 'ARRAY[ProductAdvancedPrice]',
    'tax_class_id' => 'string',
    'avail_for_sale' => 'boolean',
    'allow_backorders' => 'boolean',
    'in_stock' => 'boolean',
    'on_sale' => 'boolean',
    'manage_stock' => 'boolean',
    'inventory_level' => 'double',
    'inventory' => 'ARRAY[ProductInventory]',
    'min_quantity' => 'double',
    'default_qty_in_pack' => 'double',
    'is_qty_in_pack_fixed' => 'boolean',
    'weight_unit' => 'string',
    'weight' => 'double',
    'dimensions_unit' => 'string',
    'width' => 'double',
    'height' => 'double',
    'length' => 'double',
    'meta_title' => 'string',
    'meta_description' => 'string',
    'meta_keywords' => 'string',
    'discounts' => 'ARRAY[Discount]',
    'is_virtual' => 'boolean',
    'additional_fields' => 'object',
    'custom_fields' => 'object'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'parent_id' => 'parent_id',
    'sku' => 'sku',
    'upc' => 'upc',
    'ean' => 'ean',
    'mpn' => 'mpn',
    'gtin' => 'gtin',
    'isbn' => 'isbn',
    'url' => 'url',
    'seo_url' => 'seo_url',
    'sort_order' => 'sort_order',
    'created_time' => 'created_time',
    'modified_time' => 'modified_time',
    'name' => 'name',
    'short_description' => 'short_description',
    'full_description' => 'full_description',
    'images' => 'images',
    'combination' => 'combination',
    'default_price' => 'default_price',
    'cost_price' => 'cost_price',
    'list_price' => 'list_price',
    'wholesale_price' => 'wholesale_price',
    'advanced_price' => 'advanced_price',
    'tax_class_id' => 'tax_class_id',
    'avail_for_sale' => 'avail_for_sale',
    'allow_backorders' => 'allow_backorders',
    'in_stock' => 'in_stock',
    'on_sale' => 'on_sale',
    'manage_stock' => 'manage_stock',
    'inventory_level' => 'inventory_level',
    'inventory' => 'inventory',
    'min_quantity' => 'min_quantity',
    'default_qty_in_pack' => 'default_qty_in_pack',
    'is_qty_in_pack_fixed' => 'is_qty_in_pack_fixed',
    'weight_unit' => 'weight_unit',
    'weight' => 'weight',
    'dimensions_unit' => 'dimensions_unit',
    'width' => 'width',
    'height' => 'height',
    'length' => 'length',
    'meta_title' => 'meta_title',
    'meta_description' => 'meta_description',
    'meta_keywords' => 'meta_keywords',
    'discounts' => 'discounts',
    'is_virtual' => 'is_virtual',
    'additional_fields' => 'additional_fields',
    'custom_fields' => 'custom_fields'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
