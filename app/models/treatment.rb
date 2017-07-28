class Treatment < ActiveRecord::Base
  def week
    self.date_of_treatment.strftime('%W')
  end

  def year
    self.date_of_treatment.strftime('%Y')
  end
end
