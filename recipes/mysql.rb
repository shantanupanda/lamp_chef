mysql_service 'talentica' do
	port '3306'
	version '5.5'
	initial_root_password 'talentica'
	action [:create, :start]
end
