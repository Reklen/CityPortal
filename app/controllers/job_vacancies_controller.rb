class JobVacanciesController < ApplicationController

  def index
    @job_vacancies = JobVacancy.all
  end

  def show

  end

end
