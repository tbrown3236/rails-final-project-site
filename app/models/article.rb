class Article < ActiveRecord::Base

  validates_presence_of :title, :author, :published_date, :published, :content, :thumbnail

  after_create :send_newsletter


  def send_newsletter
    User.where(newsletter: 1).each do | user |
      Welcome.send_newsletter(self, user).deliver_now
    end

  end


end
