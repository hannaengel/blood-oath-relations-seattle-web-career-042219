class Follower
attr_accessor :name, :age, :life_motto

  @@all = []
  def initialize(name,life_motto, age)
   @name = name
  @age = age
  @life_motto = life_motto
    @@all<< self
  end
  def self.all
    @@all
  end

  def cults
  Bloodoath.all.select{|oath| oath.follower == self}
end

def join_cult (cult)
  Bloodoath.new(cult, self, '2019-05-02')
end

def self.of_a_certain_age(age)
@@all.select{|follower|follower.age>=age}
end
end
