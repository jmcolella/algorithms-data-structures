// Structured using the Object-Linked-To-Other-Objects (OLOO) principle
// describe by Kyle Simpson in his series 'You Don't Know JS
// 'this & Object Prototypes', Chaper 5

const stack = {
  top: null,
  push( node ) {
    if ( this.isEmpty() ) {
      this.top = node
    } else {
      node.next = this.top;
      this.top = node
    }
  },
  pop() {
    if ( this.isEmpty() ) {
      return 'Stack is empty, cannot pop!';
    } else {
      let item = this.top;
      this.top = this.top.next;
      return item;
    }
  },
  peek() {
    return this.top;
  },
  isEmpty() {
    return this.top === null ? true : false
  }
};


module.exports = stack;
