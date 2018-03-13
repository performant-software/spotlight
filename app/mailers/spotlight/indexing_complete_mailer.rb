module Spotlight
  ##
  # Notify the curator that we're finished processing a
  # batch upload
  class IndexingCompleteMailer < ActionMailer::Base
	  include Devise::Mailers::Helpers

	def documents_indexed(csv_data, exhibit, user)
      @number = csv_data.length
      @exhibit = exhibit
      mail(	to: user.email,
		  	from: mailer_sender(devise_mapping),
		  	subject: 'Document indexing complete')
    end
  end
end
