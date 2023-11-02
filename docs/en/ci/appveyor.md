# Appveyor

- In case of organizations, public project membership on GitHub at
  `https://github.com/orgs/<orgname>/people/<username>` is required
- [Sign up][1] with the username or organization name on GitHub
- [Revoke GitHub access][2] if the project is owned by another account
- Reauthorize if revoked
- Create a [Personal access token][3] with `repo` permissions
- [Encrypt the token][4]
- Add the encrypted token string to the configuration file

Source: [Publishing artifacts to GitHub Releases][5]


[1]: https://ci.appveyor.com/signup
[2]: https://ci.appveyor.com/authorizations
[3]: https://github.com/settings/tokens
[4]: https://ci.appveyor.com/tools/encrypt
[5]: https://www.appveyor.com/docs/deployment/github/
