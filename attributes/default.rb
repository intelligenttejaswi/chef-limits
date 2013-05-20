# "security": {
#      "limits": {
#          "domains": {
#              "*": {
#                  "nofile": {
#                      "hard": "65535",
#                      "soft": "65535"
#                   }
#               }
#           }
#       }
#   }
default["security"]["limits"]["limits_path"] = "/etc/security/limits.conf"
