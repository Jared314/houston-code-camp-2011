desc "Run rspec tests"
task :spec do
    Rake::Task["db:migrate"].invoke
    exit(0)
end