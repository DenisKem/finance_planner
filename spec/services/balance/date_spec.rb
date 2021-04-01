RSpec.describe Balance::Date do
  describe ".new_balance" do
    let(:args) { [balance, target_chunks, incomes] }

    let(:balance) { 300 }
    let(:target_chunks) do
      [
        {
          amount: 150,
        },
        {
          amount: 150,
        }
      ]
    end

    let(:incomes) do
      [
        { amount: 50 },  { amount: 25 }
      ]
    end

    it "calculates new_balance" do
      expect(Balance::Date.new_balance(*args)).to eq(75)
    end
  end
end
