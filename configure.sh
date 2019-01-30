
#!/bin/bash

read -s -p "Please specify the user name: " USER
echo ""

if test "$USER" = ""; then
        echo "$0: sorry, user name cannot be blank" >&2
        exit 1;
fi

KEYS=`cleos create key --file keys`
PRIVKEY=`sed -n -e '/Private key/ s/.*\: *//p' keys`
PUBKEY=`sed -n -e '/Public key/ s/.*\: *//p' keys`

echo "NAME=$NAME" > keys.conf
echo "PRIVKEY=$PRIVKEY" >> keys.conf
echo "PUBKEY=$PUBKEY" >> keys.conf
echo "" >> keys.conf
echo "Your new public key for block production is:"
echo "$PUBKEY"
