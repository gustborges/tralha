class NotificationJob < ApplicationJob
  queue_as :default

  def perform(donation_id)
    donation = Donation.find(donation_id)
    puts "Que pena! #{donation.name} ainda não recebeu pedidos. Clique aqui para ver como reciclar."
    # ainda é preciso terminar o rake + adicionar a parte de mailing
  end
end
