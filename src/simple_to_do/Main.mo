import Types "Types";
import Utils "Utils";

actor simple_to_do {
    private stable var todos: [Types.Todo] = [];

    public func addTodo(description: Text): async () {
        todos := Utils.addTodo(todos, description);
    };

    public func showTodos(): async Text {
        return Utils.showTodos(todos);
    };

    public func completeTodo(id: Nat): async () {
        todos := Utils.completeTodo(todos, id);
    };
};
