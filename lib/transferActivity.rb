require_relative './transaction'

# Tracking all transfer
class TransferActivity
  attr_reader :all_transactions

  def initialize(transaction_class = Transaction)
    @all_transactions = []
    @transaction_class = Transaction
  end

  def add_transaction(date, credit, debit, balance)
    format_balance = balance_two_decimals(balance)
    new_transaction = @transaction_class.new(date, credit, debit, format_balance)
    @all_transactions.push(new_transaction)
  end

  private

  def balance_two_decimals(balance)
    format('%.2f', balance)
  end
end
