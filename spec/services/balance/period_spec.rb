RSpec.describe Balance::Period do
  describe '.per_dates' do

    let(:params) do
      {
        initial_balance: 100,
        start:  Date.today,
        finish: Date.today + 1,
        targets: [
          { date: Date.today, amount: 100,     id: 1 },
          { date: Date.today + 1, amount: 150, id: 2 },
        ],
        incomes: [
          { date: Date.today, amount: 100 }
        ],
      }
    end

    it "calculates balances" do
      expect(Balance::Period.per_dates(**params)).to match(
        [
          {
            date: params[:start],
            balance: 100 - 175 + 100,
          },
          {
            date: params[:finish],
            balance: 25 - 75 + 0,
          }
        ]
      )
    end
  end
end
