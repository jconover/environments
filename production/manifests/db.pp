node 'db.example.com' inherits 'default' {
  include sudo
  #include postgresql::server
  #include mysql::server
  include ::mysql::server
}
