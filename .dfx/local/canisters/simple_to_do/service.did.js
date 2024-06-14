export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'addTodo' : IDL.Func([IDL.Text], [], []),
    'completeTodo' : IDL.Func([IDL.Nat], [], []),
    'showTodos' : IDL.Func([], [IDL.Text], []),
  });
};
export const init = ({ IDL }) => { return []; };
