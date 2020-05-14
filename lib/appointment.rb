class Appointment :date, :patient, :doctor
  @@all = []
  
  def initialized(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
end