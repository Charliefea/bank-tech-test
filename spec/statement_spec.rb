require 'statement'

  describe Statement do
    subject(:statement) { described_class.new }
    describe '#display' do
      it 'displays the transactions' do
        example_list_of_transactions = [[Time.now, 100], [Time.now, -100]]
        initial_balance = 0
        date = Time.now.strftime('%x')
        expect(statement.display(example_list_of_transactions, initial_balance)).to eq "date || credit || debit || balance\n#{date} || 100.00 || || 100.00\n#{date} || || 100.00 || 0.00\n"
      end
    end
  end
