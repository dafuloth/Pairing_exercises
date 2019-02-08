require 'docking_station.rb'

describe DockingStation do
  it 'DockingStation responds to' do
    expect(subject).to respond_to :release_bike
  end

  # it "gets the bike and expects it to work" do
  #   docking_station = DockingStation.new
  #   bike = subject.release_bike
  #   expect(bike.working?).to eq true
  # end

  it "gets the bike and it is working" do
    bike = Bike.new
    station = DockingStation.new
    station.dock_bike(bike)
    expect(station.release_bike).to eq(bike)
    expect(bike.working?).to eq(true)
  end

  it "doesn't release a bike if no bike docked" do
    expect{subject.release_bike}.to raise_error("no bike is docked")
  end

  it 'docks a bike' do
    # arrange
    bike = Bike.new
    docking_station = DockingStation.new
    docking_station.dock_bike(bike)
    expect(docking_station.bike.class).to eq Bike
  end


  it { is_expected.to respond_to(:dock_bike).with(1).argument }
end
  # # arrange
  # docking_station = DockingStation.new
  # # act
  # bike = docking_station.release_bike
  # # assert
  # it { is_expected bike.class to eq Bike}
