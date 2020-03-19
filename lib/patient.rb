require "pry"

class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

  def appointments
    Appointments.map {|appointment| appointment.patient}
  end

  def doctors
      Appointment.map {|appointment| appointment.doctor}
  end

end
