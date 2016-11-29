class Student 
  attr_accessor :favourite_language, :name, :cohort


  def initialize(name, cohort, favourite_language)
    @name = name
    @cohort = cohort
    @favourite_language = favourite_language
  end

  def talk()
    return "I can talk."
  end

  def say_favourite_language
    return "I love " + @favourite_language + "!"
  end


end
