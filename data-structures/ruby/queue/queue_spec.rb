require_relative 'queue'
require_relative 'queue_node'

RSpec.describe Queue do

  context 'initial queue is empty' do
    queue = Queue.new

    it 'returns true for isEmpty?' do
      expect( queue.isEmpty? ).to be( true )
    end

    it 'raises error when trying to dequeue node' do
      expect{ queue.dequeue }.to raise_error( StandardError, 'Queue is empty, cannot remove a node' )
    end
  end

  context 'adding nodes to queue' do
    queue = Queue.new
    node1 = QueueNode.new( data: 1 )

    it 'returns false for isEmpty? when node is added' do
      queue.enqueue( node1 )

      expect( queue.isEmpty? ).to be ( false )
    end
  end

  context 'removing nodes from queue' do
    queue = Queue.new
    node1 = QueueNode.new( data: 1 )
    node2 = QueueNode.new( data: 2 )


    it 'returns first item in queue when dequeued' do
      queue.enqueue( node1 )
      queue.enqueue( node2 )

      expect( queue.dequeue ).to eq( node1 )
    end

    it 'returns true for isEmpty when all nodes dequeued' do
      expect( queue.dequeue ).to eq( node2 )
      expect( queue.isEmpty? ).to be( true )
    end
  end

end
