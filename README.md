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

`ruby interface.rb`

You will be presented with a list of different options. Enjoy!

Note: please avoid the use of commas when entering integers.
