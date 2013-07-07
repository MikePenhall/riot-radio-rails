class Post < ActiveRecord::Base
  vaildates :title {presence: :true}

end
