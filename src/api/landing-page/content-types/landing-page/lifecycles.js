const axios = require("axios");
const netlifyWebhook = strapi.config.get("custom.newlifyWebhook");

module.exports = {
  afterCreate(event) {
    netlifyWebhook && axios.post(netlifyWebhook);
  },
  afterUpdate(event) {
    netlifyWebhook && axios.post(netlifyWebhook);
  },
};
