FROM composer:2

ENV PATH="$COMPOSER_HOME/vendor/bin:${PATH}"

ARG CODER_VERSION=8.3.17

# Add dependencies.
RUN composer global config --no-plugins allow-plugins.dealerdirect/phpcodesniffer-composer-installer true && composer global require drupal/coder:${CODER_VERSION}

# Configure PHPCS.
RUN phpcs --config-set installed_paths $COMPOSER_HOME/vendor/drupal/coder/coder_sniffer

CMD ["phpcs"]
