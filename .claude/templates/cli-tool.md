# CLI Tool Template

Template for autonomous development of command-line interface tools and utilities.

## Technology Detection Patterns

### Node.js CLI
- **Files**: `package.json`, `bin/` directory, `#!/usr/bin/env node`
- **Dependencies**: `commander`, `yargs`, `inquirer`, `chalk`, `ora`
- **Build**: `pkg`, `nexe` for binaries

### Python CLI
- **Files**: `setup.py`, `pyproject.toml`, `cli.py`, `__main__.py`
- **Dependencies**: `click`, `argparse`, `typer`, `rich`, `colorama`
- **Build**: `setuptools`, `poetry`, `pyinstaller`

### Go CLI
- **Files**: `main.go`, `go.mod`, `cmd/` directory
- **Dependencies**: `cobra`, `viper`, `pflag`
- **Build**: `go build`, cross-compilation support

### Rust CLI
- **Files**: `Cargo.toml`, `src/main.rs`, `src/cli/`
- **Dependencies**: `clap`, `serde`, `tokio`, `anyhow`
- **Build**: `cargo build --release`

## Standard Features Template

### Core CLI Features
- **Command Structure**: Main command with subcommands
- **Argument Parsing**: Positional arguments, flags, options
- **Configuration**: Config files, environment variables
- **Help System**: Auto-generated help text, examples
- **Error Handling**: User-friendly error messages
- **Output Formatting**: Structured output (JSON, table, etc.)

### User Experience Features
- **Interactive Mode**: Prompts, confirmations, selections
- **Progress Indicators**: Loading spinners, progress bars
- **Colors and Styling**: Colorized output, formatting
- **Logging**: Debug output, verbose modes
- **Auto-completion**: Shell completion scripts

### Quality Requirements
- **Testing**: Unit tests, integration tests, CLI testing
- **Documentation**: Man pages, README, usage examples
- **Cross-platform**: Windows, macOS, Linux compatibility
- **Performance**: Fast startup, efficient operations
- **Security**: Input validation, secure file handling

## Implementation Phases

### Phase 1: Foundation
```
Project Setup
├── Initialize project structure
├── Configure build system and dependencies
├── Set up basic command structure
├── Implement argument parsing
└── Configure testing framework

Basic Commands
├── Main command with help text
├── Version command
├── Basic subcommands structure
├── Configuration file handling
└── Environment variable support
```

### Phase 2: Core Functionality
```
Command Implementation
├── Implement primary business logic
├── Add input validation
├── Error handling and user feedback
├── File/data processing operations
└── Output formatting options

User Experience
├── Interactive prompts and confirmations
├── Progress indicators for long operations
├── Colorized output and styling
├── Verbose/debug output modes
└── Configuration management
```

### Phase 3: Advanced Features
```
Enhanced CLI Features
├── Auto-completion scripts
├── Plugin/extension system
├── Configuration validation
├── Multiple output formats
└── Advanced error recovery

Integration Features
├── API integration
├── File format support
├── External tool integration
├── Batch processing
└── Pipeline support
```

### Phase 4: Distribution
```
Packaging and Distribution
├── Binary compilation
├── Package manager integration
├── Installation scripts
├── Cross-platform builds
└── Release automation

Documentation
├── Man pages
├── Usage documentation
├── API documentation (if library)
├── Tutorial and examples
└── Troubleshooting guide
```

## Agent Instructions

### For @agent-architect
- Design command structure with clear hierarchy
- Plan configuration management strategy
- Consider cross-platform compatibility requirements
- Design plugin architecture if extensibility needed
- Plan comprehensive testing approach

### For @agent-developer
- Implement robust argument parsing with validation
- Follow CLI best practices (exit codes, stderr/stdout)
- Implement proper error handling with helpful messages
- Use appropriate libraries for UI elements (colors, progress)
- Write comprehensive tests including CLI integration tests

### For @agent-debugger
- Test CLI with various input combinations
- Verify cross-platform behavior
- Test error scenarios and edge cases
- Check performance with large inputs
- Validate configuration handling

### For @agent-quality-reviewer
- Review command design for usability
- Check error messages for clarity
- Verify security of file operations
- Review performance characteristics
- Validate test coverage

### For @agent-technical-writer
- Create comprehensive usage documentation
- Write man pages and help text
- Provide installation instructions
- Create tutorial and examples
- Document configuration options

## Command Structure Examples

### Node.js with Commander
```javascript
#!/usr/bin/env node
const { Command } = require('commander');
const program = new Command();

program
  .name('mytool')
  .description('CLI tool description')
  .version('1.0.0');

program
  .command('create <name>')
  .description('Create a new item')
  .option('-t, --type <type>', 'item type', 'default')
  .action((name, options) => {
    console.log(`Creating ${name} of type ${options.type}`);
  });

program.parse();
```

### Python with Click
```python
#!/usr/bin/env python3
import click

@click.group()
@click.version_option()
def cli():
    """CLI tool description"""
    pass

@cli.command()
@click.argument('name')
@click.option('--type', '-t', default='default', help='Item type')
def create(name, type):
    """Create a new item"""
    click.echo(f'Creating {name} of type {type}')

if __name__ == '__main__':
    cli()
```

### Go with Cobra
```go
package main

import (
    "fmt"
    "github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
    Use:   "mytool",
    Short: "CLI tool description",
}

var createCmd = &cobra.Command{
    Use:   "create [name]",
    Short: "Create a new item",
    Args:  cobra.ExactArgs(1),
    Run: func(cmd *cobra.Command, args []string) {
        itemType, _ := cmd.Flags().GetString("type")
        fmt.Printf("Creating %s of type %s\n", args[0], itemType)
    },
}

func init() {
    createCmd.Flags().StringP("type", "t", "default", "Item type")
    rootCmd.AddCommand(createCmd)
}

func main() {
    rootCmd.Execute()
}
```

## Testing Strategy

### Unit Tests
- Command parsing logic
- Business logic functions
- Configuration handling
- Error handling functions

### Integration Tests
- Full command execution
- File system operations
- Configuration file processing
- Error scenario testing

### CLI Testing
- Command-line argument validation
- Output format verification
- Exit code validation
- Interactive prompt testing

## Build and Distribution

### Package Configuration
```json
{
  "name": "my-cli-tool",
  "version": "1.0.0",
  "bin": {
    "mytool": "./bin/cli.js"
  },
  "files": ["bin/", "lib/"],
  "preferGlobal": true
}
```

### Cross-platform Builds
```bash
# Node.js
npm run build:linux
npm run build:macos
npm run build:windows

# Go
GOOS=linux go build -o mytool-linux
GOOS=darwin go build -o mytool-macos
GOOS=windows go build -o mytool-windows.exe

# Rust
cargo build --target x86_64-unknown-linux-gnu
cargo build --target x86_64-apple-darwin
cargo build --target x86_64-pc-windows-gnu
```

This template provides comprehensive guidance for autonomous development of professional CLI tools with proper user experience, testing, and distribution.