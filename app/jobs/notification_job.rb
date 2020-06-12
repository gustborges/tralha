class NotificationJob < ApplicationJob
  queue_as :default

  def perform(donation_id)
    donation = Donation.find(donation_id)

    Notification.create(title: "#{donation.name.capitalize} ainda não recebeu pedidos. Veja como reciclar!", user: donation.user, recipient: "donor", read: false)
  end
end
