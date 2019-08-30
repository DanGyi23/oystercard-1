require 'journey'

describe Journey do
  let(:entry_station) { double :entry_station }
  let(:exit_station) { double :exit_station }
  let(:name) {double :name}
  let(:zone_a) {1}
  let(:zone_b) {6}

  describe "#fare" do
    it "charges relevant fare for a complete journey" do
      subject.entry_station.name = name
      subject.exit_station.name = name
      subject.entry_station.zone = zone_a
      subject.exit_station.zone = zone_b
      expect(subject.fare).to eq(6)
    end

    it "charges penalty fare if no entry station is recorded" do
      subject.exit_station = exit_station
      expect(subject.fare).to eq(6)
    end
  end

end
