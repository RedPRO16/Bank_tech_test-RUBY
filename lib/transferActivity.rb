require_relative './transaction'

# Tracking all transfer
class TransferActivity
  attr_reader :all_transactions

  def initialize(trans_class = Transaction)
    @all_transactions = []
    @trans_class = Transaction
  end

  def add_transaction(date, credit, debit, balance)
    format_balance = balance_two_decimals(balance)
    new_transaction = @trans_class.new(date, credit, debit, format_balance)
    @all_transactions.push(new_transaction)
  end

  private

  def balance_two_decimals(balance)
    format('%.2f', balance)
  end
end
