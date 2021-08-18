class CountersController < ApplicationController
    def incrementvaccinations()
        vaccineCounter=Counter.find_by(name: "totalvaccinations")
        vaccineNum=vaccineCounter.value+1
        vaccineCounter.update(value: vaccineNum)
        render json: {count:vaccineNum}
    end
end
