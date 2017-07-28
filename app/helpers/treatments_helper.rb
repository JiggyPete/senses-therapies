module TreatmentsHelper
  def format_date(date)
    date.strftime "%A %d %B %Y"
  end
end
