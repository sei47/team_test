class TeamMailer < ApplicationMailer
  default from: 'from@example.com'

  def change_leader_mail(leader)
    @email = leader.email
    mail to: @email, subject: I18n.t('views.messages.change_leader')
  end
end
