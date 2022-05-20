class AgendasMailer < ApplicationMailer
  default from: 'from@example.com'

  def delete_agenda_mail(agenda ,team)
    @agenda = agenda.title
    team.users.each do |member|
      mail to: member.email, subject: I18n.t('views.messages.delete_agenda')
    end
  end
end
