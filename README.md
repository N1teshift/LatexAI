# LaTeX Project Structure

This project supports multiple document types with a modular configuration system and project-based organization.

## Project Structure

```
LaTeX/
├── config/                    # Global settings for all document types
│   ├── colors.tex           # Color definitions
│   ├── commands.tex         # Custom commands and theorems
│   ├── document-types.tex   # Document type configurations
│   ├── logos.tex            # Logo settings
│   ├── metadata.tex         # Document metadata
│   ├── theme.tex            # Theme settings
│   └── titlepage.tex        # Title page customization
├── content/                  # Shared content files
│   └── images/              # All images (shared library)
├── projects/                 # Individual project folders
│   ├── pre_ivadas/          # Presentation project
│   │   ├── main.tex         # 4-line main file
│   │   ├── settings.tex     # Project-specific settings
│   │   └── content.tex      # Project content
│   └── doc_irrational/      # Math theory project
│       ├── main.tex         # 4-line main file
│       ├── settings.tex     # Project-specific settings
│       └── content.tex      # Project content
├── templates/                # Starting templates for new projects
│   ├── presentation.tex     # Beamer presentation template
│   ├── document.tex         # Regular document template
│   ├── settings-presentation.tex  # Presentation settings template
│   ├── settings-document.tex      # Document settings template
│   └── new-document.tex     # Generic document template
├── build/                    # Build output directory
├── build-pre-ivadas.bat     # Build presentation project
├── build-doc-irrational.bat # Build math theory project
├── build-all.bat            # Universal build script
└── README.md                # This file
```

## Projects

### 1. Presentation (pre_ivadas)
- **Location**: `projects/pre_ivadas/`
- **Build**: `build-pre-ivadas.bat`
- **Output**: `pre_ivadas.pdf`
- **Type**: Beamer presentation

### 2. Math Theory (doc_irrational)
- **Location**: `projects/doc_irrational/`
- **Build**: `build-doc-irrational.bat`
- **Output**: `doc_irrational.pdf`
- **Type**: Report with math theory content

## Building Documents

### Quick Build
- **Presentation**: Run `build-pre-ivadas.bat`
- **Math Theory**: Run `build-doc-irrational.bat`
- **All Documents**: Run `build-all.bat`

### Universal Builder
Run `build-all.bat` and choose:
1. Presentation (pre_ivadas)
2. Math Theory (doc_irrational)
3. Build all documents

## Creating New Projects

1. **Create a new project folder** in `projects/`
2. **Copy template files**:
   - Copy `templates/new-document.tex` to `projects/your-project/main.tex`
   - Copy appropriate settings template to `projects/your-project/settings.tex`
   - Create `projects/your-project/content.tex`
3. **Create a build script** or use existing ones as templates

## Project Structure

Each project follows this structure:
```
projects/your-project/
├── main.tex      # 4-line main file: \input{settings} \begin{document} \input{content} \end{document}
├── settings.tex  # Project-specific settings and configuration
└── content.tex   # Main content of the document
```

## Configuration Files

- **`config/colors.tex`**: Define color palette
- **`config/commands.tex`**: Custom LaTeX commands and theorem environments
- **`config/document-types.tex`**: Document type configurations
- **`config/logos.tex`**: Logo paths and display settings
- **`config/metadata.tex`**: Document title, author, date
- **`config/theme.tex`**: Visual theme settings
- **`config/titlepage.tex`**: Title page customization

## Shared Resources

- **`content/images/`**: All images and graphics (shared across projects)
- **`config/`**: Global configuration files (shared across projects)
- **`templates/`**: Starting templates for new projects

## Tips

1. **Modular Design**: Each project is self-contained but shares common resources
2. **Shared Resources**: Images and configurations are shared across all projects
3. **Easy Extension**: Add new projects by following the template pattern
4. **Clean Builds**: All build artifacts go to the `build/` directory
5. **Simple Main Files**: Always just 4 lines for easy maintenance

## Requirements

- TeX Live 2025 (or compatible LaTeX distribution)
- Windows PowerShell (for build scripts)
- All required LaTeX packages (automatically included in document type configurations)
