class AddMenu < SeedMigration::Migration
  def up
    profissional = MenuItem.create name: 'Pessoa', icon: 'fab fa-user-check', link: '#', position: 1, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Gerenciar', icon: 'fas fa-user-friends', link: 'people_path', position: 2, target: '_self', permission: 'manage', permission_check: 'Person', menu_item: profissional, published: true, active_test: "controller_name == 'people'"  
      MenuItem.create name: 'Funcionários', icon: 'fas fa-id-badge', link: 'employments_path', position: 3, target: '_self', permission: 'manage', permission_check: 'Employment', menu_item: profissional, published: true, active_test: "controller_name == 'employment'"  
      MenuItem.create name: 'Matriculados', icon: 'fas fa-id-card', link: 'registrations_path', position: 4, target: '_self', permission: 'manage', permission_check: 'Registration', menu_item: profissional, published: true, active_test: "controller_name == 'registration'"  
      MenuItem.create name: 'Cargos/Carreiras', icon: 'fas fa-briefcase', link: 'occupations_path', position:5, target: '_self', permission: 'manage', permission_check: 'Occupation', menu_item: profissional, active_test: "controller_name == 'occupations'", published: true
      MenuItem.create name: 'Deduções', icon: 'fas fa-percentage', link: 'deductions_path', position: 6, target: '_self', permission: 'manage', permission_check: 'deductions', menu_item: profissional, active_test: "controller_name == 'deductions'", published: true
      MenuItem.create name: 'Taxas', icon: 'fas fa-money-check-alt', link: 'taxes_path', position: 7, target: '_self', permission: 'manage', permission_check: 'taxes', menu_item: profissional, active_test: "controller_name == 'taxes'", published: true
      MenuItem.create name: 'Benefícios', icon: 'fas fa-money-check-alt', link: 'benefit_types_path', position: 8, target: '_self', permission: 'manage', permission_check: 'benefit_types', menu_item: profissional, active_test: "controller_name == 'benefit_types'", published: true 
      
    MenuItem.create name: 'Animais', icon: 'fas fa-horse', link: 'animals_path', position: 2, target: '_self', permission: 'manage', permission_check: 'animals', menu_item_id: nil, active_test: "controller_name == 'animals'", published: true 
      
    compra = MenuItem.create name: 'Compras e Serviços', icon: 'fas fa-shopping-cart', link: '#', position: 5, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Fornecedores', icon: 'fa fa-handshake', link: 'providers_path', position: 6, target: '_self', permission: 'manage', permission_check: 'Provider', menu_item: compra, published: true, active_test: "controller_name == 'providers'"     
      MenuItem.create name: 'Categorias de Produto', icon: 'fa fa-box', link: 'material_categories_path', position: 7, target: '_self', permission: 'manage', permission_check: 'MaterialCategory', menu_item: compra, published: true, active_test: "controller_name == 'material_categories'"     
      MenuItem.create name: 'Produtos', icon: 'fa fa-shopping-basket', link: 'materials_path', position: 8, target: '_self', permission: 'manage', permission_check: 'Material', menu_item: compra, published: true, active_test: "controller_name == 'materials'"     
      MenuItem.create name: 'Compras', icon: 'fa fa-cart-arrow-down', link: 'purchases_path', position: 9, target: '_self', permission: 'manage', permission_check: 'Purchase', menu_item: compra, published: true, active_test: "controller_name == 'purchases'"     
      MenuItem.create name: 'Tipos de Serviço', icon: 'fa fa-tools', link: 'service_types_path', position: 10, target: '_self', permission: 'manage', permission_check: 'ServiceType', menu_item: compra, published: true, active_test: "controller_name == 'service_types'"     
      MenuItem.create name: 'Serviços', icon: 'fa fa-toolbox', link: 'services_path', position: 11, target: '_self', permission: 'manage', permission_check: 'Service', menu_item: compra, published: true, active_test: "controller_name == 'services'"     
    
    admin = MenuItem.create name: 'Admin', icon: 'fas fa-lock', link: '#', position: 100, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Usuários', icon: 'fas fa-users', link: 'users_path', position: 1, target: '_self', permission: 'manage', permission_check: 'User', menu_item: admin, active_test: "controller_name == 'users'", published: true
      MenuItem.create name: 'Estados', icon: 'fas fa-map', link: 'states_path', position: 2, target: '_self', permission: 'manage', permission_check: 'State', menu_item: admin, active_test: "controller_name == 'states'", published: true
      MenuItem.create name: 'Países', icon: 'fas fa-globe-americas', link: 'countries_path', position: 3, target: '_self', permission: 'manage', permission_check: 'City', menu_item: admin, active_test: "controller_name == 'countries'", published: true
      MenuItem.create name: 'Cidades', icon: 'fas fa-map-marked', link: 'cities_path', position: 4, target: '_self', permission: 'manage', permission_check: 'City', menu_item: admin, active_test: "controller_name == 'cities'", published: true
      MenuItem.create name: 'Bancos', icon: 'fas fa-university', link: 'banks_path', position: 6, target: '_self', permission: 'manage', permission_check: 'Bank', menu_item: admin, active_test: "controller_name == 'banks'", published: true
      MenuItem.create name: 'Tipos de Telefone', icon: 'fa fa-phone', link: 'phone_types_path', position: 7, target: '_self', permission: 'manage', permission_check: 'PhoneType', menu_item: admin, active_test: "controller_name == 'phone_types'", published: true
      MenuItem.create name: 'Tipos de Pagamento', icon: 'fa fa-money-check-alt', link: 'payment_types_path', position: 7, target: '_self', permission: 'manage', permission_check: 'PaymentType', menu_item: admin, active_test: "controller_name == 'payment_types'", published: true
      
      
      MenuItem.create name: 'Configurações', icon: 'fas fa-cogs', link: 'settings_path', position: 9, target: '_self', permission: 'manage', permission_check: 'Kinships', menu_item: admin, active_test: "controller_name == 'settings'", published: true
      MenuItem.create name: 'Menu', icon: 'fas fa-bars', link: 'menu_items_path', position: 99, target: '_self', permission: 'manage', permission_check: 'MenuItem', menu_item: admin, active_test: "controller_name == 'menu_items'", published: true
  end

  def down
    MenuItem.delete_all
  end
end
