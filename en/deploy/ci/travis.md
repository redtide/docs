---
title: "Application deployment with Travis-CI"
lang: "en"
---
Continuous Integration software can build and deploy software from source
automatically.

This can be done on the `master repo` to check if code can be built on all
machine set, and also on a `tag release` to build packages to upload for a
release, like on [GitHub Releases][].

As stated [here][] on 2018-05-02 all new repository must be registered using
travis.com instead travis.org.

The following guide is based on the use of the travis tool,
which can be installed for the current user with:
```
$ gem install travis
```
## Travis CI [GitHub Pages]

Travis CI can deploy your static files to [GitHub Pages] after a successful build.

You will need to provide a [personal access token][] and set the deployment
provider details in `.travis.yml`.

For a minimal configuration, add the following to your `.travis.yml`:
```yaml
deploy:
  provider: pages
  skip_cleanup: true
  github_token: $GITHUB_TOKEN  # Set in the settings page of your repository, as a secure variable
  keep_history: true
  on:
    branch: master
```
See:
- [Authenticating with an OAuth token][]
- [Best Practices in Securing Your Data][]
- [Travis CI Encryption Keys][]

## Travis CI GitHub Releases

Other than build on each master repo push, it's possible to build and deploy
packages to upload automatically on GitHub releases page.
The configuration can be set automatically running:
```
$ travis setup releases --com
```
See: [GitHub Releases Uploading][]

[Authenticating with an OAuth token]: https://docs.travis-ci.com/user/deployment/releases#authenticating-with-an-oauth-token
[Best Practices in Securing Your Data]: https://docs.travis-ci.com/user/best-practices-security
[GitHub Pages]: https://pages.github.com/
[GitHub Pages Deployment]: https://docs.travis-ci.com/user/deployment/pages/
[GitHub Releases]: https://help.github.com/en/articles/creating-releases
[GitHub Releases Uploading]: https://docs.travis-ci.com/user/deployment/releases/#using-travis-ci-client-to-populate-initial-deployment-configuration
[here]: https://blog.travis-ci.com/2018-05-02-open-source-projects-on-travis-ci-com-with-github-apps
[personal access token]: https://help.github.com/articles/creating-an-access-token-for-command-line-use/
[Travis CI Encryption Keys]: https://docs.travis-ci.com/user/encryption-keys/
