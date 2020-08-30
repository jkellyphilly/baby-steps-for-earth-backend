class Tag < ApplicationRecord

  has_many :goal_tags
  has_many :goals, through: :goal_tags

  validates :content, presence: true

  # Find or create a tag with the slugified tag
  def self.find_or_create_by_tag_content(content)
    find_or_create_by(content: slugify(content))
  end

  def self.slugify(content)
    content.strip!
    content.downcase!
    tag = content.gsub(' ', '-')
  end

end
