class Role < ActiveRecord::Base
  has_many :auditions 

  def actors
    self.auditions.map{|aud| aud.actor}
  end

  def locations
    self.auditions.map{&:location}
  end

  def lead
    lead = self.auditions.find_by(hired: true) 
    lead ? lead : "No actor has been hired for this role"
  end

  def understudy
    understudy = self.auditions.where(hired: true).second 
    understudy ? understudy : "No actor has been hired as understudy for this role"
  end

end