module.exports = ({ env }) => ({
  auth: {
    secret: env(
      "ADMIN_JWT_SECRET",
      "OBJOyZksIrpnCR3g8SgwaUOWemOdafuhIwPJXNrUqj1YyFoiQN4f+2Hfgo+kKxsN"
    ),
  },
  apiToken: {
    salt: env(
      "API_TOKEN_SALT",
      "MYkOrDBhIqnHX5/e71D0xFqKZXIMWsslavvzUVh/vT7wfMiNxFXJKPukLHKQ7Wn0"
    ),
  },
});
