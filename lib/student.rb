class Student
  attr_reader :name, :cookies

  def initialize(name)
    @name = check_name(name)
    @cookies = []
  end

  def add_cookie(new_cookie)
    @cookies << new_cookie
  end

  def check_name(name)
    if name.class == String
      name
    else
      "Default Name Assigned"
    end
  end
end
