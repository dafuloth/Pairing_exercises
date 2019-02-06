require 'docking_station.rb'

describe DockingStation do
  it 'DockingStation responds to' do
    expect(subject).to respond_to :release_bike
  end
end

describe DockingStation do
  docking_station = DockingStation.new
  it "gets the bike and expects it to work" do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
end
