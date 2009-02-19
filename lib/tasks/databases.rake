namespace "db" do
 namespace "generate" do
   desc "generate sql for migrations"
   task "migration_sql" => :environment do
     MigrationSqlGenerator::Generator.generate
   end
 end
end