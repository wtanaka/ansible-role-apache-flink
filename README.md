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

`flink-{{flink_version}}-bin-hadoop{{flink_hadoop_version}}-scala_{{flink_scala_version}}.tgz`

* Examples of `flink_version`: "1.1.2", "1.2.0"
* Examples of `flink_hadoop_version`: "1", "2", "24", "26", "27"
* Examples of `flink_version`: "1.1.2", "1.2.0"

Browse [http://archive.apache.org/dist/flink/](http://archive.apache.org/dist/flink/) for possible values

### `flink_url_base`

The Apache mirror to use, defaults to http://archive.apache.org/dist/flink/

### `flink_local_download_cache`

Set this directory to download and cache tarball onto local machine, for when the network connection between local and host is faster than between host and internet, and if role will be run for several hosts.

Example values:

* `.`
* `/tmp`

### All variables

The full set of configuration options available are visible in
[defaults/main.yml](defaults/main.yml)

License
-------

GPLv2

Author Information
------------------

http://wtanaka.com/
