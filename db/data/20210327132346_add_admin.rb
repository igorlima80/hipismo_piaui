class AddAdmin < SeedMigration::Migration
  def up    
    u = User.create email: 'admin@admin.com', password: '12345678'
   
  end

  def down

  end
end
