class Work < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_imge
end
