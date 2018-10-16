module EventsHelper
  def format_price(event)
    # if event.price == 0
    # EventsHelper is a view helper
    # price setting is actually a buiness deciscion and would be better off in the model
    # we can take the ".price == 0" portion above and replace it with ".free?"
    # ".free?" is defined in the model
    if event.free?
      # "<strong>Free!</strong>".html_safe
      # OR...
      content_tag :strong, "Free!"
    else
      number_to_currency(event.price)
    end
  end
end
