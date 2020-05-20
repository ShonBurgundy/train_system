class City

  attr_reader :id
  attr_accessor :name

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
  end

  def self.all

  end

  def save

  end

  def ==(city_to_compare)

  end

  def self.clear

  end

  def self.find(id)

  end

  def update(attributes)

  end

  def delete

  end

end