class Book < ActiveRecord::Base
  scope :finished, -> { where("finished_on IS NOT NULL") }
  scope :recent  , -> { where("finished_on > ?", 2.days.ago) }

  # scope always reture the collection
  scope :search  , -> (keyword) { where(title: keyword) if keyword.present? }

  def finished?
    finished_on.present?
  end
end
