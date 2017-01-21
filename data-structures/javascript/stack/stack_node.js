// Structured using the Object-Linked-To-Other-Objects (OLOO) principle
// describe by Kyle Simpson in his series 'You Don't Know JS
// 'this & Object Prototypes', Chaper 5

const stackNode = {
  data: null,
  next: null,
  initialize( data ) {
    this.data = data;
  }
};

module.exports =  stackNode;
