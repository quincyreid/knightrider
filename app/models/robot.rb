class Robot < ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, styles: { large: "570x306" }, default_url: "knightrider-logo.png"

  validates :name, :description, presence: true
  validates :name, :description, :code_url, :video_url, presence: true

  def creator_name
    user.name
  end
end
