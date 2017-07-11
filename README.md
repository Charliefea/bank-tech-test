# Bank Tech Test

## How to run

```
Charlottes-MacBook-Pro:bank-tech-test charlottefeather$ irb
2.4.0 :001 > require './lib/transactions.rb'
 => true
2.4.0 :002 > transactions = Transactions.new
 => #<Transactions:0x007fc2909f6fa0 @list_of_transactions=[], @initial_balance=0>
2.4.0 :003 > transactions.new_transaction(100)
 => [[2017-07-11 15:49:42 +0100, 100]]
2.4.0 :004 > transactions.new_transaction(-200)
 => [[2017-07-11 15:49:42 +0100, 100], [2017-07-11 15:49:47 +0100, -200]]
2.4.0 :005 > transactions.get_statement
date || credit || debit || balance
07/11/17 || 100.00 || || 100.00
07/11/17 || || 200.00 || -100.00"
```

## Domain
![alt text](mindmap.jpg)
## Requirements
* You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see:

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Assumptions

* Withdrawal and deposit use the same method but dependent on if the value is negative or positive it is treated as a debit or credit
* That users can become withdrawn, so there is no errors for negative balances

## Next Steps

* Add a money class to take
* Refactor the statement class
