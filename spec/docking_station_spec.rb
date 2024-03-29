require 'docking_station'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }
    it { is_expected.to respond_to(:dock).with(1).argument }

    it "returns a bike" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bikes).to eq [bike]
    end

    describe '#release_bike' do
       
        it 'releases a bike' do
            bike = Bike.new
            subject.dock(bike)
            expect(subject.release_bike).to eq bike
        end
    
        it 'raises an error when no bikes are available' do
            expect { subject.release_bike }.to raise_error 'No bikes available'
        end
    end


    describe '#dock' do
        it "docks a bike" do
            bike = Bike.new 
            expect(subject.dock(bike)).to eq [bike]
        end

        it 'raises an error when full' do
            20.times { subject.dock Bike.new }
            expect { subject.dock Bike.new }.to raise_error 'Docking station full'
        end
    end

end
