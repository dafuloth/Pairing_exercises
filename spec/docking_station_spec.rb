require 'docking_station.rb'

describe DockingStation do
  it 'DockingStation responds to' do
    expect(subject).to respond_to :release_bike
  end
end
