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
           flink_version: "1.1.2"

License
-------

GPLv2

Author Information
------------------

http://wtanaka.com/
