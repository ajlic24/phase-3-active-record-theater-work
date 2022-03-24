class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        arr = []
        auditions.each do |instance|
            arr << instance.actor
        end
        arr
    end

    def locations
        arr = []
        auditions.each do |instance|
            arr << instance.location
        end
        arr
    end

    def lead
        if auditions.first
            auditions.first
        else
            "no actor has been hired for this role"
        end
    end

    def understudy
        if auditions.second
            auditions.second
        else
            "no actor has been hired for understudy for this role"
        end
    end
end