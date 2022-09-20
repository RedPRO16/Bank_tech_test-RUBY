# Bank tech test_Ruby

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or Node.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023
**And** a deposit of 2000 on 13-01-2023
**And** a withdrawal of 500 on 14-01-2023
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## Self-assessment

Once you have completed the challenge and feel happy with your solution, here's a form to help you reflect on the quality of your code: https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/edit

## Initial Project Setup

One-line command for the terminal that sets up RSpec and inits a git repo for project.
bundle init; bundle add rspec; rspec --init; mkdir lib; git init; git add .; git commit -m "setup"

## Class Diagram
![bank_tech excalidraw](https://user-images.githubusercontent.com/40929562/191244359-939d833f-8719-4532-b511-327e3848f330.svg)

### Approach
Initial approach split different classes to eliminate each class function then combine to get to result.

1. BankAccount- main
2. Activity- deposit, withdraw
3. Transaction-process tree
4. Statement - sum of transactions

I have difficulty at the beginning to print out process after testing pass

### Installation

* Clone this repo to your local machine using `git@github.com:RedPRO16/bank_tech_Ruby.git`
* Install dependencies:
```
$ bundle install
```
### To run the program:
```
$ cd bank_tech_Ruby
```
Then open within `irb`:
```
$ irb -r './lib/bank_acc.rb'
```
Create a new bank account:
```
> acc = BankAcc.new
```
To make a deposit of 1000:
```
> acc.deposit(1000)
```
To make a deposit of 2000:
```
> acc.deposit(2000)
```
To make a withdrawal of 500:
```
> acc.withdraw(500)
```
To print statement:
```
> acc.print
```
This will produce the following output in line with acceptance criteria:

![Screenshot 2022-09-20 at 18 09 46](https://user-images.githubusercontent.com/40929562/191324416-eaa52f43-4b30-4a66-b920-7b0d6dce2737.png)
