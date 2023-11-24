# HTTP Client for IntelliJ only

This folder contains the [HTTP Client](https://www.jetbrains.com/help/idea/http-client-in-product-code-editor.html) files that
are helpful when it comes to testing the endpoints while creating the OpenAPI specification for them.

> It is not required to create one file per API to integrate. And it's possible that all APIs won't be translated into
> HTTP Client files.

## How to use
Before using it, you must create a file named `http-client.private.env.json` in this directory. Here's an example
for this file:
```json
{
  "home": {
    "apiKey": "your-api-key",
    "baseUrl": "https://192.168.1.xx/clip/v2/resource",
    "sseUrl": "https://192.168.1.xx/eventstream/clip/v2"
  }
}
```

