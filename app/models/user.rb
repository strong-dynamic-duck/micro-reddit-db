class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy

    validates :name, presence: true, length: { minimum: 4 }, uniqueness: true
    before_save :downcase_fields

    def downcase_fields
        self.name.downcase!
    end
end
