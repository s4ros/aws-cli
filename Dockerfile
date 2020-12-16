FROM amazon/aws-cli

# Install Sessions Manager Plugin
# https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html#install-plugin-linux
RUN yum update -y \
    && curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm" -o "session-manager-plugin.rpm" \
    && yum install -y session-manager-plugin.rpm \
    && rm session-manager-plugin.rpm \
    && session-manager-plugin \
    && yum clean all \
    && rm -rf /var/cache/yum