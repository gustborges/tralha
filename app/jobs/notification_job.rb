class NotificationJob < ApplicationJob
  queue_as :default

  def perform(donation_id)
    donation = Donation.find(donation_id)

    Notification.create(title: "Que pena! #{donation.name} ainda não recebeu pedidos. Clique aqui para ver como reciclar.", user: donation.user, type: "donor")
  end
end
