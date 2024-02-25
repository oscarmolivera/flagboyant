namespace :flags do
  desc "Download and attach flags to countries"
  task download_and_attach: :environment do
    FlagService.download_and_attach_flags_to_countries
  end
end