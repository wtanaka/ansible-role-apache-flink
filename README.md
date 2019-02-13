[![Build Status](https://travis-ci.org/wtanaka/ansible-role-apache-flink.svg?branch=master)](https://travis-ci.org/wtanaka/ansible-role-apache-flink)
[![CircleCI](https://circleci.com/gh/wtanaka/ansible-role-apache-flink.svg?style=svg)](https://circleci.com/gh/wtanaka/ansible-role-apache-flink)

wtanaka.apache-flink
====================

Installs Apache Flink

Requires that you have java installed already, e.g. using
https://galaxy.ansible.com/wtanaka/oracle-java/

Example Playbook
----------------

    - hosts: servers
      roles:
         - role: wtanaka.apache-flink
           # Optional flink version number
           flink_version: "1.1.4"
           # Optional other flink config
           flink_other_config:
             akka.ask.timeout: "30s"
             jobmanager.web.history: 100

### `flink_version`
### `flink_hadoop_version`
### `flink_scala_version`

These control the .tgz file that is downloaded from apache.  The filename that is downloaded from apache looks like:

`flink-{{flink_version}}-bin{{ '-hadoop' + flink_hadoop_version if flink_hadoop_version else '' }}-scala_{{flink_scala_version}}.tgz`

* Examples of `flink_version`: "1.1.2", "1.2.0"
* Examples of `flink_hadoop_version`: "", "1", "2", "24", "26", "27", "28"
* Examples of `flink_version`: "1.1.2", "1.2.0"

Browse [http://archive.apache.org/dist/flink/](http://archive.apache.org/dist/flink/) for possible values

### `flink_url_base`

The Apache mirror to use, defaults to http://archive.apache.org/dist/flink/

### `flink_local_download_cache`

Set this directory to download and cache tarball onto local machine, for when the network connection between local and host is faster than between host and internet, and if role will be run for several hosts.

Example values:

* `.`
* `/tmp`

### `flink_log4j_rootlogger`

Root logger settings for user code and flink code

Default: `"INFO, file"`

### `flink_log4j_logger_akka`

Property value for `log4j.logger.akka`

### `flink_log4j_logger_org_apache_kafka`

Property value for `log4j.logger.org.apache.kafka`

### `flink_log4j_logger_org_apache_hadoop`

Property value for `log4j.logger.org.apache.hadoop`

### `flink_log4j_logger_org_apache_zookeeper`

Property value for `log4j.logger.org.apache.zookeeper`

### `flink_log4j_appender_file`

Property value for `log4j.appender.file`

### `flink_log4j_appender_file_file`

Property value for `log4j.appender.file.file`

By default this gets set to the string `"${log.file}"` which flink startup scripts overwrite

### `flink_log4j_appender_file_append`

Property value for `log4j.appender.file.append`

### `flink_log4j_appender_file_layout`

Property value for `log4j.appender.file.layout`

### `flink_log4j_appender_file_layout_ConversionPattern`

Property value for `log4j.appender.file.layout.ConversionPattern`

### `flink_log4j_logger_org_jboss_netty_channel_DefaultChannelPipeline`

Property value for `log4j.logger.org.jboss.netty.channel.DefaultChannelPipeline`

This is set to `ERROR, file` by default to suppress the irrelevant and wrong warnings from Netty channel handler

### `flink_log4j_extra`

This is a dictionary of extra key/value pairs to add into the log4j.properties file.

For example, to _only_ change Flink's logging, you could use:

```
flink_log4j_extra:
  "log4j.logger.org.apache.flink": "INFO"
```

### All variables

The full set of configuration options available are visible in
[defaults/main.yml](defaults/main.yml)

License
-------

GPLv2

Author Information
------------------

http://wtanaka.com/
