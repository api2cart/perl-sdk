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
package WWW::OpenAPIClient::Object::CustomerAdd;

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

use WWW::OpenAPIClient::Object::CustomerAddAddressInner;
use WWW::OpenAPIClient::Object::CustomerAddConsentsInner;

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
                                  class => 'CustomerAdd',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'email' => {
        datatype => 'string',
        base_name => 'email',
        description => 'Defines customer&#39;s email',
        format => '',
        read_only => '',
            },
    'first_name' => {
        datatype => 'string',
        base_name => 'first_name',
        description => 'Defines customer&#39;s first name',
        format => '',
        read_only => '',
            },
    'last_name' => {
        datatype => 'string',
        base_name => 'last_name',
        description => 'Defines customer&#39;s last name',
        format => '',
        read_only => '',
            },
    'password' => {
        datatype => 'string',
        base_name => 'password',
        description => 'Defines customer&#39;s unique password',
        format => '',
        read_only => '',
            },
    'group' => {
        datatype => 'string',
        base_name => 'group',
        description => 'Defines the group where the customer',
        format => '',
        read_only => '',
            },
    'group_ids' => {
        datatype => 'string',
        base_name => 'group_ids',
        description => 'Groups that will be assigned to a customer',
        format => '',
        read_only => '',
            },
    'status' => {
        datatype => 'string',
        base_name => 'status',
        description => 'Defines customer&#39;s status',
        format => '',
        read_only => '',
            },
    'created_time' => {
        datatype => 'string',
        base_name => 'created_time',
        description => 'Entity&#39;s date creation',
        format => '',
        read_only => '',
            },
    'modified_time' => {
        datatype => 'string',
        base_name => 'modified_time',
        description => 'Entity&#39;s date modification',
        format => '',
        read_only => '',
            },
    'login' => {
        datatype => 'string',
        base_name => 'login',
        description => 'Specifies customer&#39;s login name',
        format => '',
        read_only => '',
            },
    'last_login' => {
        datatype => 'string',
        base_name => 'last_login',
        description => 'Defines customer&#39;s last login time',
        format => '',
        read_only => '',
            },
    'birth_day' => {
        datatype => 'string',
        base_name => 'birth_day',
        description => 'Defines customer&#39;s birthday',
        format => '',
        read_only => '',
            },
    'news_letter_subscription' => {
        datatype => 'boolean',
        base_name => 'news_letter_subscription',
        description => 'Defines whether the newsletter subscription is available for the user',
        format => '',
        read_only => '',
            },
    'consents' => {
        datatype => 'ARRAY[CustomerAddConsentsInner]',
        base_name => 'consents',
        description => 'Defines consents to notifications',
        format => '',
        read_only => '',
            },
    'gender' => {
        datatype => 'string',
        base_name => 'gender',
        description => 'Defines customer&#39;s gender',
        format => '',
        read_only => '',
            },
    'website' => {
        datatype => 'string',
        base_name => 'website',
        description => 'Link to customer website',
        format => '',
        read_only => '',
            },
    'fax' => {
        datatype => 'string',
        base_name => 'fax',
        description => 'Defines customer&#39;s fax',
        format => '',
        read_only => '',
            },
    'company' => {
        datatype => 'string',
        base_name => 'company',
        description => 'Defines customer&#39;s company',
        format => '',
        read_only => '',
            },
    'phone' => {
        datatype => 'string',
        base_name => 'phone',
        description => 'Defines customer&#39;s phone number',
        format => '',
        read_only => '',
            },
    'note' => {
        datatype => 'string',
        base_name => 'note',
        description => 'The customer note.',
        format => '',
        read_only => '',
            },
    'country' => {
        datatype => 'string',
        base_name => 'country',
        description => 'Specifies ISO code or name of country',
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
    'address' => {
        datatype => 'ARRAY[CustomerAddAddressInner]',
        base_name => 'address',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'email' => 'string',
    'first_name' => 'string',
    'last_name' => 'string',
    'password' => 'string',
    'group' => 'string',
    'group_ids' => 'string',
    'status' => 'string',
    'created_time' => 'string',
    'modified_time' => 'string',
    'login' => 'string',
    'last_login' => 'string',
    'birth_day' => 'string',
    'news_letter_subscription' => 'boolean',
    'consents' => 'ARRAY[CustomerAddConsentsInner]',
    'gender' => 'string',
    'website' => 'string',
    'fax' => 'string',
    'company' => 'string',
    'phone' => 'string',
    'note' => 'string',
    'country' => 'string',
    'store_id' => 'string',
    'address' => 'ARRAY[CustomerAddAddressInner]'
} );

__PACKAGE__->attribute_map( {
    'email' => 'email',
    'first_name' => 'first_name',
    'last_name' => 'last_name',
    'password' => 'password',
    'group' => 'group',
    'group_ids' => 'group_ids',
    'status' => 'status',
    'created_time' => 'created_time',
    'modified_time' => 'modified_time',
    'login' => 'login',
    'last_login' => 'last_login',
    'birth_day' => 'birth_day',
    'news_letter_subscription' => 'news_letter_subscription',
    'consents' => 'consents',
    'gender' => 'gender',
    'website' => 'website',
    'fax' => 'fax',
    'company' => 'company',
    'phone' => 'phone',
    'note' => 'note',
    'country' => 'country',
    'store_id' => 'store_id',
    'address' => 'address'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
