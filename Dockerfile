FROM composer:2

ENV PATH="$COMPOSER_HOME/vendor/bin:${PATH}"

# Add dependencies.
RUN composer global require drupal/coder:8.3.13

# Configure PHPCS.
RUN phpcs --config-set installed_paths $COMPOSER_HOME/vendor/drupal/coder/coder_sniffer

CMD ["phpcs"]
