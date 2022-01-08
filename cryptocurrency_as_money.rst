.. https://rolandpuntaier.blogspot.com/2022/01/cryptocurrencies-as-money.html

.. _`exchanges`: https://bitcoin.org/en/exchanges
.. _`forks`: https://en.wikipedia.org/wiki/List_of_bitcoin_forks
.. _`genesis`: https://en.bitcoin.it/wiki/Genesis_block
.. _`protocol`: https://en.bitcoin.it/wiki/Protocol_documentation
.. _`bitcoin-cash-node`: https://github.com/bitcoin-cash-node/bitcoin-cash-node
.. _`bitcoin-core`: https://github.com/bitcoin/bitcoin
.. _`ethereum`: https://ethereum.org/en/
.. _`trapdoor`: https://en.wikipedia.org/wiki/Trapdoor_function
.. _`transaction`: https://en.bitcoin.it/wiki/Transaction
.. _`derivation path`: https://learnmeabitcoin.com/technical/derivation-paths
.. _`wallet`: https://walletsrecovery.org/
.. _`queried with a key hash`: https://bitcoin.stackexchange.com/questions/88551/how-to-search-for-txs-using-only-the-publickey-linked-to-those-txs
.. _`p2sh`: https://en.bitcoin.it/wiki/Pay_to_script_hash
.. _`zmq`: https://github.com/bitcoin/bitcoin/blob/master/doc/zmq.md
.. _`libblkmaker`: https://github.com/bitcoin/libblkmaker
.. _`getblocktemplate`: https://en.bitcoin.it/wiki/Getblocktemplate
.. _`ASIC`: https://en.bitcoin.it/wiki/ASIC
.. _`Nonce`: https://en.bitcoin.it/wiki/Nonce
.. _`POW`: https://en.bitcoin.it/wiki/Proof_of_work
.. _`network`: https://developer.bitcoin.org/devguide/p2p_network.html
.. _`bitcoin-from-cli`: https://github.com/BlockchainCommons/Learning-Bitcoin-from-the-Command-Line
.. _`RPC`: https://en.wikipedia.org/wiki/Remote_procedure_call
.. _`hash`: https://en.wikipedia.org/wiki/Hash_function
.. _`bitcoin`: https://github.com/bitcoin/bitcoin
.. _`bitcoin-cash`: https://gitlab.com/bitcoin-cash-node/bitcoin-cash-node.git
.. _`binary-to-text`: https://en.wikipedia.org/wiki/Binary-to-text_encoding
.. _`P2PKH`: https://en.bitcoinwiki.org/wiki/Pay-to-Pubkey_Hash
.. _`cryptography`: https://en.wikipedia.org/wiki/Public-key_cryptography
.. _`secp256k1`: https://en.bitcoin.it/wiki/Secp256k1
.. _`HD Wallets`: https://en.bitcoin.it/wiki/BIP_0032
.. _`sharding`: https://eth.wiki/sharding/Sharding-FAQs
.. _`header`: https://developer.bitcoin.org/reference/block_chain.html
.. _`EIP-20`: https://eips.ethereum.org/EIPS/eip-20
.. _`EIP-721`: NFT non-fungible token: https://eips.ethereum.org/EIPS/eip-721
.. _`DAO`: https://en.wikipedia.org/wiki/Decentralized_autonomous_organization
.. _`DEFI`: https://en.wikipedia.org/wiki/Decentralized_autonomous_organization
.. _`opensea`: https://opensea.io
.. _`bips`: https://github.com/bitcoin/bips
.. _`smart contracts`: https://en.wikipedia.org/wiki/Smart_contract
.. _`13000 listening nodes`: https://en.bitcoin.it/wiki/Clearing_Up_Misconceptions_About_Full_Nodes
.. _`scalability`: https://en.bitcoin.it/wiki/Scalability_FAQ

#########################
Cryptocurrencies as Money
#########################

A free economy can be compared to statistical physics.
There are many actors.
Independent comparisons, information processing,
produce local transactions, but level out into
a collective valuation, collective prices,
until a global market establishes
in time (more or less stable) and space (over countries, continents and the planet),
until the number of transaction are maximal,
i.e. fulfill all needs in all remote corners of the planet.
Maximum entropy is maximum information (processing) is maximum energy consumption.
Limits/setbacks of growth are reached with energy limitation/exhaustion,
but new sources, automation and finally AI help out.

Cryptocurrencies (short crypto, fungible and non-fungible tokens) are a very accessible interface and infrastructure
for the bookkeeping of real assets by humans and/or trading bots.
Cryptos can be the money of the future.
What is missing yet, is the widespread adoption,
which would make valuation statistical and thus stable.

.. {introduction}

Introduction
============

If you have a key to a lock (of a house), then you have access (to the house).
The same key-lock principle is behind the private-public cryptographic key.
Instead of a physical key-lock we deal with two sequences of bytes.

- The private part is the "key"
- The public part is the "lock" (but normally called "address")

In ECDSA keys, the public key can be generated from the private key.
So by "key" mostly the private part is meant.

Having the key gives you ownership.
Locks can be combined to produce shared ownership,
where more keys are needed to unlock.

In general a **token** is a `hash`_ of some data.
The hash of the public key(s) states ownership,
either of an addable number (fungible) or of another token (non-fungible).
The ownership can be redeemed using the private key(s),
by creating a signature,
that can be checked against the public key and thus verified by everybody.

In general a *transaction* has more inputs and more outputs.

