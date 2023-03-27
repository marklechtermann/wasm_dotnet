# dotnet and WASM

[![CI](https://github.com/marklechtermann/wasm_dotnet/actions/workflows/ci.yaml/badge.svg)](https://github.com/marklechtermann/wasm_dotnet/actions/workflows/ci.yaml)

This is a demo application shows how .NET and WebAssembly (WASM) work together.  
The demo application is a simple class written in C#. You can find the code sample in the `Program.cs`.

WebAssembly (abbreviated Wasm) is a binary instruction format for a stack-based virtual machine.  
It is designed as a portable compilation target for programming languages,  
enabling deployment on the web for client and server applications.

For this demo you need `dotnet>=7.0` and `nodejs>=18.15.0`.

- <https://dotnet.microsoft.com/en-us/download>
- <https://nodejs.org/en>

First, install the wasm-tools.

```bash
sudo dotnet workload install wasm-tools
```

Publish:

```bash
dotnet publish --configuration Release
```

Run the webserver:

```bash
npx serve@latest bin/Release/net7.0/browser-wasm/AppBundle
```

Open your webbrowser and navigate to <http://localhost:3000>.

## Docker

You can also run the application in a docker container.

```bash
docker run -it -p 80:80 ghcr.io/marklechtermann/wasm_dotnet:latest
```

Or if you want to build the docker image yourself:

```bash
docker build -t ghcr.io/marklechtermann/wasm_dotnet:latest .
docker run -it -p 80:80 ghcr.io/marklechtermann/wasm_dotnet:latest
```

## Additional information

- <https://learn.microsoft.com/en-us/aspnet/core/client-side/dotnet-interop?view=aspnetcore-7.0>
