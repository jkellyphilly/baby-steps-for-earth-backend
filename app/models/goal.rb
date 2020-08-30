class Goal < ApplicationRecord

  has_many :goal_tags
  has_many :tags, through: :goal_tags

  has_many :plan_goals
  has_many :plans, through: :plan_goals

  validates :title, :content, presence: true

  # Given a string of tags, split the string by commas.
  # Then, find the Tag with that content or create a new
  # one if none exist with that content yet.
  # Finally, only add to this Goal's tags if the tag is
  # not already applied to this Goal 
  def create_tags_from_params(tags)
    tags.split(',').each do |tc|
      new_tag = Tag.find_or_create_by_tag_content(tc)
      self.tags << new_tag if !self.tags.include?(new_tag)
    end
  end

end
