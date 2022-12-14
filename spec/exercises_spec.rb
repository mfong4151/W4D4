require 'rspec'
require 'exercises'


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

describe "my_transpose" do

    let(:array1){[5, 0, 0,  0 ]}
    let(:array2){[6, 0 ,0, 2]}
    let(:array3){[7,0, 3, 4]}
    let(:matrix){[array1, array2, array3]}

    it "transposes a matrix" do
        expect(my_transpose(matrix)).to eq([[5,6,7], [0,0,0],[0,0,3], [0,2,4]])

    end
end

describe "stock_picker" do 
    let(:stocks1) { [7,1,5,3,6,4] }
    let(:stocks2) { [7,6,4,3,1] }

    it "returns the largest range between a minimum and a maximum where the minimum comes before the maximum" do
        expect(stock_picker(stocks1)).to eq(5)
    end

    it "if there is not maximum value, return 0" do 
        expect(stock_picker(stocks2)).to eq(0)
    end

end