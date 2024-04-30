# check_assets_config.rb

# Vérification de config/application.rb
config_file = File.read('config/application.rb')
if config_file.include?('config.assets.compile = true')
  puts "La compilation des assets est activée dans config/application.rb."
else
  puts "Attention : La compilation des assets est désactivée dans config/application.rb."
end

# Vérification de config/initializers/assets.rb
if File.exist?('config/initializers/assets.rb')
  puts "Le fichier config/initializers/assets.rb existe."
else
  puts "Attention : Le fichier config/initializers/assets.rb est manquant."
end

# Vérification de la structure des fichiers SCSS
if Dir.exist?('app/assets/stylesheets')
  puts "Le répertoire app/assets/stylesheets existe."
else
  puts "Attention : Le répertoire app/assets/stylesheets est manquant."
end

# Test de la compilation automatique
puts "Veuillez tester la modification d'un fichier SCSS existant pour vérifier la compilation automatique."

# Examen des fichiers de configuration de Rails
rails_config_files = ['config/environments/development.rb', 'config/environments/production.rb']
rails_config_files.each do |file_path|
  if File.exist?(file_path)
    puts "Le fichier #{file_path} existe."
  else
    puts "Attention : Le fichier #{file_path} est manquant."
  end
end
