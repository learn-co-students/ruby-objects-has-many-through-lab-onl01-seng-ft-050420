class Appointment

   attr_accessor :date, :doctor, :patient
  @@all = []

  def initialize(patient, date, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self

  end

  def self.all
    @@all
  end
end
