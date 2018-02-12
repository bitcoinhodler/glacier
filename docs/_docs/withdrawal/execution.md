---
title: Transaction execution and verification
description:
---

On any Internet-connected computer:

1. Access the raw signed transaction you sent yourself from your smartphone previously.
2. Verify the transaction data.
  a. Go to https://coinb.in/#verify .
  b. Copy-paste the raw signed transaction into the webpage and click Submit.
  c. Under “Outputs”:
    i. Verify the destination address is correct.
    ii. Verify the amount going to the destination address is correct.
    iii. If you did not withdraw all funds from these unspent transactions, you’ll
    also see a second output which “sends” the remainder of the funds “back” to your
    cold storage address. This is necessary; it’s how Bitcoin is designed to operate.
3. Execute the transaction.
  a. Go to https://coinb.in/#broadcast (or any comparable public service which can
    broadcast a raw signed transaction to the Bitcoin network).
  b. Copy-paste the raw signed transaction into the webpage and click Submit.
  c. You should see a green bar appear with a transaction ID in it. This is the
  transaction ID for your withdrawal; make a note of it.
4. Verify the withdrawal on the public blockchain.
  a. Go to Blockr , paste the destination address into the search bar, and press
  Enter. You’ll be taken to a page that says “Bitcoin Address” at the top, with the
  destination address listed underneath.
  b. Within a couple of minutes (and often much faster), you should be able to
  refresh this page and see your funds listed under “Unconfirmed”.
  c. Periodically refresh the page until you see the funds moved from “Unconfirmed”
  to be reflected in “Balance”. This generally happens within 15 minutes; if the
  Bitcoin network is unusually congested, it may take longer.
