require_relative 'scratch'

  describe Array do
    let(:testing_array) { [1,4,5,2,3] }

    describe 'when running non-enumerables' do
      before :each do
        expect(testing_array).to_not receive(:shuffle)
      end

      describe 'my_shuffle' do
        it 'should mix up the order of elements' do
          expect(testing_array.my_shuffle).to_not eq([1,4,5,2,3])
        end

        it 'should not change the number of elements' do
          testing_array.my_shuffle.length
          expect(testing_array.my_shuffle.length).to eq(testing_array.length)
        end

        it 'should not change the elements in the array' do
          testing_array.my_shuffle.sort
          expect(testing_array.my_shuffle.sort).to eq(testing_array.sort)
        end
      end
    end

    describe 'when running enumerables' do
      before :each do

        banned_methods = Enumerable.public_instance_methods + [:each]
        banned_methods.my_each do |element|
          expect(testing_array).to_not receive(element)


          end
        end


      
      describe '#my_each' do

          it 'should iterate through each element' do
               result = []
               [1,4,5,2,3].my_each do |element|
                result << element
              end

              expect(result).to eq(testing_array)  
            
          end
        end

      describe '#my_map' do
        it 'should produce a new array with the block applied to each element' do
          squares =  [1,4,5,2,3].my_map { |e| e * e }

          squares_map = [1,16,25,4,9]
          expect(squares).to eq(squares_map)
        end
      end
    end



describe String do
  let(:test_string) { "buttercup" }

  before :each do
    [:gsub, :capitalize, :capitalize!].each do |method|
      expect(test_string).to_not receive(method)
    end
  end

  describe 'my_capitalize!' do
    it 'should not return a new object id' do
      expect(test_string.my_capitalize!.object_id).to eq(test_string.object_id)
    end

    it 'should return string first letter capitalized' do
      expect(test_string.my_capitalize!.split(//)[0]).to eq(test_string.chars[0].capitalize)
    end
  end
end
end