class Episode < ApplicationRecord
  belongs_to :podcast
  has_many :reviews, dependent: :destroy
  has_many :favorite, dependent: :destroy
  has_many :taggings, through: :reviews
  has_many :tags, through: :taggings

  def self.tagged_with(name)
    Tag.find_by!(name: name).episodes
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
