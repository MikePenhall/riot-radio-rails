class Post < ActiveRecord::Base

  serialize :tags, Array
  serialize :categories, Array

  validates :title, presence: :true
  validates :body, presence: :true
  validates :slug, { presence: :true, uniqueness: :true }

  before_create :generate_slug


  private
    def generate_slug
      slug = self.title.strip

      #blow away apostrophes
      slug.gsub! /['`]/,""

      # @ --> at, and & --> and
      slug.gsub! /\s*@\s*/, " at "
      slug.gsub! /\s*&\s*/, " and "

      #replace all non alphanumeric, underscore or periods with underscore
      slug.gsub! /\s*[^A-Za-z0-9\.\-]\s*/, '_'  

      #convert double underscores to single
      slug.gsub! /_+/,"_"

      #strip off leading/trailing underscore
      slug.gsub! /\A[_\.]+|[_\.]+\z/,""

      self.slug = slug
    end  

end
