class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all 
    @@all
  end

  def all_memberships 
    Membership.all.select{|member| member.lifter == self}
  end

  def all_gyms 
    self.all_memberships.map{|membership| membership.gym }
  end

  def self.average_lift 
    sum_lift_total = self.all.sum{|lifter| lifter.lift_total }
    sum_lifters = self.all.length
    sum_lift_total / sum_lifters
  end

  def total_cost
    self.all_memberships.sum{|membership| membership.cost }
  end

  def new_member(gym, membership_cost)
    membership_1 = Membership.new(membership_cost, self, gym)
  end

end
