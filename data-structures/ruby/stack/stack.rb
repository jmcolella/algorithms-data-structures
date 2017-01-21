class Stack

  attr_accessor :top

  def initialize
    @top = nil
  end

  def push( node )
    if self.isEmpty?
      self.top = node
    else
      node.next = self.top
      self.top = node
    end
  end

  def pop
    if self.isEmpty?
      raise StackError, 'Stack is empty, cannot pop!'
    else
      item = self.top
      self.top = self.top.next
      return item
    end
  end

  def peek
    return self.top
  end

  def isEmpty?
    return self.top == nil ? true : false
  end

  private

  class StackError < StandardError
  end

end
