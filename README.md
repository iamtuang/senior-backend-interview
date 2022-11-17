# Inventory Management

This is a Ruby on Rails web application for inventory management.

## Caterspot Technical Interview Test

* [Senior Software Engineer Interview - Step 1] (Duration approx at 5 hours)

[Senior Software Engineer Interview - Step 1]: ./SENIOR_SOFTWARE_ENGINEER_INTERVIEW_STEP_1.md

## How To Work on this Repo

When you are ready to submit your code for review, please do it as a pull request.

## Local Development

You'll want to configure your machine to run:

* Ruby 2.7.5
* Node.js 14.9.0
* Postgres

## Setup

Please run 'bin/setup'.

## Running the Application Locally

```sh
bundle exec foreman start -f Procfile.dev
```

### Employee Credentials

Once the application has been seeded, you can use access codes from the
[`DevSeed`](./lib/dev_seed.rb) class (under `DevSeed::EMPLOYEES`) to
authenticate as different employees.

## Testing

Tests are written with [RSpec](https://rspec.info/).

To run the test suite:

```sh
bin/rspec
```

## License

Copyright 2022 Caterspot. See the [LICENSE](LICENSE).
