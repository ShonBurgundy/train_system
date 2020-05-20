class Train

  attr_reader :id
  attr_accessor :name

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
    @cities = []
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
    @name == train_to_compare.name()
  end

  def self.clear
    DB.exec("DELETE FROM trains *;")
  end

  def self.find(id)
    train = DB.exec("SELECT * FROM trains WHERE id = #{id};").first
    @name = train.fetch("name")
    @id = train.fetch("id").to_i
    Train.new({:name => @name, :id => @id})
  end

  def update(attributes)
    if (attributes.has_key?(:name)) && (attributes.fetch(:name) != nil)
      @name = attributes.fetch(:name)
      DB.exec("UPDATE trains SET name = '#{@name}' WHERE id = #{@id};")
    # elsif (attributes.has_key?(:name)) && (attributes.fetch(:name) != nil)
    #   train_name = attributes.fetch(:name)
    #   train = DB.exec("SELECT * FROM trains WHERE lower(name) = '#{name.downcase}';").first  
    #   if train != nil
    #     DB.exec("INSERT INTO stops(train_id, city_id) VALUES (#{train['id'].to_i}, #{@id});")
    #   end
    end
  end

  # def delete

  # end

end