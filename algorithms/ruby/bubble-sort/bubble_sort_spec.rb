require_relative 'bubble_sort'

RSpec.describe 'bubble_sort' do
  context 'iteration' do
    it 'returns a sorted array for [1,3,6,4,20,11,2,45,5]' do
      input = [1,3,6,4,20,11,2,45,5]
      output = [1,2,3,4,5,6,11,20,45]

      expect( bubble_sort( input ) ).to eq( output )
    end

    it 'returns a sorted array for [5,1,3,8,10,100,45,23,67,80]' do
      input = [5,1,3,8,10,100,45,23,67,80]
      output = [1, 3, 5, 8, 10, 23, 45, 67, 80, 100]

      expect( bubble_sort( input ) ).to eq( output )
    end

    it 'returns a sorted array for [54,26,93,17,77,31,44,55,20]' do
      input = [54,26,93,17,77,31,44,55,20]
      output = [17, 20, 26, 31, 44, 54, 55, 77, 93]

      expect( bubble_sort( input ) ).to eq( output )
    end

    it 'returns a sorted array for [54,26,93,17,77,31,44,55,20,77]' do
      input = [54,26,93,17,77,31,44,55,20,77]
      output = [17, 20, 26, 31, 44, 54, 55, 77, 77, 93]

      expect( bubble_sort( input ) ).to eq( output )
    end
  end

  context 'recursion' do
    it 'returns a sorted array for [1,3,6,4,20,11,2,45,5]' do
      input = [1,3,6,4,20,11,2,45,5]
      output = [1,2,3,4,5,6,11,20,45]

      expect( bubble_sort_recursion( input, 0, input.length - 1 ) ).to eq( output )
    end

    it 'returns a sorted array for [5,1,3,8,10,100,45,23,67,80]' do
      input = [5,1,3,8,10,100,45,23,67,80]
      output = [1, 3, 5, 8, 10, 23, 45, 67, 80, 100]

      expect( bubble_sort_recursion( input, 0, input.length - 1 ) ).to eq( output )
    end

    it 'returns a sorted array for [54,26,93,17,77,31,44,55,20]' do
      input = [54,26,93,17,77,31,44,55,20]
      output = [17, 20, 26, 31, 44, 54, 55, 77, 93]

      expect( bubble_sort_recursion( input, 0, input.length - 1 ) ).to eq( output )
    end

    it 'returns a sorted array for [54,26,93,17,77,31,44,55,20,77]' do
      input = [54,26,93,17,77,31,44,55,20,77]
      output = [17, 20, 26, 31, 44, 54, 55, 77, 77, 93]

      expect( bubble_sort_recursion( input, 0, input.length - 1 ) ).to eq( output )
    end
  end
end
