class Book < ActiveRecord::Base
  scope :finished, -> { where("finished_on IS NOT NULL") }
  scope :recent  , -> { where("finished_on > ?", 2.days.ago) }

  # scope always reture the collection
  scope :search  , -> (keyword) {
    where("keywords LIKE ?", "%#{keyword.downcase}%") if keyword.present?
  }

  before_save :set_keywords

  def finished?
    finished_on.present?
  end

  protected

    def set_keywords
      self.keywords = [title, author, description].map(&:downcase).join('  ')
    end
end
