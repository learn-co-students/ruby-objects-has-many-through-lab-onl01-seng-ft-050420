class Patient
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def appointments 
    Appointment.all.select{|appointment| appointment.patient == self}
  end
  def doctors 
    self.appointments.collect{|appointment| appointment.doctor}.uniq
  end 
  def new_appointment(name, doctor)
    Appointment.new(name, self, doctor)
  end
  def self.all
    @@all
  end
end