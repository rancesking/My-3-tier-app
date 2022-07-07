import React, { Fragment, useEffect, useState } from "react";
import axios from "axios";
import EditTodo from "./EditTodo";

const TodoList = () => {
  const [todos, setTodos] = useState([]);

  // fetch all todos
  const getTodos = async () => {
    try {
      const response = await axios.get("http://test-internal-171997415.us-east-1.elb.amazonaws.com:3000/todos");
      // const jsonData = await response.json();

      setTodos(response.data);
    } catch (error) {
      console.log(error.message);
    }
  };

  //delete a todo
  const deleteTodo = async (id) => {
    try {
      const deleted = await axios.delete(`http://test-internal-171997415.us-east-1.elb.amazonaws.com:3000/todos/${id}`);

      setTodos(todos.filter((todo) => todo.todo_id !== id));
      console.log(deleted);
    } catch (error) {
      console.error(error.message);
    }
  };

  useEffect(() => {
    getTodos();
  }, []);

  return (
    <Fragment>
      <table class="table mt-5 text-center">
        <thead>
          <tr>
            <th>Description</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
          {todos.map((todo) => (
            <tr key={todo.todo_id}>
              <td>{todo.description}</td>
              <td>
                <EditTodo todo={todo} />
              </td>
              <td>
                <button
                  className="btn btn-danger"
                  onClick={() => deleteTodo(todo.todo_id)}
                >
                  Delete
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </Fragment>
  );
};

export default TodoList;
