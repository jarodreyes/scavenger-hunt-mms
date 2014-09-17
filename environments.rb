configure :development do
  DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/dev.db")
end

configure :production do
  DataMapper.setup(:default, 'postgres://user:password@hostname/database')
end