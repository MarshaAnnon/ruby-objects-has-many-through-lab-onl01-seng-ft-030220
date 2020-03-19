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
    appointments.map {|appointment| appointment.patient}
  end

  def doctors
      appointment.map {|appointment| appointment.doctor}
  end

end
