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

The full set of configuration options available are visible in
[defaults/main.yml](defaults/main.yml)

License
-------

GPLv2

Author Information
------------------

http://wtanaka.com/
