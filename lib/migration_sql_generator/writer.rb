module MigrationSqlGenerator
  class Writer
    class << self
      attr_accessor :file_name
    
      def reset
        FileUtils.rm_rf output_dir
        Dir.mkdir output_dir
      end
  
      def output_dir
        File.join(RAILS_ROOT, "db", "migration_sql")
      end
  
      def path
        File.join(output_dir, file_name)
      end
  
      def write(string)
        File.open(path, 'a') { |file| file << string; file << "\n" }
      end
    end
  end
end