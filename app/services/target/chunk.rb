module Target
  module Chunk
    module_function

    def calculate(target, start)
      chunks_count = target[:date] - start + 1
      chunk_amount = target[:amount] / chunks_count

      (0...chunks_count).map do |days_shift|
        {
          target_id: target[:id],
          date: Date.today + days_shift,
          amount: chunk_amount,
        }
      end
    end
  end
end
