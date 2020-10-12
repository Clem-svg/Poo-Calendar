
class User
  attr_accessor :email
  attr_accessor :age
  @@all_users = []

  def initialize(email,age)

    @email = email
    @age = age
    @@all_users << self

  end

  def self.all

    return @@all_users

  end

  def self.find_by_email(searched_email)

    @@all_users.each do |user|
      if user.email == searched_email
        return "Voilà l'âge du User trouvé : #{user.age}"
      end
    end
  end

end

