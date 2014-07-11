class Book < ActiveRecord::Base

  belongs_to :genre
  
  scope :finished, ->{ where.not(finished_on: nil)}
  scope :recently_finished, -> {where('finished_on > ?', 2.days.ago)}
  scope :search, ->(keyword){where('keywords LIKE ?',"%#{keyword.downcase}%") if keyword.present?}

  before_save :set_keywords


  def finished?
    finished_on.present?
  end

  protected
  def set_keywords
    self.keywords = [title, author, descr].map(&:downcase).join(' ')
  end

end
