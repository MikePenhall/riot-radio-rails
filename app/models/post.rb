class Post < ActiveRecord::Base

  serialize :tags, Array
  serialize :categories, Array

  belongs_to :administrator

  before_save :generate_slug, on: :create
  before_save :format_tags_and_categories

  validates :title, presence: :true
  validates :body, presence: :true
  # validates :slug, { presence: :true, uniqueness: :true }



  private
    def format_tags_and_categories
      self.tags.split(",")
      self.categories.split(",")
    end  

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
