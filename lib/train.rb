class Train

  attr_reader :id
  attr_accessor :name, :city

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
  end

  def self.all
    returned_trains = DB.exec("SELECT * FROM trains;")
    trains = []
    returned_trains.each() do |train|
      name = train.fetch("name")
      id = train.fetch("id").to_i
      trains.push(Train.new({:name => name, :id => id}))
    end
    trains
  end

  def save
    result = DB.exec("INSERT INTO trains (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.first().fetch("id").to_i
  end

  def ==(train_to_compare)
    self.name() == train_to_compare.name()
  end

  def self.clear
    DB.exec("DELETE FROM trains *;")
  end

  # def self.find(id)

  # end

  # def update(name)

  # end

  # def delete

  # end

end