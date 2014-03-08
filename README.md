limits Cookbook
===============
This cookbook is used to manage the PAM resource limits configuration (/etc/security/limits.conf).

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

License and Authors
-------------------
Authors: Erick Turnquist, Kyle Johnson
License: Public domain
