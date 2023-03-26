# dotnet and WASM

You need dotnet >=7.0 and nodejs>=18.15.0.

- <https://dotnet.microsoft.com/en-us/download>
- <https://nodejs.org/en>

Install the wasm-tools.

```bash
sudo dotnet workload install wasm-tools
```

Publish:

```bash
dotnet publish --configuration Release
```

Run the web server:

```bash
npx serve bin/Release/net7.0/browser-wasm/AppBundle
```

## Additional information

- <https://learn.microsoft.com/en-us/aspnet/core/client-side/dotnet-interop?view=aspnetcore-7.0>
