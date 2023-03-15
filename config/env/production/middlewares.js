module.exports = [
  "strapi::errors",
  (module.exports = [
    {
      name: "strapi::security",
      config: {
        contentSecurityPolicy: {
          useDefaults: true,
          directives: {
            "connect-src": ["'self'", "https:"],
            "img-src": [
              "'self'",
              "data:",
              "blob:",
              "dl.airtable.com",
              "landing-page-api.s3.us-east-2.amazonaws.com",
            ],
            "media-src": [
              "'self'",
              "data:",
              "blob:",
              "dl.airtable.com",
              "landing-page-api.s3.us-east-2.amazonaws.com",
            ],
            upgradeInsecureRequests: null,
          },
        },
      },
    },
  ]),
  "strapi::cors",
  "strapi::poweredBy",
  "strapi::logger",
  "strapi::query",
  "strapi::body",
  "strapi::session",
  "strapi::favicon",
  "strapi::public",
];
