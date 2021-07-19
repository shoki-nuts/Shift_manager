class Shift < ApplicationRecord
  belongs_to :user
  belongs_to :admin, class_name: 'User'

  validate :date_before_start
  validate :punch_out_after_start

  def date_before_start
    errors.add(:start_time, "は過去の日付を選択できません") if start_time < Date.today
  end

  def punch_out_after_start
    errors.add("退勤時刻は出勤時刻より後にしてください") if punch_out < punch_in
  end
end
