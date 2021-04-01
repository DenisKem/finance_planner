RSpec.describe Target::Chunk do
  describe '.calculate' do
    let(:args)   { [target, start] }

    let(:target) { {id: 1, amount: 500, date: Date.today + 1 } }
    let(:start)  { Date.today }

    it "calculates chunks" do
      expect(Target::Chunk.calculate(*args)).to match(
        [
          {
            target_id: 1,
            amount: 250,
            date: Date.today,
          },
          {
            target_id: 1,
            amount: 250,
            date: Date.today + 1,
          },
        ]
      )
    end
  end
end
