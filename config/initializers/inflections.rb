# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
  inflect.irregular 'adesão', 'adesões'
  inflect.irregular 'plano de saúde', 'planos de saúde'
  inflect.irregular 'profissão', 'profissões'
  inflect.irregular 'dedução', 'deduções'
  inflect.irregular 'tipo de benefício', 'tipos de benefício'
  inflect.irregular 'fornecedor', 'fornecedores'
  inflect.irregular 'categoria de material', 'categorias de material'
  inflect.irregular 'tipo de serviço', 'tipos de serviço'
  inflect.irregular 'tipo de telefone', 'tipos de telefone'
  inflect.irregular 'tipo de pagamento', 'tipos de pagamento'
  inflect.irregular 'item de menu', 'items de menu'
 


#   inflect.uncountable %w( fish sheep )
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
