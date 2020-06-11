namespace :donor_notification do
  desc "Sending notifications to donors after 7 days"
  task :update => :environment do

    donations = Donation.where("created_at < ?", 7.days.ago)

    # Get old donations
    donations.each do |donation|
      NotificationJob.perform_later(donation.id)
    end
  end
end