Each node in the network has its own interpreter
to check the signatures
and do other tasks like executing `smart contracts`_.
This applies to EVM (`Ethereum`_ Virtual Machine),
but also to `bitcoin`_ and its forks, like `bitcoin-cash`_, 

The private keys are stored in wallets.
The wallet also cares to make new keys (`HD Wallets`_).

The unspent transaction output (UTXO, ``Coin``)
is first created as the first transaction of a block (coinbase),
as reward for mining the block.
This numeric value is kept limited by network consensus
thus can be used to temporarily replace other limited assets,
i.e. it can function as money, as long as the network is online.
To keep the network running,
nodes are motivated to join and stay by block reward and fees.

A small change in data, and the hash is completely different.
The network of miners accepts only blocks with a hash less than a certain number (difficulty).
For that only (all) values `nonce`_ number is tried.

The difficulty avoids that one can provide all the blocks and thus have control over a chain.

Blocks are chained together by the previous block hash (``hashPrevBlock``).
The blockchain forms a public decentralized ledger, secure, because
it cannot be changed unless one is able to
redo the difficulty of all blocks following the changed one and overtake the network.

The network nodes check that the difficulty is met and wouldn't accept a block otherwise.
Nodes build on the longest chain.

The difficulty is adjusted regularly (every 14 days or `14*24*6 = 2016` blocks for bitcoin)
such that the network can produce no more than about one block per 10 minutes.

Money is a collective product.
The consensus rules and validation are a collective product.
The joint usage of the network are a collective product.
Together they make a collective value, they make money (= fiat money).

.. {time = value = transaction}

Time = Value = Transaction
==========================

Value can mean:

- an element of a variable: most elementary
- a number: mostly the result of counting values in variables (information)
- human valuation/pricing: this considers human needs
- ethical value: considering human needs, but eluding pricing

The values of a variable are exclusive.
The value implies the variable.

The values of the variable must occur for a variable to exist.
Selection of values of the variable cycles.
Every value takes time or better is a time step of the variable.
One cycle is one variable, is one **time**.

Every variable is also an independent time.

Information is the number of values of a variable.
As such information is a quantity characterizing a variable, not a value.
But since variables are values for higher level,
the information (extension) is an extensive value.
It motivates addition and ultimately all other operations.

Most values consist of internal variables.
Internal communication produces inertia, because
a level has a more or less fixed speed of communication,
with a maximum speed for the lowest level.

When one variable separates into more independent variables
they also form independent times.
The variables get out of sync without communication.

Independent times make their value combinations random.
Such a system of independent variables
forms an exponential number of value combinations.
If `S` is the number of identical and independent variables of size `n`,
`n^S` is the number of value combinations.

The information speed comes into play when comparing to another variable.
Information/Information = time/time = information/time = energy
(`E=I/t`, see earlier blog on `evolution <https://rolandpuntaier.blogspot.com/2019/01/evolution.html>`__).
While information is conserved, energy is not.
The information stays constant even if it spreads to more variables,
in the same level or vertically in the hierarchy.
`pV = ST + U` becomes `pV=ST`,
if the internal information (energy) `U` is ignored,
because locked up, anyway, i.e. not spreading vertically.

A transaction is the movement of a packet to new coordinates
(value = location = selection = owner).
In physics, the packet is internal physical information, internal variables/times.
In human economy, it is valuated/priced considering human needs.
The transactions by themselves form values, a variable, in the observed level.
The packet is transacted based on a price agreement.
As the transaction is also with information/price (food, gas, fee, VAT),
the internal value of the packet (rest mass) is lower.

- Physics:
  For a variable to exist, the values must occur.
- Economics:
  For a valuation/price to exist and persist,
  transactions must occur.

.. note::

  - A transaction is a time step of economy and it has a price.
  - Transactions are needed to maintain value.
  - The transactions of a product represent a cycle, a variable.
  - A product has inner cycles (those of components).
  - Products of higher level move slower and have a higher price (mass).
  - The economic pricing hierarchy builds on top of basic living cost.


.. {money, pricing}

Money, Pricing
==============

In human economics,
transaction of physical resources are associated with a (numerical) value
through the *valuation/pricing* process,
that takes into account the demand/need of a resource
and their limited availability specific to a person or a group of people.

Valuation of a product is a comparison with other products.
If one person would do that, it would create its own valuation scale.
The major products an individual compares to are due to its basic needs:
food, housing, clothing, ...
To compare, the person simulates having the product.
A product needs to be personally used to have personal value.
As the person has limited time values (.e.g seconds per life),
a person's total valuation is limited.

Individuals averaged over a large population,
or better a large number of transactions,
produces money.

We don't use gold coins any more,
we are on the verge of not using paper bills any more, either.
We are left with only numbers.
But the numbers have a value through the trust in each other
that they will redeem the number with same valuation.
Like, if you helped me for a day,
I give you a bill or text you a message,
which remembers you, that *I Owe yoU* (IOU) a day of help, too.

We collect such IOU's,
so we don't need to stash food ourselves,
because others do it for us.
We can redeem our IOU's, when we are hungry.

Money is collective trust in the promises made by others, by the society.
The valuation of money rises and falls with honorable and trustworthy behavior.

Valuation varies between people, space and time.
Traders calculate with the valuation of other people,
and especially use the valuation differences between people (arbitrage).
In order to exploit the valuation difference,
the trader relies on secrecy:

- that the valuation of one party stays unknown to the other party and
- that the calculations leading to the price offered by the trader stays secret

Secrecy and trust do not go well together,

