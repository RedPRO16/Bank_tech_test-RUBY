
class PrintStatement

  def initiliaze
    @activity_class = Activity

  end

  def header
    'date || credit || debit || balance'
  end

  def print(transactions)
    puts header
    transactions.reverse.each do |item|
      puts "£#{item.date} || £#{item.credit} || £#{item.debit} || £#{item.balance}"
    end

  end
end

private

def to_pounds(amount)
  "£#{format("%.2f", amount.to_f)}"
end