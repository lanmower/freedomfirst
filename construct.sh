# CREATE SYSTEM ACCOUNTS

cleos  create account eosio eosio.bpay EOS84BLRbGbFahNJEpnnJHYCoW9QPbQEk2iHsHGGS6qcVUq9HhutG
cleos  create account eosio eosio.msig EOS84BLRbGbFahNJEpnnJHYCoW9QPbQEk2iHsHGGS6qcVUq9HhutG
cleos  create account eosio eosio.names EOS84BLRbGbFahNJEpnnJHYCoW9QPbQEk2iHsHGGS6qcVUq9HhutG
cleos  create account eosio eosio.ram EOS84BLRbGbFahNJEpnnJHYCoW9QPbQEk2iHsHGGS6qcVUq9HhutG
cleos  create account eosio eosio.ramfee EOS84BLRbGbFahNJEpnnJHYCoW9QPbQEk2iHsHGGS6qcVUq9HhutG
cleos  create account eosio eosio.saving EOS84BLRbGbFahNJEpnnJHYCoW9QPbQEk2iHsHGGS6qcVUq9HhutG
cleos  create account eosio eosio.stake EOS84BLRbGbFahNJEpnnJHYCoW9QPbQEk2iHsHGGS6qcVUq9HhutG 
cleos  create account eosio eosio.token EOS84BLRbGbFahNJEpnnJHYCoW9QPbQEk2iHsHGGS6qcVUq9HhutG
cleos  create account eosio eosio.vpay EOS84BLRbGbFahNJEpnnJHYCoW9QPbQEk2iHsHGGS6qcVUq9HhutG

# SET UP SYSTEM CONTRACTS

cleos set contract eosio.token contracts/build/eosio.token/
cleos set contract eosio.msig contracts/build/eosio.msig/
cleos push action eosio.token create '[ "eosio", "12000000000.0000 SYS" ]' -p eosio.token@active
cleos push action eosio.token issue '[ "eosio", "1200000000.0000 SYS", "memo" ]' -p eosio@active
cleos set contract eosio contracts/build/eosio.system/
cleos push action eosio setpriv '["eosio.msig", 1]' -p eosio@active
cleos push action eosio init '["0", "4,FF"]' -p eosio@active

# CREATE ACCOUNTS

cleos system newaccount eosio --transfer atechshaman EOS8iK6Jq73YFrfWWebkhbfj4f3GdVokRHJAwcxJSLwz5sQb8BZba --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio atechshaman "9.0000 FF"
cleos system newaccount eosio --transfer ali EOS8mTjKEz54sFUucizTeBSwU6PAbQRfRs8KAhrQXtwGCd1TKstpe --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio ali "9.0000 FF"
cleos system newaccount eosio --transfer heidi EOS8StKgGD2Cda29WrUus7K73AGQVGFj9UjBy9EzL7MyuQm1z4DgE --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio heidi "9.0000 FF"
cleos system newaccount eosio --transfer moonshine EOS8NNXqbhXwZXN5VyENG4XkSzGk8L2Pvuex6cXbmjYujzzeoqR2N --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio moonshine "9.0000 FF"
cleos system newaccount eosio --transfer sypher EOS8BGt43Xgjv4LXmeqmQjwYoAUTEhvhxPMdXsxFx6CP8GdfnAX2c --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio sypher "9.0000 FF"
cleos system newaccount eosio --transfer wulfen EOS7G7VKGn3gz7f7yyV9BRe9R2QwxBSnHWnazabMW3hVD4SncHMuG --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio wulfen "9.0000 FF"
cleos system newaccount eosio --transfer stephanus EOS65uuxsziXabtoVfU8EY8ZGqfeY4NEGshjBK45PbChw2J4Gydzp --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio stephanus "9.0000 FF"
cleos system newaccount eosio --transfer evo EOS5ap3iQbJY89hGi75tJTa2fh6iv3J2wTk5UkeHyTrJRTucBKy9e --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio evo "9.0000 FF"
cleos system newaccount eosio --transfer koh EOS5K7EkWPhgETBkPtJ3KFB1P1HBb2yseGiYCQQzmFcT9Y8vQRURD --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio koh "9.0000 FF"
cleos system newaccount eosio --transfer kaulukia EOS6yLUcUzV3pVxs5F1uQGKTPKmGBmJNfpeVt5HktvcQdZpQUUExG --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio occultcorner "9.0000 FF"
cleos system newaccount eosio --transfer occultcorner EOS6yLUcUzV3pVxs5F1uQGKTPKmGBmJNfpeVt5HktvcQdZpQUUExG --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio jaydecks "9.0000 FF"
cleos system newaccount eosio --transfer assimilation EOS71T5ZqdhoDQ7uGcJ1t5vg78pVXYGU1xpRy9GqimpqkJ8aujKXr --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio occultcorner "9.0000 FF"
cleos system newaccount eosio --transfer supermeatboy EOS6AjN55SaQwtLZUmTN7NU6Gp98WhRMwLNaFkxcchQ87mF1Bio6U --stake-net "499999991.0000 FF" --stake-cpu "500000000.0000 FF" --buy-ram-kbytes 8192
cleos transfer eosio occultcorner "9.0000 FF"

# REG PRODUCERS

cleos system regproducer moonshine EOS8NNXqbhXwZXN5VyENG4XkSzGk8L2Pvuex6cXbmjYujzzeoqR2N
cleos system regproducer occultcorner EOS6xf4Z8CuAEz82iZGYHvPNiQmVqZJwBaQaZaH6sqtTypDus4M51 
cleos system regproducer koh EOS5K7EkWPhgETBkPtJ3KFB1P1HBb2yseGiYCQQzmFcT9Y8vQRURD 

# RESIGN

cleos push action eosio updateauth '{"account": "eosio", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio.prods", "permission": "active"}}]}}' -p eosio@owner
cleos push action eosio updateauth '{"account": "eosio", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio.prods", "permission": "active"}}]}}' -p eosio@active

cleos push action eosio updateauth '{"account": "eosio.bpay", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.bpay@owner
cleos push action eosio updateauth '{"account": "eosio.bpay", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.bpay@active

cleos push action eosio updateauth '{"account": "eosio.msig", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.msig@owner
cleos push action eosio updateauth '{"account": "eosio.msig", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.msig@active

cleos push action eosio updateauth '{"account": "eosio.names", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.names@owner
cleos push action eosio updateauth '{"account": "eosio.names", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.names@active

cleos push action eosio updateauth '{"account": "eosio.ram", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.ram@owner
cleos push action eosio updateauth '{"account": "eosio.ram", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.ram@active

cleos push action eosio updateauth '{"account": "eosio.ramfee", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.ramfee@owner
cleos push action eosio updateauth '{"account": "eosio.ramfee", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.ramfee@active

cleos push action eosio updateauth '{"account": "eosio.saving", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.saving@owner
cleos push action eosio updateauth '{"account": "eosio.saving", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.saving@active

cleos push action eosio updateauth '{"account": "eosio.stake", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.stake@owner
cleos push action eosio updateauth '{"account": "eosio.stake", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.stake@active

cleos push action eosio updateauth '{"account": "eosio.token", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.token@owner
cleos push action eosio updateauth '{"account": "eosio.token", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.token@active

cleos push action eosio updateauth '{"account": "eosio.vpay", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.vpay@owner
cleos push action eosio updateauth '{"account": "eosio.vpay", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.vpay@active

