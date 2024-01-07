#!/bin/bash

# If there are additional requirements, customizability or platform independence
# that you would like to see in this script, please let me know or open an issue.
#
# For an example of a much more complex bash script I have written, see:
# https://github.com/zolrath/wemux

GITHUB_USERNAME="zolrath"
PROFILE_FILE="/root/.bash_profile"
CONFIG_FILE="config.hcl"

# Only allow this script to be run if we have write access to the file locations
for FILE in $PROFILE_FILE $CONFIG_FILE; do
    if ! [[ (-f "$FILE" && -w "$FILE") || -w $(dirname "$FILE") ]]; then
        echo "Script cancelled. You do not have permission to write to '$FILE'"
        exit 126
    fi
done

# Sets an environment variable with your github username in /root/.bash_profile
echo "[$PROFILE_FILE] Setting GITHUB_USERNAME to $GITHUB_USERNAME"
echo "export GITHUB_USERNAME=\"$GITHUB_USERNAME\"" >>"$PROFILE_FILE"

# - Writes the following code to a file called `config.hcl`
echo "[$CONFIG_FILE] Creating file"
cat <<EOF >"$CONFIG_FILE"
cluster_addr  = "https://<HOSTNAME>:8201"
api_addr      = "https://<HOSTNAME>:8200"
disable_mlock = true
EOF

# - Replaces `<HOSTNAME>` value `vault-server.hashicorp.com` in config.hcl
echo "[$CONFIG_FILE] Configuring hostname"
sed -i'' -e 's/<HOSTNAME>/vault-server.hashicorp.com/g' "$CONFIG_FILE"
