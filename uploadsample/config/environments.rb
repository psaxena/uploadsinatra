#The environment variable DATABASE_URL should be in the following format:
# => postgres://{user}:{password}@{host}:{port}/path
configure :production, :development do
	#db = URI.parse(ENV['DATABASE_URL'] || 'postgres://postgres:neem@1.0@localhost:44469/testdb')

	# ActiveRecord::Base.establish_connection(
			# :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
			# :host     => db.host,
			# :port     => db.port,
			# :username => db.user,
			# :password => db.password,
			# :database => db.path[1..-1],
			# :encoding => 'utf8'
	# )
	
	ActiveRecord::Base.establish_connection(
	  :adapter  => 'postgresql',
	  :host     => 'localhost',
	  :port     => '44469',
	  :username => 'postgres',
	  :password => 'neem@1.0',
	  :database => 'testdb',
	  :encoding => 'utf8'
	)
end