source 'https://rubygems.org'

gem 'rails', '3.2.3'


#网站框架
gem 'bootstrap-sass' ,'3.1.1'
#分页
gem 'will_paginate' ,'3.0.4'
#设置will_paginate使用bootstrap分页样式
gem 'bootstrap-will_paginate' ,'0.0.9'
#哈希函数bcrypt对密码加密
gem 'bcrypt'       ,'3.1.7'
gem 'bcrypt-ruby'  ,'3.1.5'
#创建实例
gem 'faker' ,'1.3.0'

#单步测试需要的gem
group :development  do
  gem 'pry' #单步测试
  #gem 'pry-remote'
  gem 'pry-nav' ,'0.2.3' #单步测试
  #gem 'pry-rails'  #让binding.pry停住在页面视图
end
#单元测试和集成测试
group :development, :test do
  gem 'sqlite3'  ,'1.3.9' #sqlite数据库
 
  gem 'rspec-rails', '2.13.1' #单元测试和集成测试
  gem 'guard-rspec', '3.1.0'  #单元测试和集成测试

  gem 'spork-rails' ,'4.0.0' #单元测试和集成测试
  gem 'guard-spork'  , '1.5.1'#单元测试和集成测试
  gem 'childprocess'  ,'0.5.3'#单元测试和集成测试

end
#测试用gem
group :test do
  gem 'selenium-webdriver' , '2.35.1' 
  gem 'capybara', '2.1.0'
  #预构件
  gem 'factory_girl_rails' , '4.4.1'
  ##
  #gem 'cucumber-rails' , '1.4.0', :require => false
  ##测试数据库清空工具
  #gem 'database_cleaner', github: 'bmabey/database_cleaner' 
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.3'
  gem 'coffee-rails', '3.2.1' 
  gem 'uglifier', '1.0.3'
end
  
gem 'jquery-rails'

gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'

#group :doc do
#  gem 'sdoc', '0.3.20' ,require:false
#end 
group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor' ,'0.0.2'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
