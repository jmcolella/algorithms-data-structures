require_relative 'stack'
require_relative 'stack_node'

RSpec.describe Stack do
  context 'initial empty stack' do
    stack = Stack.new
    it 'is empty upon initialization' do
      expect( stack.isEmpty? ).to be( true )
    end

    it 'raises error if try to pop upon initialization' do
      expect{ stack.pop }.to raise_error( StandardError, 'Stack is empty, cannot pop!' )
    end

    it 'returns nil when peeking' do
      expect( stack.peek ).to eq( nil )
    end
  end

  context 'adding nodes to stack' do
    stack = Stack.new
    node1 = StackNode.new( data: 1 )

    it 'is not empty after pushing a node' do
      stack.push( node1 )
      expect( stack.isEmpty? ).to be( false )
    end

    it 'returns entire top node when peeking' do
      stack.push( node1 )
      expect( stack.peek ).to eq( node1 )
    end
  end

  context 'removing nodes from stack' do
    stack = Stack.new
    node1 = StackNode.new( data: 1 )
    node2 = StackNode.new( data: 2 )
    stack.push( node1 )
    stack.push( node2 )

    it 'returns the top node when popped' do
      expect( stack.pop ).to eq( node2 )
    end

    it 'returns the next node after popping when peeking' do
      expect( stack.peek ).to eq( node1 )
    end

    it 'is empty when all nodes are popped' do
      stack.pop
      expect( stack.isEmpty? ).to be( true )
    end
  end
end
