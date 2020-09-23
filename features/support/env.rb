require 'rspec'
require 'page-object'
require 'data_magic'

World(PageObject::PageFactory)

$app_url = page_url 'https://plants.oaklandnursery.com/12130001'

$file_path = 'features/support/test data/test_data.yml'
$test_data = YAML.load_file file_path
