Ansible Role - Sass
====================

A sass role to install sass on elao symfony standard vagrant box


Requirements
------------

This role only run on elao symfony standard vagrant box. See https://vagrantcloud.com/elao/symfony-standard-debian

Role Variables
--------------

    elao_sass_version: '>0' # Sass version


Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: elao.sass }


License
-------

MIT


Author Information
------------------

http://www.elao.com/
