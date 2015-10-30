task :default => :tu

desc "Pruebas unitarias de la clase Fracc"
task :tu do
  sh "ruby -I. test/test_fracc.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/test_fracc.rb -n /simple/"
  puts "Ejecucion Simple"
end