- Valuation differences, i.e. lucrative business ideas,
  do not stay secret long, but attract competitors.
- Companies are short-lived,
  if their products that don't live up to the promises.
- Outright lies, fake it till you make it,
  regularly lead to gigantic crashes in the finances.

Secrecy exists,
but it does actually not matter so much.
Even without it there is division of labor
(including mental work)
due to the expertise necessary and
the limited time of one to do all alone.
Sharing information without limit, nowadays so easy,
boosts the economy.

Traders are like Maxwell demons,
like are biological cells, plants, herbivores, carnivores, ...,
farmers, traders, engineers, businessmen, investors, ...
They all process information in a successively higher level,
and can have a positive energy balance from it.
Energy is information/time, the higher the level, the slower.
But the information packets matter.
A scientist has a long curriculum on its shoulder,
like a complex protein has a long chemical pathway.

An important criterion in valuation is the marginal profit/loss (`MP = MR-MC`),
i.e. profit change by one more/less customer, product or whatever other unit,
because it tells in which direction to go to maximize profit.

All this comparison in an economy creates stable prices
(more global prices in space as well as time).

The collective comparison produces a common currency.
Although just a number, that currency is limited,
because also input channels, e.g. via work, is compared to the same scale.

Pricing is not solely based on calculations or statistics, though.
Also power hierarchies or human relations play a role.
Sometimes prices can even be dictated.

Comparing is work and many people don't spend too much effort on it,
also because the effort very quickly surpasses the value of the product.
Sharing information, the rating of other people, reduces the effort considerably.

The scarcity (limited supply and demand) is an essential feature of money,
just like of every other product.

Scarcity could be named stability of valuation in a statistical sense.
It does not refer to one person or one product.
It does not mean that an individual should suffer of scarcity.
It just means that sudden collective changes of valuation
through a change in trust or supply and demand brings some disruption,
with winners and losers, and needs time to stabilize again.

For a (stable) valuation there need to be (many) transactions.
Transactions need consensus of more people to use the currency.
The currency needs to be well distributed over a large basis of users
to maximize transactions.

Money, despite varying prices, still represents real resources.
In accounting, the real resources are assets,
while the money is equity+liability.
Assets = money.
But it is a local assumption, because the pricing changes.
There need to be regular currency adaptations.

The price can change because of more demand of a real resource (assets),
but it can also change because the money supply changes.

A sudden change in money supply will change the demand on assets,
which will change their prices.
The same happens when the asset supply changes.
Also both supplies can change.
After one-sided changes it takes some time for prices to stabilize again.

If a money supply change reflects the resource/asset supply change,
then the price stays stable.

Often there is one currency but many assets.
But more generally there are different types of assets,
as well as different types of currencies.
One can make a currency per product.
The currencies have their exchange rates.
To compare, one needs to convert to one currency (valuation/pricing).
One common currency stays relatively stable,
because averaged over many transactions.

A countries legal tender is kept stable by adapting the supply,

- either by issuing new money or
- by buying up money of its currency

A central organization has control by issuing or withholding money.
The control is exerted via parameters like interest rate.
More money will be issued, 

- if the central bank interest is low
- if the state's public spending is high

It is not just the political authority
that control the money supply.
Basically, those who own, do control.
So centrally owned money means central control of money supply,
and so indirectly central control of average pricing of products,
i.e. the inflation.

General inflation is not just due to money supply,
but also by the change in pricing of important products,
which are ingredients of a large portion of all products,
like energy and work force.

- by central pricing agreements like that for work force
- by change of taxes
- by a change in supply,
  e.g. by deciding to get out of fossil energy supply
- by a change in demand

Every product is its own currency.
A currency is a product like every other.
But a central currency is a special product,
because it is more centrally controlled
than any other product.

Central control would need a lot of information to make a good control.
Normally central control is associated with inadequate reaction to changes.

A transaction needs a compromise between the parties.
First, the compromise was quite local to a transaction and was done through bargaining.
But with more bookkeeping and calculations,
larger chains of transactions are taken into account.
They lead to narrower price ranges of buyers and sellers.
Transactions happen if the price ranges overlap.
The bookkeeping and other kind of communication over space and time,
like collective price agreements or dictation,
make prices more global in space and time,
i.e. more stable.

Many local independent decisions normally produce
a better stable result via the law of large numbers than by central control.
A globally used independent, not centrally controlled, exchange currency
would become stable after some time and stay stable
unless disruptive events occur.

.. note::

    - A currency is like every product.
    - Transactions (supply and demand) are needed for valuation/pricing,
      of money as well as of real assets.
    - Difference in valuation above fee produce transactions.
    - Many transactions produce a stable currency
      in the absense of disruption.

.. {traditional money compared to crypto}

Traditional Money Compared to Crypto
====================================

Crypto has all the qualities of traditional money:

- the paper bill number corresponds to a crypto key hash (number),
  but that bill/number is just the carrier of value
  and can be exchanged by another paper bill or crypto key (fungible)
- like the paper bill, a crypto-key has a value associated to it
- instead of putting the bill into your physical wallet,
  you put the crypto key into a digital wallet
- the crypto key is the record of your belonging,
  like the paper bill you own
- Your physical wallet or your bank account is your bookkeeping,
  just like the digital wallet is your bookkeeping.
  The wallet is like an account.

The role of money is to allow bookkeeping.

But for global/long-term bookkeeping, money needs to be stable,
else one better considers it as an asset, a product.

Since crypto is not widely adopted yet, it is unstable,
because not averaged over a large number of diverse transactions.

