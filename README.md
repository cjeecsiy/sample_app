# どこまでやったか

(2014/8/20)
Chapter9
ハッシュから上手く取り出せていないためにエラーが起きている。
params[session]の形で取り出せるように修正が必要。
Chapter8の演習の実装の仕方がよくなかった模様。

    7) User Pages edit with valid information 
      Failure/Error: sign_in user
      NoMethodError:
        undefined method `[' for nil:NilClass
      # ./app/controllers/sessions_controller.rb:9:in `create'
      # ./spec/support/utilities.rb:29:in `sign_in'
      # ./spec/requests/user_pages_spec.rb:67:in `block (3 levels) in <top (required)>']

(2014/8/11)
Chapter8完了

(2014/8/3)
Chapter7完了

(2014/8/1)
概ね動くが、mailカラムにデータを入れてもらえずにエラーとなっている
->解決

    rake db:migrate RAILS_ENV=development


<pre>
Processing by UsersController#create as HTML
  Parameters: {"utf8"=>"✓", "authenticity_token"=>"8bMqRD+Ubb/rBeGocP7WmD5pZjtaSPvk+xKZRg5+B20=", "user"=>{"name"=>"koni", "email"=>"hoge@hoge.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Create my account"}
     (0.2ms)  BEGIN
       User Exists (1.1ms)  SELECT 1 AS one FROM `users` WHERE `users`.`email` = 'hoge@hoge.com' LIMIT 1
         SQL (0.8ms)  INSERT INTO `users` (`created_at`, `name`, `password_digest`, `updated_at`) VALUES ('2014-07-31 17:14:03', 'koni', '$2a$10$AyeNd3krSF5ROdbjtQOYUu2G6g8U64N7eKjJmKbT0LjYgtuyUOHSe', '2014-07-31 17:14:03')
	    (0.7ms)  COMMIT
</pre>

(2014/7/15)
- [Chapter5.3.4 RSpecを洗練させる](http://railstutorial.jp/chapters/filling-in-the-layout?version=4.0#sec-pretty_rspec)
- [Chapter5.3.2 Railsのルート](http://railstutorial.jp/chapters/filling-in-the-layout?version=4.0#sec-rails_routes)

(2014/7/11)
List3.39まで
Guardは上手く動くけどもGuardfileの内容の一部に問題があり、エラーとなる。
ActiveRecordを呼び失敗しているが、原因を特定できないのでスキップする。

<pre>
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
</pre>
