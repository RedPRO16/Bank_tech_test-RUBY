require_relative './print_statment'
require_relative './transferActivity'

class BankAcc
  attr_reader :balance

  def initialize(act_class = TransferActivity, stat_class = Print_statment)
    @balance = 0
    @activity = act_class.new
    @print_statment = stat_class.new
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
    @print_statment.print(@activity.all_transactions)

  end

  private

  def current_date
    Time.now.strftime('%d/%m/%Y')
  end

  def amount_two_decimals(amount)
    format('%.2f', amount)
  end

end