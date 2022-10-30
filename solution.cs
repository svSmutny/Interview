string[] GetAllSuitableFilePaths(string searchRoot, string ext, string subStr = "")
{
    if (string.IsNullOrEmpty(searchRoot)) throw new ArgumentNullException("Search root cannot be empty.");
    if (string.IsNullOrEmpty(ext)) throw new ArgumentNullException("Extension cannot be empty.");

    ext = ext.ToLower();

    if (!ext.StartsWith("."))
    {
        ext = "." + ext;
    }

    var result = GetAllSuitableFilePathsInternal(searchRoot, ext, subStr);

    return result.ToArray();
}

List<string> GetAllSuitableFilePathsInternal(string searchRoot, string ext, string subStr)
{
    var allFiles = Directory.GetFiles(searchRoot)
        .Where(f => Path.GetExtension(f) == ext)
        .Where(f => string.IsNullOrEmpty(subStr) || Path.GetFileNameWithoutExtension(f).Contains(subStr))
        .ToList();

    var folders = Directory.GetDirectories(searchRoot).ToList();

    if (folders.Any())
    {
        foreach (var folder in folders)
        {
            allFiles.AddRange(GetAllSuitableFilePathsInternal(folder, ext, subStr));
        }
    }

    return allFiles;
}


var result = GetAllSuitableFilePaths(@"vyplnit", "vyplnit", "vyplnit");
foreach (var file in result)
{
    Console.WriteLine(file);
}

