# OpenHue API
[![Build](https://github.com/openhue/openhue-api/actions/workflows/build.yml/badge.svg)](https://github.com/openhue/openhue-api/actions/workflows/build.yml)
[![GitHub Issues](https://img.shields.io/github/issues/openhue/openhue-api)](https://github.com/openhue/openhue-api/issues)
[![GitHub Repo stars](https://img.shields.io/github/stars/openhue/openhue-api)](https://github.com/openhue/openhue-api/stargazers)
[![GitHub License file](https://img.shields.io/github/license/openhue/openhue-api)](https://github.com/openhue/openhue-api/blob/main/LICENSE)
[![GitHub Releases](https://img.shields.io/github/v/release/openhue/openhue-api?logo=openapiinitiative&labelColor=white&color=grey)](https://github.com/openhue/openhue-api/releases/latest)

[OpenHue](https://www.openhue.io) is an open-source project that provides a comprehensive OpenAPI specification for the Philips Hue REST API, known as CLIP (_Connected Lighting Interface Protocol_) API.
This specification serves as a bridge between developers and Philips Hue smart lighting systems, enabling seamless integration
and control of Hue lighting within various applications and platforms.

![OpenHue Logo](docs/images/header.png)

> 🚀 The OpenHue project has just taken off, and you can follow the roadmap
> progression from our [Discussions](https://github.com/openhue/openhue-api/discussions/11) space in GitHub!

## Introduction
The Philips Hue lighting system is renowned for its versatility and convenience in home and commercial lighting solutions.
However, developers often face challenges when attempting to interact with Hue devices programmatically due to the complexity
of the underlying REST API. OpenHue aims to simplify this process by offering a well-structured and fully-documented OpenAPI specification.

With OpenHue, developers can:
- **Effortlessly Integrate Philips Hue**: OpenHue provides a clear and standardized way to connect your applications and services with Philips Hue smart lighting, allowing for easy automation, customization, and remote control of lighting scenes and individual bulbs.
- **Enhance User Experiences**: By integrating OpenHue into your projects, you can create innovative lighting experiences that respond to user interactions, environmental conditions, or specific events, enhancing user comfort and ambiance.
- **Save Development Time**: Avoid the complexities of reverse-engineering the Philips Hue API. OpenHue eliminates the need for developers to decipher the API's intricacies and reduces development time, enabling faster implementation of Hue-related features.

## Usage

[![Introduction video on YouTube](docs/images/youtube.png)](https://youtu.be/wMsKOpvBEp0)

To use the OpenHue OpenAPI specification in your projects, you can obtain it from our GitHub releases. Here's how:

### Obtain the OpenAPI Specification

The OpenHue OpenAPI Specification is hosted on [Redocly](https://redocly.com),
you can directly obtain it via [this link](https://api.redocly.com/registry/bundle/openhue/openhue/v2/openapi.yaml).

Click [here](https://editor.swagger.io?url=https://api.redocly.com/registry/bundle/openhue/openhue/v2/openapi.yaml)
to view the specification via the Swagger Editor.

#### From GitHub
1. Visit our [GitHub releases page](https://github.com/openhue/openhue-api/releases).
2. Select the desired release version that suits your needs. Each release contains the complete OpenAPI specification for OpenHue.
3. Download the `openhue.yaml` file from the selected release. This YAML file represents the OpenAPI specification, which defines the structure and behavior of the OpenHue API.

### Integration with Postman

You can easily import the OpenAPI specification into Postman, a popular API development and testing tool. Here's how:

1. Open Postman and click on the "Import" button in the top-left corner of the application.
2. Select "API schema" as the import type.
3. Upload the `openhue.yaml` file that you downloaded from the OpenHue release.
4. Postman will automatically generate a collection based on the OpenAPI specification, allowing you to make requests to the OpenHue API with ease.

### Generate Client Code

The OpenAPI specification `openhue.yaml` can be used to generate client code in virtually any programming language.
There are various tools and libraries available that can take the specification,
and generate client code tailored to your language of choice.

Here's a basic example using the [`openapi-generator-cli`](https://github.com/OpenAPITools/openapi-generator-cli) to generate a Python client:

```shell
npx @openapitools/openapi-generator-cli generate -g python -i https://api.redocly.com/registry/bundle/openhue/openhue/v2/openapi.yaml -o my-openhue-project
```

## Getting Started

To begin developing with OpenHue's OpenAPI specification, follow these steps:

### Prerequisites
Before you start, ensure that you have the following prerequisites installed:

- **Node.js and NPM**: OpenHue relies on Node.js and NPM for certain tasks. Make sure you have them installed. You can download them from the official website: [Node.js](https://nodejs.org/).

### Fork the Repository
Before contributing to OpenHue, it's a good practice to [fork](https://github.com/openhue/open-hue/fork) the repository to your own GitHub account.
This will create a copy of the project that you can work on independently.

### Setup

1. Clone the OpenHue repository to your local machine:
```shell
git clone https://github.com/your-username/openhue-api.git
cd openhue-api
```
2Run the following command to set up the development environment. This will install the Redocly CLI, which is used for documentation management:
```shell
make setup
```

### Validate the Specification
Before proceeding, it's essential to ensure that the OpenAPI specification is valid and error-free. You can do this by running the following command:
```shell
make verify
```
This command will validate the specification file and provide feedback if there are any issues.

### Build the Specification
To bundle the OpenAPI specification into a single file, run the following command:
```shell
make build
```
The bundled specification file can be found at `build/openhue.yaml`. This consolidated file makes it easier to work with the API definition and can be used for various purposes, including generating client libraries and documentation.

### Build the Documentation
To build the static HTML documentation, run the following command:
```shell
make docs
```
The bundled documentation can be found at `build/index.html`.
The `build/` folder will also contain all the files required to display the HTML page, including images, fonts, etc.

With these initial setup steps completed, you're ready to start developing and utilizing the OpenHue OpenAPI specification for your projects.

## License

OpenHue is distributed under the [Apache License 2.0](http://www.apache.org/licenses/),
making it open and free for anyone to use and contribute to.
See the [license](./LICENSE) file for detailed terms.

## Acknowledgments

We want to extend our heartfelt gratitude to [GitBook](https://www.gitbook.com/) for their generous support of the OpenHue Project. GitBook's commitment to helping open-source initiatives like ours thrive is truly appreciated. They have graciously provided the [OSS plan](https://docs.gitbook.com/account-management/plans/apply-for-the-non-profit-open-source-plan) for OpenHue, which will be instrumental in our documentation efforts, making it easier for developers and users to get started with OpenHue.