Wide adoption needs and produces stability.

Currently crypto is better considered an asset,
like a physical product or like shares on a company.

Governments regard a crypto as an asset, like shares.

Shares do get quite independent from the company that issued them.
Their price is rather dominated by supply and demand.
Only occasionally good or bad news from the company
change the behavior of traders.
If the link to the company is removed
then we basically are equivalent to a crypto,
meaning that then both have no links to real assets
other then through the valuation via supply and demand.

On the other hand many cryptos
are driven by ads and influencers,
with a company behind it that organizes that,
and also controls the consensus centrally.
This is very much like traditional shares.

Cryptos can replace traditional shares:
Instead of issuing shares,
a company can issue a crypto to finance itself.

- The manufacturer can have its own fungible token
  to express the market valuation (`EIP-20`_) of its products.

- Or every product item can get its own non-fungible token (NFT, `EIP-721`_, deed).
  It does not matter how the token is generated.
  It points to metadata via ``tokenURI`` that has more asset information.
  Ownership is not encoded in the token hash,
  but with separate addresses, like for fungible tokens.

Market
======

Market cap(italization) is coin supply times
current price of one coin with respect to a FIAT currency.

Cryptos can be bought and sold in `exchanges`_ or privately.

The crypto's exchange rate, i.e. its price,
depends on the limited supply and demand.

For the demand it must satisfy needs.

- Provide a money infrastructure easily usable via smartphones (or other computers)
- Keep the coin supply limited
- Serve as an exchange currency between other currencies over time or space
- Represent bookkeeping, possibly local for a product or a company
- Trade and exploit valuation differences

For supply, block reward and fee keep the network running:

- Crypto is created as reward for mining blocks:
  The coinbase is the first transaction of a block and it creates new output without input,
  i.e. new coin.
- The output can be sold for other currencies, which gives the coin a price.
- Transaction within the network do have a fee to account for the physical resources involved
  (electricity, computers) to reward the block miner and to avoid DoS attacks.
- Fee burning reduces the supply more, when demand is more,
  thus working against inflation,
  and possibly producing deflation.
- Buy back and burn by sending to an unusable address, is also used to reduce the supply.

All cryptos fulfill basically the same goal.
That some are valued more than others is to some extend irrational speculation,
to some extend limited support from wallets and crypto exchanges,
to some extend lack of trust.

Currently, speculation is the major motive.
This leads to unstable coins,
if there are only big players,
because big players decide slowly and keep a trend going,
trying to drag others along
and win from their movements.
There are not enough independent actors
to keep the coin stable.

A crypto cannot produce coin forever,

- because computers work with limited width numbers
- because any real resource is also limited
- because a unique consensus does not cover all needs
- because for scalability more networks are more efficient

Bitcoin, for example, reduces block subsidy gradually to 0.
The assumption is that fee and valuation can keep the nodes online.

Scalability
===========

The independent movements of a large population
to fulfill their daily needs would make a crypto stable.
That is the case for large fiat currencies.

No current crypto currency network can process that many transactions,
therefore they rise the fee to keep away the masses.

Ethereum can process around 7-15 transactions per second,
Bitcoin around 3-7.
Second layer networks like Lightning for Bitcoin and Raiden for Ethereum,
or `sharding`_ (partitioning of the database) are efforts to increase `scalability`_,
maintaining security and decentralization.

Second-layer networks reduce fees,
because some communication is done off-chain.

Bitcoin has about `13000 listening nodes`_.
A high node count produces more load for transactions,
because every node needs to process them.

The fee is an important criterion to choose a crypto.

Exponential growth is a consequence of independent times/actors
(Boltzmann statistics).
Current exponential fees make the fee market "exponential-exponential".
The fee rate should be constant.
A fee competition between cryptos can help.
But there is also the network competition for more hash power that asks for more reward.

Many different cryptos can be a remedy to the scalability problem.
Each crypto can represent a local usage (can even be pegged to a local asset).
The coins stabilize each other by exchange sites.
Some exchange sites have a site-specific exchange coin as intermediary.

Trading bots can exploit valuation differences of various cryptos,
level them out and thus produce a stable coin that can work as money.

Trust
=====

A currency is an IOU.
The amount of currency a person possesses,
is a promise of society to redeem later with same assets.

A currency is stable if people trust in it,
and they trust in it if it is stable.

You cannot trust anybody but the statistics of large number.

Individual decisions should not be made due to currency value,
because it ruins statistics.

A Currency must be stable.

- A deflationary currency is bad,
  because it postpones transactions,
  and loses the link to real economy

- An inflationary currency is bad,
  because it prevents long-term planning.

Large fiat currencies are rather stable through the sheer amount of transactions.
Stablecoin is normally pegged to to important fiat currencies like the Dollar (Tether),
Euro or Yen.

Cryptos need to be trustworthy

- the network needs to be reliable and stay online all the time
- the link to real assets (NFT) must be correct
- The way programming decisions are made,
  whether centralized or via enhancement proposal publicly scrutinized

Trading Bot
===========

Stability is relative, though.
Just as intermediary to an exchange,
a short term stability is already enough.
A bot can quickly react on changes,
exploit them and produce stability,
for people to use.

For a valuation to be stable its supply must change according to its demand.
The bot can swap falling cryptos with rising ones,
leveling them out.
This swapping is the result of many bots buying low and selling high,
but for them small amounts already matter.

