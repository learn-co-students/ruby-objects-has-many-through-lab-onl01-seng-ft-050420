class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end 

    def new_appointment(date,doctor)
        Appointment.new(date, patient = self, doctor)
    end

    def appointments
        Appointment.all.select { |appt| appt.patient == self}
    end 

    def doctors
        Appointment.all.map { |appt| appt.doctor}.uniq
    end


end