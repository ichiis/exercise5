class Book < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body,  length: { minimum: 1, maximum: 200 }
  
  def self.looks(search, word)
    if search == "perfect_match"
      @book = Book.where("title LIKE?", "#{word}")
    elsif search == "partial_match"
      @book = Book.where("title LIKE?","%#{word}%")
    else
      @book = Book.all
    end
  end
end
