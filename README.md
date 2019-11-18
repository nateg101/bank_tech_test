# Bank Tech Test

* Taken from [Makers Academy](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
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

### Processes & Thoughts

* Break down the "topline" actions into what they mean for functionality:
  1. Functionality so that a client can make a deposit.
    * Deposit amount and date are specified by the user.
    * Deposit must be a positive integer.
    * When a deposit is made the balance changes.
    * A history of the transaction is stored.
  2. Functionality allowing a client to make a withdrawal.
    * Withdrawal amount and date specified by user.
    * Withdrawal must be a positive integer.
    * Cannot be greater than current balance.
    * Balance changes when withdrawal is made.
    * A history of the withdrawal is made.
  3. Ability to print a statement.
    * Must be formatted as specified.
    * Must show all transactions correctly.
