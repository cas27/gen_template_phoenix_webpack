# Phoenix Webpack

- Phoenix 1.3
- Webpack 2

## Installation

```
$ mix archive.install hex mix_generator
$ mix archive.install hex mix_templates
$ mix template.install github cas27/gen_template_phoenix_webpack
```

## Use

```
$ mix gen gen_template_phoenix_webpack <your_project_name>
$ cd <your_project_name>
$ mix deps.get
$ mix ecto.create
$ cd assets && yarn install
```

## License

The MIT License (MIT)
