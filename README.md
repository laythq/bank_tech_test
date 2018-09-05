## Bank Tech Test

This is a tech test I attempted over a couple of days for a simple banking app that can handle deposits, withdrawals and printing statements. The specification requires it be usable through a REPL, but it can also be used as a command-line app. It is written in Ruby and tested in RSpec to 100% coverage.

### Specifications

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

##### REPL: #####

To access this app through a REPL, please clone this repo and run

`bundle install`

Open irb from the root directory and run the following:

`require './lib/bank.rb'`

Initialize a new bank with:

`bank = Bank.new`

You can now run these commands to interact with the app

Deposit x:

`bank.deposit(x)`

Withdraw x:

`bank.withdraw(x)`

Show Statement:

`bank.show_statement`

##### Command-line App: #####

This command-line app can print your statement, handle deposits and handle withdrawals. Simply clone this repo and run:

`bundle install`

Then run the application through:

`ruby launch.rb`

You will be presented with a list of different options. Enjoy!

Note: please avoid the use of commas when entering integers.