.. note:: speculation on trends

  The principle of speculation is to act before others and gain from others.

  If one is first to buy in an upward trend,
  and first to sell in a downward trend, one earns most.
  If one is first in the game, one earns most.

  - By convincing others their behavior is a result and thus is of course later.
  - Otherwise one observes and anticipates the actions of others
    before they actually happen.
    Predictable behavior is always losing in speculation.

  Buy when price is minimum, sell when price is maximum.

  With slow competition:

  - buy, when the price starts to increase and
  - sell, when it starts to decrease

  But, with fast competition, a minimum in local time,
  is already beyond the minimum, when the exchange serializes independent requests.
  Then

  - buying, when the price falls and
  - sell when the price rises

  Fast bot competition produces so small and fast vibrations
  that the currency seems stable for the human eye.

Let's envision a future time where
every person has its own avatar bot and their are additional bots in several levels.
The ultimate demand is from humans, though.
The avatar must see the human demand.
For that, currencies must be pegged to real assets.

- Let's assume a currency pegged to a local electricity power station (LOCTRO).
- The demand increases locally in space and time,
  due to cold weather and electric heating.
- The power station decides to increase the price of LOCTRO to gain on the demand.
- A local consumer bot on electricity (BOTTRO) sees changes in LOCTRO.
  It exchanges LOCTRO for FARTRO (farther away power station).
- The bot is fast and humans will actually see no change in price in BOTTRO.
  BOTTRO is a stable mix.
- When all use more electricity,
  because suddenly everybody charges its electric car,
  a personal consumption avatar can swap BOTTRO's for other cryptos,
  telling the person to reduce electricity consumption,
  to use the bike instead of the EV.
- Investors see BOTTRO increase,
  such that a larger local investments makes sense.
  They build a new power station and power storage.
- After the investment has been payed off,
  competition makes BOTTRO fall and become stable again.

Bots can help stabilize local changes.
Speculative human changes are local changes.
Bots can help to merge the many cryptos into a stable global money.

.. note::


  - The role of money is to allow bookkeeping.
  - A crypto is like money,
    but the public ledger/network brings along
    the full infrastructure for bookkeeping.
  - More cryptos with (automatic) trading between them
    are a remedy to the scalability problem.


.. {defi and dao}

DEFI and DAO
============

`DEFI`_: decentralized finance

`DAO`_: decentralized autonomous organization

Cryptos are public ledgers.
This does not yet make them decentralized finance,
if the consensus rules are centrally dictated.
Rather it also needs organizational decentralization
that distribute control over the programming of the consensus rules.

The ledger only records transactions.
For transactions to increase and become statistical
the coin must be distributed.
Only in combination with fair organizational rules,
that care for a good distribution,
transactions and thus valuation of the coin becomes decentralized.

Decentralized finance usually just refers to the public ledger,
and the avoidance of a third person in transactions via smart contracts.
It does not refer to a fair distribution.
For fair distribution the participants in transactions
must care for fairness.
Fairness is an ethical value of humans,
but often cannot unfold due to lack of information,
centrally imposed to keep the advantage and power.

The distribution of information is the first step to fairness.
The following crypto properties help towards fairness:

- The ledger is public.
- Smart contracts are programmed and can be reviewed before adoption.
- Neither can be modified afterwards.
- Smart contracts can be done without the need to trust a third party.

Extra fairness effort on top of the public ledger is still needed, though.
The DAO needs its own purpose, its own constitution, local consensus rules,
The data for a specific DAO needs to be made conveniently manageable for its members
according to the DAO's constitution.

Bitcoin is a public ledger, but it is yet mostly used by rich people
that have money to speculate on ups and downs of its exchange rate.
The bitcoin capital is in the hands of a few and therefore not stable.

Everything develops by proposal and acceptance/adoption.
So someone needs to (centrally) develop a proposition.
If others accept the proposal a consensus has been reached.

A new crypto/blockchain/DAO needs someone to start it.
If it gets adopted a consensus has been reached.

But people should also verify that the further governance is decentralized
else their investment is laid into the hands of a few,
which is not decentralized finance any more.

.. {source code}

Source Code
===========

`bitcoin-core`_ was the first and is now reference implementation to many forks.
The forks, like `bitcoin-cash-node`_, share much code with `bitcoin-core`_
and regularly take over changes from `bitcoin-core`_.

Here some central identifiers. Initial ``v`` means vector, i.e. many::

   CBlock(Header): vtx (nVersion hashPrevBlock hashMerkleRoot nTime nBits nNonce)
   CTransaction: vin vout nVersion nLockTime hash
   CTxIn: prevout scriptSig nSequence
   CTxOut: nValue scriptPubKey
   COutPoint: txid n
   CChain: vChain of CBlockIndex
   CScriptCheck: scriptPubKey amount ptxTo nIn nFlags cacheStore txdata pTxLimitSigChecks pBlockLimitSigChecks
   CTxMemPool: mapTx
   CConnMan: vNodes
   CNode: hSocket, vRecvMsg

.. note:: hash

   Hashes are used for

   - transactions (``txid``)
   - public key (Pay-to-PubKey Hash = `P2PKH`_)
   - signatures (content according ``SigHashType`` + private key)
   - blocks (``hashPrevBlock``)
   - proof-of-work (`POW`_): find a nonce that makes the block hash smaller than ``nBits``

   While `POW`_'s smaller-than task is hard,
   finding the data exactly hashing to a given hash is almost impossible.
   Hashing is a `trapdoor`_.


.. {node}

Node
====

A bitcoin node is a ``bitcoind`` daemon running on a computer.
Each node is its own time.
Parallel times means parallel independent information.

