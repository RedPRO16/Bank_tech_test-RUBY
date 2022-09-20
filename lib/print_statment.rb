
class Print_statment

  def initiliaze
    @act_class = Activity

  end

  def header
    'date || credit || debit || balance'
  end

  def print(transactions)
    puts header
    transactions.reverse.each do |item|
      puts "#{item.date} || #{item.credit} || #{item.debit} || #{item.balance}"
    end

  end
end