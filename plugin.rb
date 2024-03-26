# name: discourse-hide-links
# about: Oculta los enlaces para usuarios no autenticados en Discourse
# version: 0.1
# authors: TuNombreDeUsuario
# url: https://github.com/tu-usuario/tu-repositorio

enabled_site_setting :hide_links_enabled

register_asset 'javascripts/discourse-hide-links.js.es6'

after_initialize do
  # Código adicional para inicializar el plugin si es necesario
end
