class Activity
attr_reader :name, :participants


  def initialize(name, participant)
    @name = name
    @participants = {}
      participant.each do |k,v|
        @participants[k] = v
      end
  end

  def total_cost
    @participants.reduce(0) do |sum, participant|
      sum + participant[1]
    end
  end

end
