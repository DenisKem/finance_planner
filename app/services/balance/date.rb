module Balance
  module Date
    module_function

    def new_balance(balance, target_chunks, incomes)
      balance - total(target_chunks) + total(incomes)
    end

    def total(chunks)
      chunks.reduce(0) { |total, chunk| total + chunk[:amount]  }
    end
  end
end
