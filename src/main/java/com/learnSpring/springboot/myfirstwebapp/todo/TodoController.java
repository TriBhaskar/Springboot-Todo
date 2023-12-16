package com.learnSpring.springboot.myfirstwebapp.todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("name")
public class TodoController {

    private TodoService todoService;


    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    // /list-todos
    @RequestMapping("list-todos")
    public String listAllTodos(ModelMap modal){
        List<Todo> todos = todoService.findByUsername("Bhaskar");
        modal.addAttribute("todos",todos);
        return "listTodos";
    }
    @RequestMapping(value="add-todo",method = RequestMethod.GET)
    public String showNewTodoPage(){
        return "todo";
    }
    @RequestMapping(value="add-todo",method = RequestMethod.POST)
    public String addNewTodo(@RequestParam String description, @RequestParam LocalDate date, ModelMap modal){
        String username =(String) modal.get("name");
        todoService.addTodo(username,description,date,false);
        return "redirect:list-todos";
    }
}
