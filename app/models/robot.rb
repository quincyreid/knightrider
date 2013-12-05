class Robot < ActiveRecord::Base
  extend FriendlyId

  belongs_to :user
  has_attached_file :avatar, styles: { large: "570x306" }, default_url: "knightrider-logo.png"

  validates :avatar, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :avatar

  validates :name, :description, :code_url, :video_url, presence: true
  validates_format_of :code_url, with: URI.regexp(["http", "https"])
  validates_format_of :video_url, with: URI.regexp(["http", "https"])

  friendly_id :name, use: :slugged

  def creator_name
    user.name
  end

  def should_generate_new_friendly_id?
    name_changed?
  end

end
