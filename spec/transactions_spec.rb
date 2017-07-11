require 'transactions'

  describe Transactions do
    subject(:transactions) { described_class.new}
    describe '#new_transaction' do
      it 'adds a new transaction to a hash' do
        time_now = Time.now
        allow(Time).to receive(:now).and_return(time_now)
        expect(transactions.new_transaction(10)).to eq [[time_now, 10]]
      end
    end
  end
