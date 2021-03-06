class Journal < ApplicationRecord
    belongs_to :user
    has_many :tasks, dependent: :destroy

    validates :name,
        presence: true,
        length: { maximum: 20 }

    def get_next_task_position
        if tasks.none?(&:persisted?)
            1
        else
            tasks.order(position: :asc).last.position + 1.to_s
        end
    end
        
    def percent_complete
        return 0 if tasks.none?
        
        complete_tasks = tasks.select(&:completed?).count
        ((complete_tasks.to_f / tasks.count) * 100).round
    end
end
