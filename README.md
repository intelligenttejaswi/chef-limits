limits Cookbook
===============
This cookbook is used to manage the PAM resource limits configuration (/etc/security/limits.conf). It does NOT manage PAM itself, so you will need to make sure your PAM configuration somehow else.

Requirements
------------
Your PAM needs to include pam\_limits.so for the configuration this cookbook creates to have any affect

Attributes
----------
The hash at node\["security"\]\["limits"\]\["domains"\] will be expanded into the configuration file. An example serves best. The JSON:

    "security": {
        "limits": {
            "domains": {
                "*": {
                    "nofile": {
                        "hard": "65535",
                        "soft": "65535"
                    }
                }
            }
        }
    }

Will be turned into this configuration:

    * hard nofile 65535
    * soft nofile 65535

Contributing
------------
Find me somewhere and talk to me, or do the Github thing. Whatever.

License and Authors
-------------------
Authors: Erick Turnquist
License: Public domain
