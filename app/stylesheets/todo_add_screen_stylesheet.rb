class TodoAddScreenStylesheet < ApplicationStylesheet
  def root_view(st)
    st.background_color = color.white
  end

  def body(st)
    st.frame = { t: 65, h: 100, w: screen_width, padding: 10 }
    st.border = { color: color.black, width: 1 }
    st.color = color.black

    st.view.placeholder = "What do you need todo?"
    st.view.contentVerticalAlignment = UIControlContentVerticalAlignmentFill
    st.accessibility_label = "What do you need todo?"
  end

  def save(st)
    st.text = "Save"
    st.border = { color: color.black, width: 1 }
    st.frame = { bp: 0, h: 40, w: screen_width, padding: 10 }
    st.color = color.black
  end
end
