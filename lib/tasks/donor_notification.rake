namespace :donor_notification do
  desc "Sending notifications to donors after 7 days"
  task :create => :environment do

    # Ajustar essa parte - https://www.ducktypelabs.com/3-ways-to-work-with-time-in-postgres-and-ar/
    start_date = Time.zone.now.beginning_of_day
    end_date = Time.zone.now.end_of_day
    donations = Donation.where(:created_at < Time.since(604800))

    # Get old donations
    donations.each do |donation|
      NotificationJob.perform_later(donation.id)
    end
  end
end
