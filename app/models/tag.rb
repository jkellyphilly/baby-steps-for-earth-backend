class Tag < ApplicationRecord

  has_many :goal_tags
  has_many :goals, through: :goal_tags

  validates :content, presence: true

  # scope :with_content, ->(tag_name) { where("content = ?", tag_name) }

  def self.find_or_create_by_tag_content(content)
    content.strip!
    content.downcase!
    content.gsub!(' ', '-')
    Tag.find_or_create_by(content: content)
  end

end
