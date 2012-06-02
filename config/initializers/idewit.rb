configFile = File.join(Rails.root, "config", "admin.yml")
APP_CONFIG = (FileTest.exists? configFile) ? YAML.load_file(configFile) : {}
