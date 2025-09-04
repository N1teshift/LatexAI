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
├── template_document/        # Template for new document projects
│   ├── main.tex             # Document main template
│   ├── settings.tex         # Document settings template
│   └── content.tex          # Document content template
├── template_presentation/    # Template for new presentation projects
│   ├── main.tex             # Presentation main template
│   ├── settings.tex         # Presentation settings template
│   └── content.tex          # Presentation content template
├── build/                    # Build output directory
└── README.md                # This file
```



## Creating New Projects

### For New Documents (Math Theory, Worksheets, etc.)
1. **Create a new project folder** in `projects/` (e.g., `projects/my_new_document/`)
2. **Copy template files**:
   ```bash
   cp -r template_document/* projects/my_new_document/
   ```
3. **Customize the files**:
   - Edit `settings.tex` if you need different packages or settings
   - Replace `content.tex` with your actual content

### For New Presentations
1. **Create a new project folder** in `projects/` (e.g., `projects/my_new_presentation/`)
2. **Copy template files**:
   ```bash
   cp -r template_presentation/* projects/my_new_presentation/
   ```
3. **Customize the files**:
   - Edit `main.tex` to change title, author, date
   - Edit `settings.tex` if you need different packages or settings
   - Replace `content.tex` with your actual presentation slides

## Project Structure

Each project follows this structure:
```
projects/your-project/
├── main.tex      # 4-line main file: \input{settings} \begin{document} \input{content} \end{document}
├── settings.tex  # Project-specific settings and configuration
└── content.tex   # Main content of the document
```

## Template Features

### Document Template (`template_document/`)
- **Document Class**: `report` with A4 paper
- **Features**: 
  - Math theorem environments (`teorema`, `uzd`, `ap`, etc.)
  - Multi-column layout with smart column rules
  - Smart text boxes that break lines without breaking math
  - Lithuanian language support
  - Custom chapter styling

### Presentation Template (`template_presentation/`)
- **Document Class**: `beamer` with 16:9 aspect ratio
- **Features**:
  - KMM branding and color scheme
  - Metropolis theme
  - Custom title slide with logo
  - Corner logo on frame titles
  - Persistent footer with author and page numbers
  - Theorem boxes styled to brand colors

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
- **`template_document/`**: Template for new document projects
- **`template_presentation/`**: Template for new presentation projects

## Requirements

- TeX Live 2025 (or compatible LaTeX distribution)
- VS Code with LaTeX Workshop extension
- All required LaTeX packages (automatically included in document type configurations)
