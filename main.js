import { dotnet } from './dotnet.js'

const { getAssemblyExports, getConfig } = await dotnet
    .withDiagnosticTracing(false)
    .create();

const config = getConfig();
const exports = await getAssemblyExports(config.mainAssemblyName);

const info = exports.DemoClass.DemoMethod();

document.getElementById("out").innerHTML = `Info from dotnet: ${info}`;