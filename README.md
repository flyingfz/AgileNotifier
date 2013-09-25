AgileNotifier
=============

Agile Notifier - an easy way of monitoring Agile SW Engineering by auralization change.  It supports most of the popular tools including **CI** (Continuous Integration), **SCM** (Source Control Management), and **ITS** (Issue Tracking System).  Of course you can integrate more tools as you want.  And the simple beautiful DSL syntax gives you a quick start.

In a modern agile team, members would like to be notified once their Continuous Integration job fails which may be caused by anyone's recent commit.  That's the initial idea of this tool.

The funny thing is that, whenever a build fails, it can blame whoever submitted the commit, in whatever language you want, and even the sentenses can be randomly chosen each time :)

## Examples of Usage:
```ruby
include AgileNotifier

Configuration.set do
  ci_url 'http://x.x.x.x:8080'
  ci_job 'your-project-continuous-build'
  ci_get Jenkins

  scm_url 'https://github.xyzcompany.com'
  scm_repo user: 'your_user_name', repo: 'your_repository_name'
  scm_get Github, enterprise: true

  # for non-enterprise version
  # scm_url 'https://api.github.com'
  # scm_repo user: 'your_user_name', repo: 'your_repository_name'
  # scm_get Github

  speak 'en'
  play 'Boing' # Mac OSX Text to Speech voice name, optional field

  alert_on_fail
end
```
