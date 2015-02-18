# Specific Magento tasks
namespace :mage do
  desc 'Clear Magento Cache.'
  task :cc do
    on release_roles :all do
      execute "cd #{current_path} && php -r \"require_once 'app/Mage.php'; umask(0); Mage::app()->cleanCache();\""
    end
  end

  desc 'Clear Cheetah Cache'
  task :hwscc do
    on release_roles :all do
      execute "cd #{current_path} && php -r \"require_once 'app/Mage.php'; umask(0); Mage::app(); Mage::getModel('hwscache/engine')->clean();\""
    end
  end

  desc 'Disable the Magento install by creating the maintenance.flag in the web root'
  task :disable do
    on release_roles :all do
      execute "cd #{current_path} && touch maintenance.flag"
    end
  end

  desc 'Enable the Magento stores by removing the maintenance.flag in the web root'
  task :enable do
    on release_roles :all do
      execute "cd #{current_path} && rm -f maintenance.flag"
    end
  end

  desc 'Run the Magento indexer'
  task :indexer do
    on release_roles :all do
      execute "cd #{current_path}/shell && php -f indexer.php -- reindexall"
    end
  end
end
