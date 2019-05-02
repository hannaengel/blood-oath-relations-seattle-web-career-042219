class Cult
  attr_accessor :name, :location, :slogan, :founding_year

  @@all = []
  def initialize(name, location, slogan, founding_year)
  @name = name
  @location = location
  @slogan = slogan
  @founding_year = founding_year
    @@all<< self
  end
  def self.all
    @@all
  end



  def self.find_by_name(name)
    Bloodoath.all.find{|oath|oath.follower.name == name }.cult
  end

  def cult_population
    Bloodoath.all.map{|oath| oath.follower if oath.cult ==self}.compact.count
    end

  def recruit_follower(follower)
  Bloodoath.new(self, follower, '2019-05-02')
end

def self.find_by_location(location)
@@all.select{|cult|cult.location == location}
end

 def founding_year
  str = @founding_year
  str[0..3].to_i
  end

def self.find_by_founding_year(year)
@@all.select{|cult| cult.founding_year==year}
end

end
