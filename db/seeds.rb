# Base Countries.
# Clear existing data
Country.destroy_all

# Seed data for countries
countries = [
  { name: "United States", code: "US", currency: "USD"},
  { name: "Brazil", code: "BR", currency: "BRL"},
  { name: "Mexico", code: "MX", currency: "MXN"},
  { name: "Colombia", code: "CO", currency: "COP"},
  { name: "Argentina", code: "AR", currency: "ARS"},
  { name: "Canada", code: "CA", currency: "CAD"},
  { name: "Peru", code: "PE", currency: "PEN"},
  { name: "Venezuela", code: "VE", currency: "VES"},
  { name: "Chile", code: "CL", currency: "CLP"},
  { name: "Ecuador", code: "EC", currency: "USD"}
]

# Create countries
countries.each do |country_data|
  Country.create!(country_data)
end

puts "Countries seeded successfully!"