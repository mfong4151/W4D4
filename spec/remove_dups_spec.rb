require 'rspec'
require 'remove_dups'


#uniq
describe "uniq" do
    let(:array){[1,1,2, 2, 3,4,5]}

    it "#removes duplicates from an array" do
        expect(array.uniq).to eq([1,2,3,4,5])

    end
end

