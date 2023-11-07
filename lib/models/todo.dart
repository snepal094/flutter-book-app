


class Todo{
  final String todo;
  final String DateTime;

  Todo({required this.DateTime, required this.todo});

  @override
  String toString() {
    return 'Todo(DateTime: ${this.DateTime}, todo: ${this.todo})';
  }



}