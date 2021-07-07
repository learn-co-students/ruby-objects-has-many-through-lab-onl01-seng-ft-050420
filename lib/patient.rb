class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
  end
  
  def appointments
    return Appointment.all.select {|x| x.patient == self}
  end
  
  def doctors
    patient_doctors = []
    
    appointments.each do |x|
      patient_doctors << x.doctor
    end
    
    return patient_doctors
  end
end