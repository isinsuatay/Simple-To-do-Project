import Types "Types";
import Array "mo:base/Array";
import Text "mo:base/Text";
import Nat "mo:base/Nat";

module Utils {
    private func nextId(todos: [Types.Todo]): Nat {
        if (Array.size(todos) == 0) {
            return 1;
        } else {
            return todos[Array.size(todos) - 1].id + 1;
        }
    };

    public func addTodo(todos: [Types.Todo], description: Text): [Types.Todo] {
        let newTodo: Types.Todo = {
            id = nextId(todos);
            description = description;
            completed = false;
        };
        return Array.append(todos, [newTodo]);
    };

    public func showTodos(todos: [Types.Todo]): Text {
        let header = "___TO-DOs___\n";
        let list = Array.map<Types.Todo, Text>(todos, func(todo: Types.Todo): Text {
            let status = if (todo.completed) { " ✔" } else { "" };
            return "(" # Nat.toText(todo.id) # ") " # todo.description # status;
        });
        return Array.foldLeft<Text, Text>(list, header, func(acc: Text, item: Text): Text {
            acc # item # "\n"
        });
    };

    public func completeTodo(todos: [Types.Todo], id: Nat): [Types.Todo] {
        return Array.map<Types.Todo, Types.Todo>(todos, func(todo: Types.Todo): Types.Todo {
            if (todo.id == id) {
                { id = todo.id; description = todo.description; completed = true }
            } else {
                todo
            }
        });
    };
};
