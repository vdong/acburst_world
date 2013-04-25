class Article < ActiveRecord::Base

  # Relationships
  belongs_to :category
  
  # Validations
  validate_presence_of :title, :content

  # Scopes
  scope :alphabetical, order('title')
  scope :active, where('active = ?', true)
  
end
