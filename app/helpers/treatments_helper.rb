module TreatmentsHelper
  def format_date(date)
    date.strftime "%A %d %B %Y"
  end

  def format_as_yes_or_no(bool)
    bool ? "Yes" : "No"
  end

  def week_heading(year, week)
    if year < 2016
      week = week + 1
    end

    # strange behviour around year end
    year = year + 1 if week == 53
    week = 1 if [0, 53].include?(week)

    date_text = format_date Date.commercial(year, week, 1)
    "Week beginning: " + date_text
  end

  def paid?(treatment)
    treatment.paid? ? "✅" : "❌"
  end

  def sort_treatments(a, b)
    date_comparision = b.date_of_treatment <=> a.date_of_treatment
    return date_comparision unless date_comparision == 0

    venue_comparision = a.venue <=> b.venue
    return venue_comparision unless venue_comparision == 0

    a.client_name <=> b.client_name
  end
end
