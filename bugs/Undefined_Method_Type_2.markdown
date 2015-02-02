Undefined Method "type", 2
==========================

The table was manually migrated in a rails 4.1 application (due to "Undefined
Method Type 1" bug).
When executing statements, the following exception occurs:

    ruby-2.2.0:001:0>> Demo.column_names
     (21.1ms)  SELECT column_name AS name, data_type AS sql_type, data_default, nullable, virtual_column, hidden_column, data_type_owner AS sql_type_owner, DECODE(data_type, 'NUMBER', data_precision, 'FLOAT', data_precision, 'VARCHAR2', DECODE(char_used, 'C', char_length, data_length), 'RAW', DECODE(char_used, 'C', char_length, data_length), 'CHAR', DECODE(char_used, 'C', char_length, data_length), NULL) AS limit, DECODE(data_type, 'NUMBER', data_scale, NULL) AS scale FROM all_tab_cols WHERE owner = 'SDD_LAB1' AND table_name = 'DEMOS' AND hidden_column = 'NO' ORDER BY column_id
  NoMethodError: undefined method `type' for "NUMBER(38)":String
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_methods/time_zone_conversion.rb:60:in `create_time_zone_conversion_attribute?'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_methods/time_zone_conversion.rb:49:in `block (2 levels) in inherited'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:61:in `call'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:61:in `block in matching'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:60:in `select'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:60:in `matching'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:56:in `decorators_for'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:47:in `apply'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:29:in `block in add_user_provided_columns'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:28:in `map'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:28:in `add_user_provided_columns'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attributes.rb:91:in `columns'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/model_schema.rb:260:in `column_names'
    from (irb):1
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/railties-4.2.0/lib/rails/commands/console.rb:110:in `start'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/railties-4.2.0/lib/rails/commands/console.rb:9:in `start'
  ... 8 levels...
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activesupport-4.2.0/lib/active_support/dependencies.rb:268:in `load'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activesupport-4.2.0/lib/active_support/dependencies.rb:268:in `block in load'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activesupport-4.2.0/lib/active_support/dependencies.rb:240:in `load_dependency'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activesupport-4.2.0/lib/active_support/dependencies.rb:268:in `load'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/commands/rails.rb:6:in `call'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/command_wrapper.rb:38:in `call'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:183:in `block in serve'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:156:in `fork'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:156:in `serve'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:131:in `block in run'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:125:in `loop'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:125:in `run'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application/boot.rb:18:in `<top (required)>'
    from /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
    from /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
    from -e:1:in `<main>'

    ruby-2.2.0:002:0>> Demo.create! name: "Test", age: 42, weight: 81.25
  NoMethodError: undefined method `type' for "NUMBER(38)":String
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_methods/time_zone_conversion.rb:60:in `create_time_zone_conversion_attribute?'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_methods/time_zone_conversion.rb:49:in `block (2 levels) in inherited'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:61:in `call'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:61:in `block in matching'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:60:in `select'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:60:in `matching'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:56:in `decorators_for'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:47:in `apply'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:29:in `block in add_user_provided_columns'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:28:in `map'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attribute_decorators.rb:28:in `add_user_provided_columns'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attributes.rb:91:in `columns'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/attributes.rb:96:in `columns_hash'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/inheritance.rb:205:in `subclass_from_attributes?'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/inheritance.rb:54:in `new'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activerecord-4.2.0/lib/active_record/persistence.rb:50:in `create!'
  ... 11 levels...
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activesupport-4.2.0/lib/active_support/dependencies.rb:268:in `load'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activesupport-4.2.0/lib/active_support/dependencies.rb:268:in `block in load'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activesupport-4.2.0/lib/active_support/dependencies.rb:240:in `load_dependency'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/activesupport-4.2.0/lib/active_support/dependencies.rb:268:in `load'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/commands/rails.rb:6:in `call'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/command_wrapper.rb:38:in `call'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:183:in `block in serve'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:156:in `fork'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:156:in `serve'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:131:in `block in run'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:125:in `loop'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application.rb:125:in `run'
    from /Users/username/.rvm/gems/ruby-2.2.0/gems/spring-1.2.0/lib/spring/application/boot.rb:18:in `<top (required)>'
    from /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
    from /Users/username/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
    from -e:1:in `<main>'  ruby-2.2.0:003:0>> 
