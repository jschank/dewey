module ActsHelper

  def display_hometown(act)
    content_tag :p, act.hometown, :class => "hometown" if (act.hometown)
  end

  def display_formerly(act)
    content_tag :p, "Formerly: #{act.formerly}", :class => "hometown" if (act.formerly)
  end

end
