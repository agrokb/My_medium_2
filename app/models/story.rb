class Story < ApplicationRecord
  acts_as_paranoid
  extend FriendlyId
  friendly_id :slug_candidate,use: :slugged

  include AASM
  #validations
  
  validates :title, presence: true

  #relationship
  belongs_to :user

  #scopes
  scope :publish_stories, -> { published.with_attached_cover_image.order(created_at: :desc).includes(:user) }
  #Upload Image
  has_one_attached :cover_image

 #instance methods
  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize(transliterations: :russian).to_s
  end

  aasm(column: 'status',no_direct_assignment: true)  do
    state :draft, initial: true
    state :published

    event :publish do
      transitions from: :draft, to: :published 
    end
    event :unpublish do
      transitions from: :published, to: :draft
    end
  end

 
  private
  def slug_candidate
      [:title,[:title, SecureRandom.hex]]
  end
end
