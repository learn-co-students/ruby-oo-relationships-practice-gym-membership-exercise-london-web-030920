class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all 
    @@all
  end

  def all_memberships
    Membership.all.select{|member| member.gym == self}
  end

  def all_lifters
    self.all_memberships.map{|membership| membership.lifter }
  end

  def all_names
    self.all_lifters.map{|lifter| lifter.name}
  end

  def lift_total 
    self.all_lifters.each{|lifter| lifter.lift_total}
  end

end
