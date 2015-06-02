class AppDelegate < PM::Delegate
  include CDQ # Remove this if you aren't using CDQ

  status_bar false, animation: :none

  def on_load(app, options)
    cdq.setup # Remove this if you aren't using CDQ
    open TodosScreen.new(nav_bar: true)
  end
end
