module Balance
  module Period
    module_function

    def per_dates(initial_balance:, start:, finish:, targets:, incomes:)
      target_chunks = targets.reduce([]) do |chunks, target|
        chunks + Target::Chunk.calculate(target, start)
      end

      days_count = finish - start

      (0..days_count).reduce([]) do |acc, day|
        latest = acc.last || {}

        previous_balance = latest[:balance] || initial_balance
        date = start + day


        new_balance = Balance::Date.new_balance(
          previous_balance,
          on_date(target_chunks, date),
          on_date(incomes, date),
        )

        acc + [{ balance: new_balance, date: date }]
      end
    end

    def on_date(items, date)
      items.select { |item| item[:date] == date }
    end
  end
end
