class QueueNode

  attr_accessor :next
  attr_reader :data

  def initialize( args={} )
    @data = args.fetch(:data)
    @next = nil
  end

end
