require 'transaction'

describe 'transaction' do
  before(:each) do
    @transaction = Transaction.new('20/09/2022', '200.00', '100.00', '400.00')
  end

  it'shows date of transaction' do
    expect(@transaction.date).to eq '20/09/2022'
  end

  it'shows credit of transaction' do
    expect(@transaction.credit).to eq '200.00'
  end

  it'shows debit of transaction' do
    expect(@transaction.debit).to eq '100.00'
  end

  it'shows balance of after transaction' do
    expect(@transaction.balance).to eq '400.00'
  end

  it 'shows empty values if no debit and credit transfer' do
    @transaction = Transaction.new('20/09/2022', '', '', '400.00')
    expect(@transaction.debit).to eq ''
    expect(@transaction.credit).to eq ''
  end
end