To manage to maintain the consistency of many transactions,
transactions are divided into blocks.

A mining node creates blocks (``CBlock``) that are filled with transactions (``vtx``)
from the ``mempool`` of transactions (``addTxs``).
The block is like a page in a ledger.

To make a common ledger, a common time,
more mining nodes need to find a way to choose,
who contributes the next block with transactions to the chain.

The first mining node that fulfills the proof-of-work,
adds a block to to the longest chain.
The frequency of blocks is controlled by the difficulty.

``CBlockHeader::hashPrevBlock`` of each block fixes content of the previous block,
because changing the content would produce a different hash
that would not fit any more to ``hashPrevBlock`` of the next block.
The hash brings the blocks into a sequence, a chain (``vChain``).

This ledger is replicated in all full nodes.

``CBlock``  is derived from ``CBlockHeader`` and contains the  transactions (``vtx``).

The ``hashPrevBlock`` that fulfills the ``nBits`` difficulty is based on data in the header
(``hashMerkleRoot, nTime, nNonce``).
The transactions are included in the hash indirectly via the ``hashMerkleRoot`` field.

The block chain is like its own time.
The many different times of all the nodes create one common time.

The result of hashing is random.
To find ``hashPrevBlock`` that meets the difficulty the hashes per second matter.
Whether they are achieved in parallel or sequentially does not matter.
This way many slow machines can be as fast as one fast machine.
The fastest machine must not be more than 50% of the hash frequency of the whole network,
else that fast machine could tamper with a block
and then rebuild the chain and produce a longest chain,
that would be accepted by the network.

.. {network}

Network
=======

The network has a documented `protocol`_.

Nodes in the `network`_ are characterized by permission flags like ``PF_MEMPOOL,...``

The nodes exchange ``NetMsgType`` messages::

   CConnMan::ThreadMessageHandler
       PeerLogicValidation::ProcessMessages
           ::ProcessMessage
               ::RelayTransaction
               ::ProcessGetData
               ::Process...
                   CInv//ventory

A ``PeerLogicValidation`` implements the ``NetEventsInterface`` interface
with ``SendMessages`` and ``ProcessMessages``.

Only full mining nodes create new blocks.
They need and others can fetch all accumulated unconfirmed transactions (``NetMsgType::MEMPOOL/[GET]BLOCKTXN``).
Other nodes ``RelayTransaction`` one-by-one (``NetMsgType::TX``),
so after some time all nodes will have all relevant transactions.

``CInv`` types correspond to ``NetMsgType`` commands::

        MSG_TX: NetMsgType::TX
        MSG_BLOCK: NetMsgType::BLOCK
        MSG_FILTERED_BLOCK: NetMsgType::MERKLEBLOCK
        MSG_CMPCT_BLOCK: NetMsgType::CMPCTBLOCK
        MSG_DOUBLESPENDPROOF: NetMsgType::DSPROOF

Each node constantly communicates with other nodes:

- ``connman->PushMessage(pfrom, msgMaker.Make(NetMsgType::TX, ...))``, ...

- ``ProcessMessage`` according to the `protocol`_, especially:

  - fetch new blocks and determine ``ChainActive`` (longest chain) (``ActivateBestChain/FindMostWorkChain``)
  - fetch new transactions
    as they need to be in the block before the block hash is created

``ZeroMQ`` or `zmq`_ is an additional optional protocol to broadcast transactions and blocks.

.. {transactions}

Transactions
============

Each of the transactions ``vtx`` in a ``CBlock`` have

- many inputs (``vin``)
- many outputs (``vout``)

A `transaction`_ can

- split the ``vin[i]`` to more ``vout[j]``,
  to take only part of a ``vout[n].nValue`` addressed by ``vin[i]``
  and keep the rest via one's own change address, or it can

- combine more ``vin[i]`` (previous ``vout[k].nValue``) to one new ``vout[j].nValue``.

- or mix otherwise

``vin`` is the ``n``'th ``vout`` of another `transaction`_ (``txid``),
referenced via ``prevout:COutPoint{txid;n}``.

The unspent coin is important for validation.

``cacheCoins:CCoinsMap`` is a map from ``vin[m].prevout`` to ``Coin{TxOut{nValue,scriptPubKey}}``
(``CCoinsViewCache::FetchCoin()``).
This map is also stored in a leveldb ``.lvl`` database (``CDBWrapper``).
The ``CBlockTreeDB`` is also stored in a leveldb database.

The ``Coin`` can be fetched from a ``CTxMemPool`` with ``mempool.get(txid).vout[n]``.
``mempool`` holds enough transactions to check yet unstable blocks (``COINBASE_MATURITY``)
against double spending.

Older transactions are secured in blocks by ``hashPrevBlock``.
Many blocks are serialized into one ``.blk`` file.

The sum of all ``vout[].nValue``, i.e. ``GetValueOut()``,
minus the sum of all the ``vout[vin[].prevout]``, i.e. ``GetValueIn()``, is fee.

.. {fee}

Fee
===

The fee of a transaction is ``Σoutput - Σinput``.
The fees of all transactions mined into a block contribute to the coinbase,
together with the ``subsidy``.
The fees are not linked to its original transaction via address keys.
The coinbase has no input, but its output is ``subsidy+fee``.

When mining a block the transactions are ordered high fee first.
With more transaction available than fitting into a block those with higher fee are chosen,
while the others wait for the next block.

