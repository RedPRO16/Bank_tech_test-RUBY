require_relative './printStatement'
require_relative './transferActivity'

class BankAcc
  attr_reader :balance

  def initialize(activity_class = TransferActivity, statement_class = PrintStatement)
    @balance = 0
    @activity = activity_class.new
    @printStatment = statement_class.new
  end

  def deposit(amount)
    @balance += amount
    credit = amount_two_decimals(amount)
    @activity.add_transaction(current_date, credit, '', @balance)
  end

  def withdraw(amount)
    @balance -= amount
    debit = amount_two_decimals(amount)
    @activity.add_transaction(current_date, '', debit, @balance)
  end

  def print
    @printStatment.print(@activity.all_transactions)

  end

  private

  def current_date
    Time.now.strftime('%d/%m/%Y')
  end

  def amount_two_decimals(amount)
    format('%.2f', amount)
  end

end