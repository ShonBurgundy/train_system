class City

  attr_reader :id
  attr_accessor :name

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
  end

  def self.all
    returned_cities = DB.exec("SELECT * FROM cities;")
    cities = []
    returned_cities.each() do |city|
      name = city.fetch("name")
      id = city.fetch("id").to_i
      cities.push(City.new({:name => name, :id => id}))
    end
    cities
  end

  def save
    result = DB.exec("INSERT INTO cities (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.first().fetch("id").to_i
  end

  def ==(city_to_compare)
    @name == city_to_compare.name()
  end

  def self.clear
    # DB.exec("DELETE FROM cities *;")
  end

  def self.find(id)
    # city = DB.exec("SELECT * FROM cities WHERE id = #{id};").first
    # @name = city.fetch("name")
    # @id = city.fetch("id")
    # City.new({:name => @name, :id => @id})
  end

  # def update(attributes)

  # end

  # def delete

  # end

end