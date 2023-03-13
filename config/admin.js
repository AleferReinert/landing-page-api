module.exports = ({ env }) => ({
  transfer: {
    token: {
      salt: env(
        "TRANSFER_TOKEN_SALT",
        "51GWrmftux3UNKktM1uzCtlCOa9hBEzvvsaPCasRXwyEIunBF+Pa51iRHVs44dYC"
      ),
    },
  },
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
