require 'print_statment'

describe Print_statment do

  it 'return a header string for the statement' do
    expect(subject.header).to eq 'date || credit || debit || balance'
  end

  it 'prints each element from transactions array' do
    transactions = []
    transaction_1 = instance_double('Transaction')
    transaction_2 = instance_double('Transaction')
    allow(transaction_1).to receive_messages(date: "13/09/2022", credit: '2000.00', debit: "", balance: "2000.00")
    allow(transaction_2).to receive_messages(date: "14/09/2022", credit: "", debit: '500.00', balance: "1500.00")
    transactions.push(transaction_1, transaction_2)
  end

end