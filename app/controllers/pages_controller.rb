class PagesController < ApplicationController

  def welcome
  end

  def portfolio
  end

  def blog
  end

  def about
  end

  def contact
  end


    def new_contact
      @submission = ContactSubmission.new
    end

    def create_contact
      @submission = ContactSubmission.new(contact_params)

      if @submission.save
        redirect_to '/contact', notice: 'Form submitted successfully!'
      else
        render 'new_contact'
      end
    end

    private

    def contact_params
      params.require(:contact_submission).permit(:name, :email, :message)
    end



end
