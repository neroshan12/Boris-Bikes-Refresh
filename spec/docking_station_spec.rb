require 'docking_station'

describe DockingStation do      # Describe
  it { is_expected.to respond_to :release_bike }
#  describe 'responds to_release bike' do
#    expect(subject).to respond_to :release_bike
#  end
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

#  it { is_expected.to respond_to(:bike)}
  it 'returs docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike # need to return the bike we just docked
  end
end
