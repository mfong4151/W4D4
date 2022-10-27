require 'rspec'
require 'remove_dups'


#uniq
describe "uniq" do
    let(:array){[1,1,2, 2, 3,4,5]}

    it "#removes duplicates from an array" do
        expect(array.uniq).to eq([1,2,3,4,5])
    end
end

describe "two_sum" do 
    let(:array1) {[-1, 0, 2, -2, 1]}
    let(:array2) {[-5,  4, 3 , 5, 5]}
    let (:array3) {[]}

    it "return all pairs of positions where the elements at those positions sum to zero" do 
        expect(array1.two_sum).to eq([[0,4],[2,3]])   
    end

    it "return all multiple positions that belong to the same indice" do 
        expect(array2.two_sum).to eq([[0, 3],[0,4]])
    end

    it "return empty array if length < 2" do
        expect(array3.two_sum).to eq([])
    end

end

