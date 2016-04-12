require  './lib/docking_station'
docking_station = DockingStation.new
bike = Bike.new
docking_station.dock(bike)
docking_station.release_bike

