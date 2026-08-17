Write-Host ""
Write-Host "### CLEANING PHASE STARTED ###"
Write-Host ""

$extensions_to_uninstall = @(
    "ms-ceintl.vscode-language-pack-de"     
    "ms-vscode.powershell",                 
    "ms-python.vscode-pylance",             
    "ms-python.python",                    
    "ms-toolsai.jupyter",                   
    "ms-toolsai.vscode-jupyter-cell-tags",
    "ms-toolsai.jupyter-keymap",
    "ms-toolsai.jupyter-renderers",
    "ms-toolsai.vscode-jupyter-slideshow",
    "shd101wyy.markdown-preview-enhanced",
    "moozzyk.arduino",                      
    "ms-vscode.cpptools",                   
    "ms-dotnettools.csharp",               
    "ms-vscode.powershell",                 
    "dotjoshjohnson.xml",  
    "redhat.vscode-xml",                 
    "ecmel.vscode-html-css",                
    "bmewburn.vscode-intelephense-client",  
    "esbenp.prettier-vscode",               
    "pdconsec.vscode-print",                
    "oracle.mysql-shell-for-vs-code",	    
    "vscode-icons-team.vscode-icons",
    "dbankier.vscode-instant-markdown",
    "ms-dotnettools.vscode-dotnet-runtime",
    "mechatroner.rainbow-csv",
    "mermaidchart.vscode-mermaid-chart",
    "vstirbu.vscode-mermaid-preview",
    "mathematic.vscode-latex"
) 

$extensions_to_uninstall | ForEach-Object {
    try {
        Invoke-Expression "code --uninstall-extension $_ --force"
        Write-Host "-----"
    } catch {
        $_
        Exit(1)
    }
}

Write-Host ""
Write-Host "### CLEARED CURRENT INSTALLATIONS ###"
Write-Host ""
Write-Host "### INSTALLING PHASE STARTED ###"
Write-Host ""

$extensions_to_install = @(
    # Jupyter
    "ms-toolsai.jupyter@2025.7.0",
    "ms-toolsai.vscode-jupyter-cell-tags@0.1.9",
    "ms-toolsai.jupyter-keymap@1.1.2",
    "ms-toolsai.jupyter-renderers@1.3.2025062701",
    "ms-toolsai.vscode-jupyter-slideshow@0.1.6",

    # Python
    "ms-python.vscode-pylance@2025.10.2",
    "ms-python.python@2026.7.2026080801",
    "ms-python.debugpy@2026.7.12111009",
    "ms-python.vscode-python-envs@1.2.0",

    # JSON / Mermaid / Formatting
    "aykutsarac.jsoncrack-vscode@3.0.0",
    "esbenp.prettier-vscode@12.4.0",

    # Arduino / C++ / C#
    "moozzyk.arduino@0.0.4",
    "ms-vscode.cpptools@1.33.7",
    "ms-dotnettools.csharp@2.90.60",

    # PowerShell / XML / HTML
    "ms-vscode.powershell@2025.4.0",
    "redhat.vscode-xml@0.29.2026080108",
    "ecmel.vscode-html-css@2.0.14",

    # Utilities
    "pdconsec.vscode-print@1.6.0",
    "oracle.mysql-shell-for-vs-code@2026.5.0",
    "mathematic.vscode-latex@1.3.0"
)

$extensions_to_install | ForEach-Object {
    try {
        Invoke-Expression "code --install-extension $_ --force"
        Write-Host "-----"
    } catch {
        $_
        Exit(1)
    }
}

Write-Host ""
Write-Host "### INSTALLED ALL NEEDED PLUGINS WITH THE RIGHT VERSIONS ###"
Write-Host ""
Write-Host "DONE! :-) Let's get started!"
Write-Host ""
Invoke-Expression "code . --locale=de"

Exit(0)