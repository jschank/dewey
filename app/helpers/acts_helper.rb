module ActsHelper

  def display_hometown(act)
    if (act.hometown)
      content_tag :p, act.hometown, :class => "hometown"
    end
  end

end
