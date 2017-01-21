const stack = require( './stack' );
const stackNode = require( './stack_node' );

describe ( 'Stack', () => {

  describe ( 'initial empty Stack', () => {
    const testStack = Object.create( stack );

    it ( 'is empty upon initialization', () => {
      expect( testStack.isEmpty() ).toBe( true );
    });

    it ( 'returns error message if try to pop upon initialization', () => {
      expect( testStack.pop() ).toEqual( 'Stack is empty, cannot pop!' )
    });

    it ( 'returns null when peeking', () => {
      expect( testStack.peek() ).toEqual( null );
    })
  });

  describe ( 'adding nodes to stack', () => {
    const testStack = Object.create( stack );
    const node1 = Object.create( stackNode );
    node1.initialize( 1 );

    it ( 'is not empty after pushing a node', () => {
      testStack.push( node1 );
      expect( testStack.isEmpty() ).toBe( false );
    });

    it ( 'returns top node when peeking', () => {
      testStack.push( node1 );
      expect( testStack.peek() == node1 ).toBeTruthy();
    });
  });

  describe ( 'removing nodes from stack', () => {
    const testStack = Object.create( stack );
    const node1 = Object.create( stackNode );
    const node2 = Object.create( stackNode );

    node1.initialize( 1 );
    node2.initialize( 2 );
    testStack.push( node1 );
    testStack.push( node2 );

    const node2Next = node2.next;

    it ( 'returns the top node when popped', () => {
      expect( testStack.pop() == node2 ).toBeTruthy();
    });

    it ( 'returns the next node after popping when peekings', () => {
      expect( testStack.peek()  == node1 && node1 == node2.next ).toBeTruthy();
    });

    it ( 'is empty when all nodes are popped', () => {
      testStack.pop();
      expect( testStack.isEmpty() ).toBe( true );
    });
  });

});
