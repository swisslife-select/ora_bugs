Undefined Method "type", 1
==========================

When migrating, the following exception occurs:

    $ rake db:migrate --trace
    ** Invoke db:migrate (first_time)
    ** Invoke environment (first_time)
    ** Execute environment
    ** Invoke db:load_config (first_time)
    ** Execute db:load_config
    ** Execute db:migrate
    rake aborted!
    NoMethodError: undefined method `type' for "VARCHAR2(255)":String
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_methods/time_zone_conversion.rb:60:in `create_time_zone_conversion_attribute?'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_methods/time_zone_conversion.rb:49:in `block (2 levels) in inherited'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:61:in `call'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:61:in `block in matching'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:60:in `select'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:60:in `matching'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:56:in `decorators_for'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:47:in `apply'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:29:in `block in add_user_provided_columns'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:28:in `map'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:28:in `add_user_provided_columns'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attributes.rb:91:in `columns'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attributes.rb:96:in `columns_hash'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/querying.rb:41:in `find_by_sql'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/relation.rb:638:in `exec_queries'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/relation.rb:514:in `load'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/relation.rb:243:in `to_a'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/relation/delegation.rb:46:in `map'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/migration.rb:844:in `get_all_versions'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/migration.rb:985:in `migrated'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/migration.rb:990:in `ran?'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/migration.rb:967:in `block in runnable'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/migration.rb:967:in `reject'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/migration.rb:967:in `runnable'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/migration.rb:952:in `migrate'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/migration.rb:820:in `up'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/migration.rb:798:in `migrate'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/tasks/database_tasks.rb:137:in `migrate'
    /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/railties/databases.rake:44:in `block (2 levels) in <top (required)>'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/task.rb:240:in `call'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/task.rb:240:in `block in execute'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/task.rb:235:in `each'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/task.rb:235:in `execute'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/task.rb:179:in `block in invoke_with_call_chain'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/monitor.rb:211:in `mon_synchronize'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/task.rb:172:in `invoke_with_call_chain'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/task.rb:165:in `invoke'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/application.rb:150:in `invoke_task'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/application.rb:106:in `block (2 levels) in top_level'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/application.rb:106:in `each'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/application.rb:106:in `block in top_level'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/application.rb:115:in `run_with_threads'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/application.rb:100:in `top_level'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/application.rb:78:in `block in run'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/application.rb:176:in `standard_exception_handling'
    /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rake/application.rb:75:in `run'
    /Users/username/.rvm/rubies/ruby-2.2.0/bin/rake:33:in `<main>'
    Tasks: TOP => db:migrate
