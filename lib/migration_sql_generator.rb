require 'migration_sql_generator/generator'

module MigrationSqlGenerator
  def self.rails_root
    @rails_root ||= defined?(RAILS_ROOT) ? RAILS_ROOT : Rails.root.to_s
  end
end
