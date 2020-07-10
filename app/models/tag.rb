class Tag < ApplicationRecord

  has_many :goal_tags
  has_many :goals, through: :goal_tags

  validates :content, presence: true

  # scope :with_content, ->(tag_name) { where("content = ?", tag_name) }

end