There is a ``blockMinFeeRate(DEFAULT_BLOCK_MIN_TX_FEE_PER_KB)`` to accept to block
and a ``GetMinFee()`` to accept a transaction into the transaction pool (``g_mempool``).
The latter is influenced by the ``maxMemPoolSize`` configuration.
The largest fee of the transaction falling out becomes the minimum of those allowed in.
``GetMinFee()`` gets exponentially smaller with a half life of 12 hours (or 6 or 3
depending on how fast the traffic goes down).

The users decide on the fees, but it is a guess,
because if too low the transaction will not get into a block.
A stuck transaction can be manually ``prioritisetransaction``'ed,
thus circumventing currently higher fees.
But for that you need `RPC`_ access to a node.

The number of blocks in the network are kept at a constant rate (e.g. 1 / 10 min).
With constant block size, even a larger network cannot serve more transactions.
A larger network only produces more load for transactions.

In nature exponential behavior comes from independent times.
The resource usage of a transaction can be considered constant
(proportional to the number of network nodes).
But those doing transactions are independent and
thus produce an exponential memory usage.
In the presence or constant memory,
the fee will have an exponential behavior,
shutting out an exponentially growing number of smaller fee transactions.

``getmempoolinfo`` informs about the current ``GetMinFee()``.

``GetMinFee()`` is a rate per KB.
The actual fee is ``GetMinFee().GetFee(<transaction size in bytes>)``.

On Ethereum the fee required to make transaction go through is called **gas**.
EIP-1559 burns a base fee.
Miners only get the difference to the base fee.
The base fee changes with the traffic.
Burning the base fee means more is burned the more traffic.
The supply becomes smaller, when the demand becomes higher.
This increases the price of the coin (deflationary coin/token).

.. {script}

Script
======

Bitcoin has no fields for addresses one spends money to or from.
The addresses are buried in a script indirectly addressing public keys as hashes.
To redeem a ``vout[i]->vin[j]`` from one transaction to another,
the following script composition must evaluate to ``true`` (done by ``CScriptCheck``)::

  [ <vin[j].scriptSig> ]  [ <vout[i].scriptPubKey> ]

The first part comes from the later transaction's ``vin[j]``.

There are more variants, the most frequent one is `P2PKH`_.

P2PK::

  [ <signature> ]    [ <public key> OP_CHECKSIG ]

P2PKH::

  [ <Signature> <Public Key> ] [ OP_DUP OP_HASH160 <public key hash> OP_EQUAL OP_CHECKSIG ]

P2SH allows to provide the public keys (or locks) in a script only when actually spending::

  [ <only push data to stack> <script> ] [ OP_HASH160 <script hash> OP_EQUAL ]

  e.g.:

  [ <signature> {<pubkey> OP_CHECKSIG} ] [ OP_HASH160 <hash of {<pubkey> OP_CHECKSIG>}> OP_EQUAL ]

The hash prevents linking an UTXO to the public key
and avoids that future more powerful computers can infer the private key from the public.
Hashes are also smaller and thus easier to be communicated on paper or screen printout,
either via `binary-to-text`_ encoding like base58 or a QR code.

ECDSA `cryptography`_ (`secp256k1`_ for Bitcoin) allows to recover the public key from the private key.
So only the private key needs to be saved.

The public key can also be recovered from a signature and the message/hash that was signed.
This is actually how ``<signature> <public key> OP_CHECKSIG`` works.
To redeem, ``OP_CHECKSIG`` needs to have access to the private key.
How the hash for the signature is created is known by ``SigHashType``.
The last byte of the signature encodes ``sigHashType`` for ``SignatureHash(), VerifySignature()``.
``SignatureHash`` in ``script/interpreter.cpp`` shows what is signed.
``sigHashType`` can decide that more of the transaction than just ``vout[i]->vin[j]`` is signed,
normally ``sigHashType=SIGHASH_ALL``,
i.e. the whole transaction is signed in each ``vout[i]->vin[j]`` link.

Everybody can recreate the same hash using the same data in the same order,
but only the owner of the private key
can make a signature of the hash fitting to he public key it contains.

When redeeming,
the signature can be published,
so that everybody can verify that the token was redeemed righteously
(``scriptSig``).

``SignSignature`` can be used to fill  ``vin[i].scriptSig``, i.e. to redeem a transaction.

The ``sigHashType`` used in ``scriptSig`` does not depend on ``scripPubKey``,
i.e. ``OP_CHECKSIG`` will succeed if the public key fits to the signature,
independent of the content that was signed.

Token
=====

In general the hash of some data is called token.
For example, in pay-to-public-key-hash (`P2PKH`_),
the public key is the essential part in ``scriptPubKey``.
It is thus an ownership token.

`EIP-20`_ (ERC-20) is a specification of fungible tokens
on the `ethereum`_ network.
Coins are fungible tokens: They don't identify an asset.
200000 compatible tokens exist.
They are all traded on the Ethereum network,
and can thus be exchanged against each other.
UNI from uniswap is such a ERC-20 token.

`EIP-721`_ specifies non-fungible token (NFT, deed).
The value of NFT's is in its links to physical assets or other
non-copyable items like contracts (mortgages and the like).

It is interesting that NFT's are used for images and other things
that have no link to real assets, but that consist of data only,
and can be copied easily.

`OpenSea`_ is a marketplace for NFT's.

.. {wallet}

Wallet
======

Coins is an unspent output of transactions (UTXO, ``COutPoint``).
To use coins one needs to have

- the private key fitting to the public key hash in ``scriptPubKey``
  (for `P2PKH`_)
