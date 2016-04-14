class Van

DEFAULT_CAPACITY = 5

  def initialize(capacity=DEFAULT_CAPACITY)
    @van_array = []
    @van_capacity = capacity
  end

  def load_bikes(bikes)
    raise 'The van is full' if @van_array.length >= 5
    @van_array << bikes
  end

end
