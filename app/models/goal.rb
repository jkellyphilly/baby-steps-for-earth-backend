class Goal < ApplicationRecord

  has_many :goal_tags
  has_many :tags, through: :goal_tags

  has_many :plan_goals
  has_many :plans, through: :plan_goals

  validates :title, :content, presence: true

  def create_tags_from_params(tags)
    tags.split(',').each {|tc| self.tags << Tag.find_or_create_by_tag_content(tc)}
  end

end
