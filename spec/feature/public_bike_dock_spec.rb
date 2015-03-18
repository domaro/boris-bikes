require 'docking_station'

feature 'member of public docks bike' do
  scenario 'docking station unable to receive as full' do
    docking_station = DockingStation.new
    20.times { docking_station.dock Bike.new }
    expect { docking_station.dock Bike.new }.to raise_error 'Station Full'
  end
end

# feature 'changing station bike capacity' do
#  scenario 'docking station can increased (or non-default) capacity' do
#   docking_station = DockingStation.new 30
#    expect { docking_station.instance_variable_get(:@capacity) }.to eq 30
#  end
# end
