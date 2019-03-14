
#!/bin/bash

FILE="./keys.conf"
if [ ! -f $FILE ]; then
  echo "Setting up block production keys";

  read -s -p "Please specify the user name: " NAME
  echo ""

  if test "$NAME" = ""; then
    echo "$0: sorry, user name cannot be blank" >&2
    exit 1;
  fi

  KEYS=`cleos create key --file keys`
  PRIVKEY=`sed -n -e '/Private key/ s/.*\: *//p' keys`
  PUBKEY=`sed -n -e '/Public key/ s/.*\: *//p' keys`
  echo "NAME=$NAME" > keys.conf
  chmod +x keys.conf
  echo "PRIVKEY=$PRIVKEY" >> keys.conf
  echo "PUBKEY=$PUBKEY" >> keys.conf
  echo "" >> keys.conf
  echo "Your new public key for block production is:"
  echo "$PUBKEY"
  echo "Creating local wallet to publish new key"
  cleos wallet create --file wallet
  echo "Please fill in your accounts private key to publish new block production key"
  cleos wallet import
  cleos -u https://dconnect.live system regproducer $NAME $PUBKEY
  cleos -u https://dconnect.live system voteproducer prods $NAME $NAME
  rm ./wallet
  rm ~/eosio-wallet

fi


