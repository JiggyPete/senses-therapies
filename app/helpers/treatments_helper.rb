module TreatmentsHelper
  def format_date(date)
    date.strftime "%A %d %B %Y"
  end

  def format_as_yes_or_no(bool)
    bool ? "Yes" : "No"
  end

  def week_heading(year, week)
    date_text = format_date Date.commercial(year, week, 1)
    "Week beginning: " + date_text
  end
end
