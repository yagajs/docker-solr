# Spatial enhancements for Solr on Docker

Full spatial-ready [Solr](https://lucene.apache.org/solr/) docker image from the [YAGA Development-Team](https://yagajs.org)
based on the [official Solr Docker image](https://hub.docker.com/_/solr/).

*This image enhance Solr with the [JTS Topology Suite](https://github.com/locationtech/jts)*

## Supported tags

* `6.3.0`, `6.3`
* `6.3.0-alpine`, `6.3-alpine`
* `6.4.1`, `6.4`, `6`, `latest`
* `6.4.1-alpine`, `6.4-alpine`, `6-alpine`, `alpine`

*Note: prior to Solr 6, the `org.locationtech.spatial4j` part was `com.spatial4j.core` and there used to be no convenience
JTS alias. Take a look at
[this page for further information](https://cwiki.apache.org/confluence/display/solr/Spatial+Search)*

## Configure your schema

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<schema name="my-schema" version="1.6">
    <!-- other fieldType declarations -->
    <fieldType name="location_rpt"
        geo="true"
        class="solr.SpatialRecursivePrefixTreeFieldType"
        distanceUnits="degrees"
        spatialContextFactory="org.locationtech.spatial4j.context.jts.JtsSpatialContextFactory" />

    <!-- other field configurations -->
    <field name="geom" type="location_rpt" indexed="false" stored="true" required="false"/>
    <!-- values for indexed, stored and required are just an example... -->
</schema>
```

*This `schema.xml` is just an example. The important line is the one with
`spatialContextFactory="org.locationtech.spatial4j.context.jts.JtsSpatialContextFactory"`!*

## More information

Please take a look at the [official docker image of Solr](https://hub.docker.com/_/solr/) for any additional
information. This is the base for this image.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull
requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a
[GitHub issue](https://github.com/yagajs/docker-solr/issues), especially for more ambitious contributions.
This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help
you find out if someone else is working on the same thing.