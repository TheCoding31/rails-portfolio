class ContactSubmissionsController < ApplicationController
  def new
    @submission = ContactSubmission.new
  end

  def create
    @submission = ContactSubmission.new(contact_params)

    if @submission.save
      redirect_to '/view_submissions', notice: 'Form submitted successfully!'
    else
      render 'new'
    end
  end

  def index
    @submissions = ContactSubmission.all
  end

  private

  def contact_params
    params.require(:contact_submission).permit(:name, :email, :message)
  end


end
