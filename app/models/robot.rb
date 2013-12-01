class Robot < ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, styles: { large: "570x306" }, default_url: "knightrider-logo.png"

  validates :name, :description, presence: true
end
