class EventMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.launched.subject
  #
  def self.send_emails(event)
    @event = event
    @group = Group.find(@event.group.id)

    emails = []

    @group.users.each do |user|
      emails << user.email
    end

    emails.each do |email|
      # mail to: email, subject: "You've been challenged on App2Wait!"
      launched(email, @group, @event).deliver_now
    end
    # raise
  end

  def launched(email, group, event)
    @event = event
    @group = group
    mail to: email, subject: "You've been challenged on App2Wait"
  end
end
