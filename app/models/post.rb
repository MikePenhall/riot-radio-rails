class Post < ActiveRecord::Base

  belongs_to :administrator

  validates :title, presence: :true
  validates :body, presence: :true
  validates :slug, uniqueness: :true

  before_validation :check_for_slug

  def published?
    self.published
  end

  private

    def check_for_slug
      if !self.slug.present?
        generate_slug
      elsif self.slug.match(' ')
        generate_slug(self.slug)
      end
      return
    end

    def generate_slug(string=nil)
      if string.nil?
        string = self.title
      end
      self.slug = string.parameterize.dasherize.downcase
    end

end
