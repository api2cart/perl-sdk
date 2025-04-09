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
package WWW::OpenAPIClient::Object::Order;

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
use WWW::OpenAPIClient::Object::BaseCustomer;
use WWW::OpenAPIClient::Object::Currency;
use WWW::OpenAPIClient::Object::CustomerAddress;
use WWW::OpenAPIClient::Object::OrderItem;
use WWW::OpenAPIClient::Object::OrderPaymentMethod;
use WWW::OpenAPIClient::Object::OrderRefund;
use WWW::OpenAPIClient::Object::OrderShippingMethod;
use WWW::OpenAPIClient::Object::OrderStatus;
use WWW::OpenAPIClient::Object::OrderTotal;
use WWW::OpenAPIClient::Object::OrderTotals;
use WWW::OpenAPIClient::Object::OrderTotalsNewDiscount;

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
                                  class => 'Order',
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
    'order_id' => {
        datatype => 'string',
        base_name => 'order_id',
        description => '',
        format => '',
        read_only => '',
            },
    'basket_id' => {
        datatype => 'string',
        base_name => 'basket_id',
        description => '',
        format => '',
        read_only => '',
            },
    'channel_id' => {
        datatype => 'string',
        base_name => 'channel_id',
        description => '',
        format => '',
        read_only => '',
            },
    'customer' => {
        datatype => 'BaseCustomer',
        base_name => 'customer',
        description => '',
        format => '',
        read_only => '',
            },
    'create_at' => {
        datatype => 'A2CDateTime',
        base_name => 'create_at',
        description => '',
        format => '',
        read_only => '',
            },
    'currency' => {
        datatype => 'Currency',
        base_name => 'currency',
        description => '',
        format => '',
        read_only => '',
            },
    'shipping_address' => {
        datatype => 'CustomerAddress',
        base_name => 'shipping_address',
        description => '',
        format => '',
        read_only => '',
            },
    'billing_address' => {
        datatype => 'CustomerAddress',
        base_name => 'billing_address',
        description => '',
        format => '',
        read_only => '',
            },
    'payment_method' => {
        datatype => 'OrderPaymentMethod',
        base_name => 'payment_method',
        description => '',
        format => '',
        read_only => '',
            },
    'shipping_method' => {
        datatype => 'OrderShippingMethod',
        base_name => 'shipping_method',
        description => '',
        format => '',
        read_only => '',
            },
    'shipping_methods' => {
        datatype => 'ARRAY[OrderShippingMethod]',
        base_name => 'shipping_methods',
        description => '',
        format => '',
        read_only => '',
            },
    'status' => {
        datatype => 'OrderStatus',
        base_name => 'status',
        description => '',
        format => '',
        read_only => '',
            },
    'totals' => {
        datatype => 'OrderTotals',
        base_name => 'totals',
        description => '',
        format => '',
        read_only => '',
            },
    'total' => {
        datatype => 'OrderTotal',
        base_name => 'total',
        description => '',
        format => '',
        read_only => '',
            },
    'discounts' => {
        datatype => 'ARRAY[OrderTotalsNewDiscount]',
        base_name => 'discounts',
        description => '',
        format => '',
        read_only => '',
            },
    'order_products' => {
        datatype => 'ARRAY[OrderItem]',
        base_name => 'order_products',
        description => '',
        format => '',
        read_only => '',
            },
    'bundles' => {
        datatype => 'ARRAY[OrderItem]',
        base_name => 'bundles',
        description => '',
        format => '',
        read_only => '',
            },
    'modified_at' => {
        datatype => 'A2CDateTime',
        base_name => 'modified_at',
        description => '',
        format => '',
        read_only => '',
            },
    'finished_time' => {
        datatype => 'A2CDateTime',
        base_name => 'finished_time',
        description => '',
        format => '',
        read_only => '',
            },
    'comment' => {
        datatype => 'string',
        base_name => 'comment',
        description => '',
        format => '',
        read_only => '',
            },
    'store_id' => {
        datatype => 'string',
        base_name => 'store_id',
        description => '',
        format => '',
        read_only => '',
            },
    'warehouses_ids' => {
        datatype => 'ARRAY[string]',
        base_name => 'warehouses_ids',
        description => '',
        format => '',
        read_only => '',
            },
    'refunds' => {
        datatype => 'ARRAY[OrderRefund]',
        base_name => 'refunds',
        description => '',
        format => '',
        read_only => '',
            },
    'gift_message' => {
        datatype => 'string',
        base_name => 'gift_message',
        description => '',
        format => '',
        read_only => '',
            },
    'order_details_url' => {
        datatype => 'string',
        base_name => 'order_details_url',
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
    'order_id' => 'string',
    'basket_id' => 'string',
    'channel_id' => 'string',
    'customer' => 'BaseCustomer',
    'create_at' => 'A2CDateTime',
    'currency' => 'Currency',
    'shipping_address' => 'CustomerAddress',
    'billing_address' => 'CustomerAddress',
    'payment_method' => 'OrderPaymentMethod',
    'shipping_method' => 'OrderShippingMethod',
    'shipping_methods' => 'ARRAY[OrderShippingMethod]',
    'status' => 'OrderStatus',
    'totals' => 'OrderTotals',
    'total' => 'OrderTotal',
    'discounts' => 'ARRAY[OrderTotalsNewDiscount]',
    'order_products' => 'ARRAY[OrderItem]',
    'bundles' => 'ARRAY[OrderItem]',
    'modified_at' => 'A2CDateTime',
    'finished_time' => 'A2CDateTime',
    'comment' => 'string',
    'store_id' => 'string',
    'warehouses_ids' => 'ARRAY[string]',
    'refunds' => 'ARRAY[OrderRefund]',
    'gift_message' => 'string',
    'order_details_url' => 'string',
    'additional_fields' => 'object',
    'custom_fields' => 'object'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'order_id' => 'order_id',
    'basket_id' => 'basket_id',
    'channel_id' => 'channel_id',
    'customer' => 'customer',
    'create_at' => 'create_at',
    'currency' => 'currency',
    'shipping_address' => 'shipping_address',
    'billing_address' => 'billing_address',
    'payment_method' => 'payment_method',
    'shipping_method' => 'shipping_method',
    'shipping_methods' => 'shipping_methods',
    'status' => 'status',
    'totals' => 'totals',
    'total' => 'total',
    'discounts' => 'discounts',
    'order_products' => 'order_products',
    'bundles' => 'bundles',
    'modified_at' => 'modified_at',
    'finished_time' => 'finished_time',
    'comment' => 'comment',
    'store_id' => 'store_id',
    'warehouses_ids' => 'warehouses_ids',
    'refunds' => 'refunds',
    'gift_message' => 'gift_message',
    'order_details_url' => 'order_details_url',
    'additional_fields' => 'additional_fields',
    'custom_fields' => 'custom_fields'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
