require './lib/statement.rb'
class Transactions

  def initialize
    @list_of_transactions = []
    @initial_balance = 0
  end

  def new_transaction(amount)
    @list_of_transactions.push([Time.now, amount])
  end

  def get_statement
    Statement.new.display(@list_of_transactions, @initial_balance)
  end

end
