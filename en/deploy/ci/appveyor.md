---
title: "Application deployment with AppVeyor"
lang: "en"
---

- In case of organizations, public project membership on GitHub at
`https://github.com/orgs/<orgname>/people/<username>` is required
- [Sign up][] with the username or organization name on GitHub
- [Revoke GitHub access][] if the project is owned by another account
- Reauthorize if revoked
- Create a [Personal access token][] with `repo` permissions
- [Encrypt the token][]
- Add the encrypted token string to the configuration file

[Encrypt the token]: https://ci.appveyor.com/tools/encrypt
[Personal access token]: https://github.com/settings/tokens
[Revoke GitHub access]: https://ci.appveyor.com/authorizations
[Sign up]: https://ci.appveyor.com/signup

Source: [Publishing artifacts to GitHub Releases](https://www.appveyor.com/docs/deployment/github/)
