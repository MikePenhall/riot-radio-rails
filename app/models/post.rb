class Post < ActiveRecord::Base

  serialize :tags, Array
  serialize :categories, Array

  belongs_to :administrator

  validates :title, presence: :true
  validates :body, presence: :true

  before_validation :check_for_slug

  private
    def format_tags_and_categories
      self.tags.split(",")
      self.categories.split(",")
    end  

    def check_for_slug
      unless self.slug.present?
        generate_slug
      end
      return
    end

    def generate_slug
      self.slug = self.title.parameterize.dasherize
    end  

end
