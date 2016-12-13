package MetaCPAN::Script::Mapping::CPAN::Author;

use strict;
use warnings;

sub mapping {
    '{
        "dynamic" : false,
        "properties" : {
           "asciiname" : {
              "fields" : {
                 "analyzed" : {
                    "analyzer" : "standard",
                    "fielddata" : {
                       "format" : "disabled"
                    },
                    "store" : true,
                    "type" : "string"
                 }
              },
              "ignore_above" : 2048,
              "index" : "not_analyzed",
              "type" : "string"
           },
           "blog" : {
              "dynamic" : true,
              "properties" : {
                 "feed" : {
                    "ignore_above" : 2048,
                    "index" : "not_analyzed",
                    "type" : "string"
                 },
                 "url" : {
                    "ignore_above" : 2048,
                    "index" : "not_analyzed",
                    "type" : "string"
                 }
              }
           },
           "city" : {
              "ignore_above" : 2048,
              "index" : "not_analyzed",
              "type" : "string"
           },
           "country" : {
              "ignore_above" : 2048,
              "index" : "not_analyzed",
              "type" : "string"
           },
           "donation" : {
              "dynamic" : true,
              "properties" : {
                 "id" : {
                    "ignore_above" : 2048,
                    "index" : "not_analyzed",
                    "type" : "string"
                 },
                 "name" : {
                    "ignore_above" : 2048,
                    "index" : "not_analyzed",
                    "type" : "string"
                 }
              }
           },
           "email" : {
              "ignore_above" : 2048,
              "index" : "not_analyzed",
              "type" : "string"
           },
           "gravatar_url" : {
              "ignore_above" : 2048,
              "index" : "not_analyzed",
              "type" : "string"
           },
           "location" : {
              "type" : "geo_point"
           },
           "name" : {
              "fields" : {
                 "analyzed" : {
                    "analyzer" : "standard",
                    "fielddata" : {
                       "format" : "disabled"
                    },
                    "store" : true,
                    "type" : "string"
                 }
              },
              "ignore_above" : 2048,
              "index" : "not_analyzed",
              "type" : "string"
           },
           "pauseid" : {
              "ignore_above" : 2048,
              "index" : "not_analyzed",
              "type" : "string"
           },
           "perlmongers" : {
              "dynamic" : true,
              "properties" : {
                 "name" : {
                    "ignore_above" : 2048,
                    "index" : "not_analyzed",
                    "type" : "string"
                 },
                 "url" : {
                    "ignore_above" : 2048,
                    "index" : "not_analyzed",
                    "type" : "string"
                 }
              }
           },
           "profile" : {
              "dynamic" : false,
              "include_in_root" : true,
              "properties" : {
                 "id" : {
                    "fields" : {
                       "analyzed" : {
                          "analyzer" : "simple",
                          "fielddata" : {
                             "format" : "disabled"
                          },
                          "store" : true,
                          "type" : "string"
                       }
                    },
                    "ignore_above" : 2048,
                    "index" : "not_analyzed",
                    "type" : "string"
                 },
                 "name" : {
                    "ignore_above" : 2048,
                    "index" : "not_analyzed",
                    "type" : "string"
                 }
              },
              "type" : "nested"
           },
           "region" : {
              "ignore_above" : 2048,
              "index" : "not_analyzed",
              "type" : "string"
           },
           "updated" : {
              "format" : "strict_date_optional_time||epoch_millis",
              "type" : "date"
           },
           "user" : {
              "ignore_above" : 2048,
              "index" : "not_analyzed",
              "type" : "string"
           },
           "website" : {
              "ignore_above" : 2048,
              "index" : "not_analyzed",
              "type" : "string"
           }
        }
     }';
}

1;
