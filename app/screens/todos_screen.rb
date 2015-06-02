class TodosScreen < PM::TableScreen
  title "Inspect 2015 Todos"
  stylesheet TodosScreenStylesheet

  def on_load
    set_nav_bar_button :right, title: "Add", action: :add_todo
  end

  def table_data
    [{
      cells:
      Todo.all.collect { |t| { title: t.body } }
    }]
  end

  def view_will_appear(animated)
    update_table_data
  end

  def add_todo
    open TodoAddScreen
  end
end
