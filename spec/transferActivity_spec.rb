

require 'transferActivity'

describe TransferActivity do
  subject(:list) { TransferActivity.new }

  it 'should instantiate with an empty transactions array' do
    expect(list.all_transactions.length).to eq 0
  end

  describe 'add_transaction' do

    it 'adds to transactions when deposit made' do
      list.add_transaction('04/09/2022', '50.00', '', '100.00')

      expect(list.all_transactions.length).to eq 1
      expect(list.all_transactions[0].date).to eq '04/09/2022'
      expect(list.all_transactions[0].credit).to eq '50.00'
      expect(list.all_transactions[0].debit).to eq ''
      expect(list.all_transactions[0].balance).to eq '100.00'
    end
  end
end

