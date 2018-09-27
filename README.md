
# PagerDuty Trigger

Opens a PagerDuty incident

## Getting Started

I wrote this extension because the VSTS integration with PagerDuty only supports work item creation and management.  I needed to be able to open a PagerDuty incident when a release fails.  However, I couldn't get the webhook trigger to work, and I couldn't restrict the webhook trigger to certain releases.  One of the limitations of this current release is that it does not pass event details or error messages through to PagerDuty.

### Prerequisites
This extension requires an existing PagerDuty subscription and a service integration.

## Configuration
The Integration Key and any details should be added in the appropriate fields.  To alert when the release fails, set the `Control Option` to run the task `only when a previous task has failed`.

![](https://raw.githubusercontent.com/cboroson/PD-Trigger/master/readme-image1.jpg)

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* Craig Boroson 

See also the list of [contributors](https://github.com/cboroson/PD-Trigger/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

