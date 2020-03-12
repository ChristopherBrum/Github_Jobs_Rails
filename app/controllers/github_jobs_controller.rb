class GithubJobsController < ApplicationController
    def index
        response = HTTParty.get('https://jobs.github.com/positions.json')
        render json: JSON.parse(response.body)
    end 
end
