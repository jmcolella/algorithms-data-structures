class Queue

  attr_accessor :first, :tail

  def initialize( args={} )
    @first = nil
    @tail = nil
  end

  def enqueue( node )
    if self.isEmpty?
      @first = node
    else
      if @tail == nil
        @first.next = node
        @tail = node
      else
        @tail.next = node
        @tail = node
      end
    end
  end

  def dequeue
    if self.isEmpty?
      raise QueueError, 'Queue is empty, cannot remove a node'
    else
      item = @first
      @first = @first.next

      if @first && @first.next == nil
        @tail = nil
      end

      return item
    end
  end

  def isEmpty?
    return @first == nil && @tail == nil ? true : false
  end

  private
  class QueueError < StandardError
  end

end
