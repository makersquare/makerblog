class Post < ActiveRecord::Base
  validates :name, :title, :content, presence: true

  before_save :capitalizations

  def capitalizations
    self.name = self.name.split.map(&:capitalize).join(' ')
    self.title = self.title.split.map(&:capitalize).join(' ')
  end
end
