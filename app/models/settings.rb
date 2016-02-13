class Settings < Settingslogic
  namespace Rails.env
  source "#{Rails.root}/config/config.yml"
end
