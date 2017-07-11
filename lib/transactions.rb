class Transactions

  def initialize
    @list_of_transactions = []
  end

  def new_transaction(amount)
    @list_of_transactions.push([Time.now, amount])
  end
end
