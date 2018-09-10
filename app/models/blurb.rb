class Blurb < ApplicationRecord
	acts_as_taggable # Alias for acts_as_taggable_on :tags
  # acts_as_taggable_on :content
  belongs_to :user

  def stringify(tag_list)
	  tag_list.inject('') { |memo, tag| memo += (tag + ',') }[0..-1]
	end
end
