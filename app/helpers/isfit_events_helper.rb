module IsfitEventsHelper
  def create_calender_start_padding(date)
    unless date.monday?
      if @start_date.sunday?
        start = 6
      else
        start = @start_date.wday - 1
      end
      "<tr>" +
      (1..start).map do
        "<td></td>"
      end.join
    end.try(:html_safe)
  end

  def create_calender_end_padding(date)
    unless date.sunday?
      (@end_date.wday..6).map do
        "<td></td>"
      end.join +
      "</tr>"
    end.try(:html_safe)
  end
end
