class UserMailer < ActionMailer::Base
  default from: "notification@rescue-path.com"

  def notification_email(user, caze)
    @user = user
    @case = caze
    mail(to:@user.email, subject:"The Case has been updated ##{@case.case_identifier}",
        body: "A new case has been updated http://rescue-path.herokuapp.com/cases/#{@case.id}",
        content_type: "text/html")
  end
end
