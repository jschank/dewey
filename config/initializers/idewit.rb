configFile = File.join(Rails.root, "config", "admin.yml")
APP_CONFIG = YAML.load_file(configFile)[Rails.env] if FileTest.exists? configFile
