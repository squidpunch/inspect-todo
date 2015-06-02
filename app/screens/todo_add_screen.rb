class TodoAddScreen < PM::Screen
  title "Add a new Todo item"
  stylesheet TodoAddScreenStylesheet

  def on_load
    @body = append!(UITextField, :body)
    append(UIButton, :save).on(:tap) do
      Todo.create(body: @body.text)
      cdq.save

      close
    end
  end
end
