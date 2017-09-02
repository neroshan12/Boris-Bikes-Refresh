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
end
