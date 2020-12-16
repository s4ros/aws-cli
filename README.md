# aws-cli

aws-cli dockerized (now with `aws ssm` support!)

# Usage

Please, put the `bin/aws` file int your `${HOME}/bin` or anywhere within your `${PATH}` and do `chmod +x` on that file.

My `~/bin/aws` file looks like this

```bash
#!/bin/bash

docker run --rm -i \
-e AWS_PROFILE \
-e AWS_DEFAULT_REGION \
-e AWS_ACCESS_KEY_ID \
-e AWS_SECRET_ACCESS_KEY \
-e AWS_SESSION_TOKEN \
-v ${HOME}/.aws:/root/.aws \
-v $(pwd):/data \
-w /data \
s4ros/aws-cli "$@"
```
