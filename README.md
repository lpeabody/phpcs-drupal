# PHPCS Drupal Coding Standards Docker Image

This image can be used to run Drupal coding standards sniffs against a codebase. It is ideally used with a phpcs.xml.dist file, but you may optionally pass arguments and options through the traditional `docker run ...` method.

## Using `phpcs.xml.dist`

Assuming you have a `phpcs.xml.dist` or `phpcs.xml` file in your project root, you can run the following from your project root to execute a scan:

```
docker run --rm -v $PWD:/app ghcr.io/lpeabody/phpcs-drupal:8.3.13
```

## Using `phpcs`

By default, when running the image it will just execute `phpcs`. You can optionally override this by passing your own `phpcs` command with additional arguments if needed:

```
docker run --rm -v $PWD:/app ghcr.io/lpeabody/phpcs-drupal:8.3.13 \
    phpcs \
        web/modules/custom \
        web/themes/custom
```

## Versioning

This image's tags are tightly coupled with the version of drupal/coder included in the image (e.g. if the version of )

| Image Version | Coder Version |
|----------|-------|
| ghcr.io/lpeabody/phpcs-drupal:main | 8.3.13 |
| ghcr.io/lpeabody/phpcs-drupal:8.3.13 | 8.3.13 |
