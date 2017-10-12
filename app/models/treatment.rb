class Treatment < ActiveRecord::Base
  validates_presence_of :date_of_treatment

  def week
    self.date_of_treatment.strftime('%W')
  end

  def year
    self.date_of_treatment.strftime('%Y')
  end
end
