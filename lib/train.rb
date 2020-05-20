class Train

  attr_reader :id
  attr_accessor :name, :city

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
    @city = attributes.fetch(:city)
  end

  def self.all

  end

  # def save

  # end

  # def self.clear

  # end

  # def self.find(id)

  # end

  # def update(name)

  # end

  # def delete

  # end

end