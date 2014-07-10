# どこまでやったか

(2014/7/11)
List3.39まで
Guardは上手く動くけどもGuardfileの内容の一部に問題があり、エラーとなる。
ActiveRecordを呼び失敗しているが、原因を特定できないのでスキップする。


 　　　　01:57:40 - INFO - Guard is using TerminalTitle to send notifications.
　　　　01:57:40 - INFO - Starting Spork for RSpec
　　　　Using RSpec, Rails
　　　　Preloading Rails environment
　　　　Loading Spork.prefork block...
　　　　Spork is ready and listening on 8989!
　　　　01:57:46 - INFO - Spork server for RSpec successfully started

　　　　01:57:46 - INFO - Guard::RSpec is running
　　　　01:57:46 - INFO - Running all specs
　　　　Running tests with args ["--drb", "-f", "progress", "-r", "/Users/cjeecsiy/.rvm/gems/ruby-2.0.0-p481@railstutorial_rails_4_0/gems/guard-rspec-2.5.0/lib/guard/rspec/formatter.rb", "-f", "Guard::RSpec::Formatter", "--failure-exit-code", "2", "spec"]...
　　　　Exception encountered: #<ActiveRecord::ConnectionNotEstablished: ActiveRecord::ConnectionNotEstablished>
　　　　backtrace:
　　　　/Users/cjeecsiy/.rvm/gems/ruby-2.0.0p481@railstutorial_rails_4_0/gems/activerecord-4.0.4/lib/active_record/connection_adapters/abstract/connection_pool.rb:546:in `retrieve_connection'
　　　　/Users/cjeecsiy/.rvm/gems/ruby-2.0.0-p481@railstutorial_rails_4_0/gems/activerecord-4.0.4/lib/active_record/connection_handling.rb:79:in `retrieve_connection'
　　　　
    
    