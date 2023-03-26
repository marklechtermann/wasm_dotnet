using System.Runtime.InteropServices.JavaScript;

return;

public partial class DemoClass
{
    [JSExport]
    internal static string DemoMethod()
    {
        return Environment.Version.ToString();
    }
}