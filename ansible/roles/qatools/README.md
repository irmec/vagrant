Composer
=============

Ansible role for installing Composer.

Requirements
------------

- PHP

Role Variables
--------------

This role installs composer to `composer_path` and makes any binaries downloaded by Composer
to `composer_bin_dir` available to the environment through `/etc/environment`.

Variables specified in `vars/main.yml`:

    # Path to the Composer executable.
    composer_path: /usr/local/bin/composer

    # Path to Composer vendor binaries.
    composer_bin_dir: /home/vagrant/.composer/vendor/bin

Dependencies
------------

This role depends on `AlexanderAllen.Composer` for the `composer_bin_dir` variable.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: webservers
      roles:
         - { role: AlexanderAllen.Composer }
         - { role: AlexanderAllen.QualityTools }

License
-------

GPLv2

Author Information
------------------

https://github.com/AlexanderAllen
