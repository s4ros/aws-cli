# aws-cli

aws-cli dockerized

# Usage

Please, put the `bin/aws` file int your `${HOME}/bin` or anywhere within your `${PATH}` and do `chmod +x` on that file.

# Env vars

This container supports few env vars

```
AWS_PROFILE
AWS_DEFAULT_REGION
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```
To use any of those, please just for example run `export AWS_PROFILE=your_aws_profile` in your shell before using the container.