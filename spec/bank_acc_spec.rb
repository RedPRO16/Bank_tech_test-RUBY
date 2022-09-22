require 'bank_acc'

describe BankAcc do
  subject(:acc) {BankAcc.new}

  it 'should start with 0 balance' do
    expect(acc.balance).to eq 0
  end

  it 'when deposit is made show credit balance' do
  acc.deposit(2000)
  expect(acc.balance).to eq 2000
  end

  it 'when withdraw balance should be reduce amount of debit' do
    acc.deposit(2000)
    acc.withdraw(500)
    expect(acc.balance).to eq 1500
  end

  it 'returns an error message if deposit amount is equal to or below 0' do
    expect(acc.deposit(-1000)).to eq('Invalid amount. Please enter a value over 0')
  end

  it 'returns an error message if withdrawal amount exceeds current balance' do
    expect(acc.withdraw(2000)).to eq('Insufficient funds')
  end

end