class Physician < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :patients, through: :appointments
    validates :name, presence: true
    validates :email, presence: true
    validates_uniqueness_of :email

    before_create :add_unique_id

    private
        def add_unique_id
            unique = SecureRandom.uuid
            while Physician.where(uniq_id: unique).length != 0
                unique = SecureRandom.uuid
            end
            self.uniq_id = unique
        end
end
