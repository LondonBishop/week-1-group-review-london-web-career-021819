# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require 'pry'
class User

  attr_accessor :name

  @@allphotos = []

  def initialize(name)
    @name = name
  end

def photos
  @@allphotos
end

end

class Photo

  attr_accessor :user

  def initialize

  end

  def comments
    Comment.all.select {|comment| comment.photo = self}
  end

def make_comment(commentstring)
  Comment.new(commentstring, self)
  #c.photo = self
  #c.add_comment(c)
end

end


class Comment
  attr_accessor :photo, :commentstring
  @@allcomments = []

  def initialize (commentstring, photo)
     @photo = photo
     @commentstring = commentstring
     @@allcomments << self
  end


  # def add_comment(comment)
  #     @@allcomments << comment
  # end

  def self.all
    @@allcomments
  end

end

sandwich_photo = Photo.new

sophie = User.new("Sophie")

sandwich_photo.user = sophie

sandwich_photo.user.name


# binding.pry
# => "Sophie"
user.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.make_comment("this is not a very nice drink!!")
sandwich_photo.comments

# => [#<Comment:0x00007fae28043700>]

puts Comment.all
#=> [#<Comment:0x00007fae28043700>]
 binding.pry
"junk"
