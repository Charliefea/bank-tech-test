class Statement
  def display(list_of_transactions, initial_balance)
    statement_text = "date || credit || debit || balance\n"
  p  statement_text += statement_body(list_of_transactions,initial_balance)
  end

private

  def statement_body(list_of_transactions, initial_balance)
    previous_balance = initial_balance
    statement_text = ''
    list_of_transactions.each  do |transaction|
      statement_text += statement_row(transaction, previous_balance) + "\n"
      previous_balance += transaction[1]
    end
    statement_text
  end

  def statement_row(transaction, previous_balance)
    [pretty_date(transaction[0]),credit_or_debit_column(transaction[1]), "#{transaction[1] += previous_balance}.00"].join(' || ')
  end

  def credit(value)
    value > 0
  end

  def credit_or_debit_column(value)
    return "#{value}.00 ||" if credit(value)
     "|| #{-value}.00"
  end

  def pretty_date(date)
    date.strftime('%x')
  end

end
