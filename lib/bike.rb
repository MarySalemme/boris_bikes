class Bike

  attr_reader :status
  
  def initialize(status = "good")
    @status = status
  end

  def working?
    @status == "good" ? true : false
  end

  def brake
    @status = "broken"
  end

end
