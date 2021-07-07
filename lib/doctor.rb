class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
  end
  
  def appointments
    return Appointment.all.select {|x| x.doctor == self}
  end
  
  def patients
    doctor_patients = []
    
    appointments.each do |x|
      doctor_patients << x.patient
    end
    
    return doctor_patients
  end
end