module TreatmentsHelper
  def format_date(date)
    date.strftime "%A %d %B %Y"
  end

  def format_as_yes_or_no(bool)
    bool ? "Yes" : "No"
  end
end
