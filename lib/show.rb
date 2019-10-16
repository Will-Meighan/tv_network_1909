class Show

  attr_reader :name, :creator, :chars

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
    @chars = []

  end

  def add_characters(character)
    @chars << character
  end

  def total_salary
    @characters.reduce(0) do |total_salary, character|
      total_salary += character.salary
    end
  end

end
