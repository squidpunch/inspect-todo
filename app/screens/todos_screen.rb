class TodosScreen < PM::TableScreen
  title "Inspect 2015 Todos"
  stylesheet TodosScreenStylesheet

  def on_load
    set_nav_bar_button :right, title: "Add", action: :add_todo
  end

  def table_data
    [{
      cells:
      Todo.collect { |t| { title: t.body } }
    }]
  end

  def add_todo
    open TodoAddScreen
  end
end
