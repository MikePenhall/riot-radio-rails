class Post < ActiveRecord::Base
  validates :title { presence: :true },
            :body { presence: :true },
            :slug { presence: :true, uniqueness: :true }

end
