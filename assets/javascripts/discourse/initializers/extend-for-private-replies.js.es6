import { withPluginApi } from 'discourse/lib/plugin-api';

export default {
  name: 'discourse-hide-links',
  initialize() {
    withPluginApi('0.8.7', api => {
      const currentUser = api.getCurrentUser();
      if (!currentUser) {
        $('a').each(function() {
          $(this).replaceWith(`<span class="login-to-view">${$(this).text()} (Debes iniciar sesión para ver el contenido del enlace en esta publicación)</span>`);
        });
      }
    });
  }
};