- the transaction hash (``txid``)
- the index ``n`` into ``vout`` of ``txid``

The public bitcoin site one can `queried with a key hash`_, i.e. with an address,
e.g.::

   https://www.blockchain.com/btc/address/1EwpnNBdFJykwxp6X8v9AfZnup9bgmrLE1

Wallets can find transactions with ``importprivkey``.

``ScanForWalletTransactions`` allows to find the ``COutPoint{txid,n}``
for the private keys it contains.
A wallet then stores the transaction hashes for its keys.

So what is important is only the keys. Only **keys need backup**.

For anonymity a new key is used for every transaction output.

With `HD Wallets`_ (HD = hierarchical deterministic),
keys are generated from a seed and thus only **the seed needs backup**.
With it the wallet can construct the keys and then query the blockchain.

Using the same HD wallet,
the seed (key, phrase) can be used to regain access to all coins.
The HD `wallet`_ name should be backed up, too,
or the key `derivation path`_.

Non-custodial software wallets:

Bitcoin: Bitcoin, Electrum, Pywallet, ...

Lightning: eclair, breez, muun, ...

ERC-20:
bitbox, coinomi, metamask, zengo,
brd, edge, trust
bitpay (open source, visa functionality, segwit, schnorr)


.. {mining pow algorithm}

Mining
======

Choose one time line (block chain) for more separate times (nodes).

- Make adding a block hard enough by proof-of-work (`POW`_)
  to last enough human-relevant time to accumulate transactions (10 min).
- Make it easy to check the `POW`_ result.
- A random `POW`_ algorithm (trial-error)
  makes two parallel similar nodes about twice as fast,
  because twice as many trials are done.
- If none of the nodes is faster than the rest together
  it is impossible to overtake the longest chain.
- A node adds a block to the longest chain (= chain with most work).
- Longest chain with `POW`_ is the main consensus rule
  to choose the common time (``ChainActive``).
- ``ActivateBestChain/FindMostWorkChain`` decides to switch ``ActiveChain``.
- Transactions (and its fees) count only in a matured ``ChainActive``.

POW loop:

- try a `nonce`_ until the block hash becomes smaller then a ``arith_uint256 bnTarget``,
  constructed from ``nBits`` (difficulty).

  The ``arith_uint256`` type is used to represent a block hash.
  ``SetCompact`` constructs a large ``arith_uint256 bnTarget`` number from a compact ``uint32_t nBits``.

- ``GetNextWorkRequired`` calculates ``nBits``, ``CheckProofOfWork`` checks.

- A node mines in response to ``generatetoaddress``.

  ``CreateNewBlock()`` create a ``CBlockTemplate``, on which one finds ``nNonce``,
  then ``ProcessNewBlock()/ActivateBestChain()/ConnectTip()/ConnectBlock()``


``getblocktemplate`` is

- an `RPC`_ API function
- a protocol

`getblocktemplate`_ allows to do mining separately:

- the *miner* asks the server
  about some fixed data
  (``nVersion, hashPrevBlock, nTime, nBits``)
  that needs to go into the block
  via ``getblocktempate``.
- The *miner* can change
  ``hashMerkleRoot, nTime, nNonce``
  to produce a hash that meets ``nBits`` difficulty.
- The *miner* calls ``submitblock`` on the server.

For a pure mining implementation in an ASIC,
`libblkmaker`_ can be used to call `getblocktemplate`_ to a server.
Then the miner can be simple,
concentrating only on changing values
to meet the difficulty (mining).

A bitcoin full node (server) can have more miners.
This is called a mining pool.
The full node is the server.
It redistributes the reward to the miners.


.. {consensus}

Consensus
=========

Apart from fulfilling the difficulty on longest chain,
there are other relevant rules that decide,
whether transactions and blocks are accepted by the network
(``MAX_MONEY``, ``MedianTimePast()``, ...).
The coin is the result of the network consensus rules.
The consensus rules decide,
which transactions and blocks are accepted.
The consensus rules are like a parallel program producing one time:
the blockchain.

The nodes could have completely different implementations,
if the behavior is the same.
Two different implementations
would need long testing against each other to produce the same behavior.
The nodes are controlled by different parties,
but they still choose the same implementation to produce the same behavior.
The implementation of peers is not visible, though.
If advantages are detected,
individual nodes slightly change implementation and behavior here and there.
The network adapts slowly by introducing new rules and checks them starting from a specific height
or ``MedianTimePast()`` time.
The upgrades have are named after `BIPs`_ or get special names, like ``taproot``.

Changes in the behavior need to be taken over by all nodes simultaneously,
or they are backward incompatible.

:hard fork:
If more nodes do not agree on the new rules,
the transactions and/or blocks are mutually not accepted any more,
which is a *hard fork* of the network and the into separate branches.

:soft fork:
In a *soft fork* changes need to have backward compatible behavior,
to allow communication until almost all nodes are upgraded.

Fork above refers to chain forks.
The software that creates a chain can also be forked.
The software fork can possibly create a completely new chain
with its own genesis block.


.. {bitcoin-cli rpc command}


RPC Command
===========

After starting, ``bitcoind`` exposes its interface as `RPC`_.
The RPC names and parameters are also command line arguments of ``bitoin-cli``.

To list commands:

.. code:: sh

  bitcoin-cli help

The simplest way to send money:

.. code:: sh

  bitcoin-cli sendtoaddress [address] [amount]

Further information:

- `bitcoin-from-cli`_ tutorial
- In the source code scan for ``RPCHelpMan``.

