require 'pry'

class Person
  # your code here

  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
  :weight, :handed, :complexion, :t_shirt_size,
  :wrist_size, :glove_size, :pant_length, :pant_width

  @@all = []

  def initialize(args)
    args.each_key do |key, value|
      self.send("#{key}=", args[key])
    end
    @@all << self
  end

  # pers = {
  #   name: "Bob",
  #   hair_color: "brown",
  #   eye_color: "brown"
  # }

  # person1 = Person.new(pers)

  # binding.pry
end
