module JQueryEventsHelpers

  def trigger_change(selector)
    page.execute_script("$('#{selector}').trigger('change');");
  end

  def click_reject_link
    page.execute_script("$('a[name=reject-companies]').mouseover().click();");
  end

end

World(JQueryEventsHelpers)
