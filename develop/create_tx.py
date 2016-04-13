from bigchaindb.core import Bigchain
from bigchaindb.core import crypto

bigchain = Bigchain()

user_priv, user_pub = crypto.generate_key_pair()

digital_asset_payload = {'msg': 'blockchain'}

tx = bigchain.create_transaction(bigchain.me, user_pub, None, 'CREATE', payload=digital_asset_payload)

tx_signed = bigchain.sign_transaction(tx, bigchain.me_private)

bigchain.write_transaction(tx_signed)

tx_retrived = bigchain.get_transaction(tx_signed['id'])

print(tx_retrived)

user2_priv, user2_pub = bigchain.generate_keys()
tx_transfer = bigchain.create_transaction(user1_pub, user2_pub, tx_retrived['id'], 'TRANSFER')

tx_trandfer_signed = bigchain.sign_transaction(tx_transfer, user1_prive)

bigchain.write_transaction(tx_transfer_signed)

tx_transfer_retrieved = bigchain.get_transaction(tx_transfer_signed['id'])

print(tx_transfer_retrieved)
