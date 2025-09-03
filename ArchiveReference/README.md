# LLMScaffolding

A comprehensive collection of Claude prompts, instructions, and configurations developed by @ReachableCEO for professional AI interactions.

## Overview

This repository contains a mature LLM instruction framework designed for consistent, high-quality AI interactions across different projects and contexts. The system emphasizes professional standards, accuracy, and structured documentation.

## Repository Structure

### Core Components

#### `/ReleasedPrompts/`
Public Claude prompts and instruction sets:
- **Global Prompts**: Universal guidelines for all AI interactions
- **Professional Profiles**: Context about team members and preferences
- **Workflow Documentation**: Complete processes for prompt engineering
- **Chat Type Instructions**: Domain-specific requirements

#### `/AICoFounder/`
Role-based AI assistant configurations:
- **Production environments** for TSYS and Family Office operations
- **Organizational hierarchy** with CTO, COO, and specialized roles
- **General instructions** for shell scripting and meta-instructions
- **Staff status** tracking and management

#### `/MCP/`
Model Context Protocol configurations:
- **Memory management** for persistent AI interactions
- **Service integrations** (Cloudron, Joplin, Redmine)
- **Basic memory** setup and configuration

#### `/.claudcode/`
Claude Code configuration directory:
- **Base instructions** for consistent behavior
- **Project templates** for common tasks
- **Workflow definitions** for complex processes
- **User profiles** and team standards

## Key Features

### Three-Tier Instruction Hierarchy
1. **Global Instructions**: Universal requirements for all AI interactions
2. **Chat Type Instructions**: Domain-specific requirements
3. **Specific Chat Instructions**: Individual conversation requirements

### Quality Standards
- **No hallucination policy**: Absolute requirement for factual accuracy
- **Citation requirements**: All factual claims must be sourced
- **Professional formatting**: Strict Markdown compliance
- **Version control**: Semantic versioning across all artifacts

### Professional Standards
- **Copyright**: ReachableCEO Enterprises 2025
- **License**: AGPL v3.0 for generated code
- **Error handling**: Robust error handling requirements
- **Documentation**: Comprehensive documentation standards

## Quick Start

### For New Users
1. Review the [base instructions](/.claudcode/base-instructions.md)
2. Customize the [project context](/.claudcode/project-context.md)
3. Use templates from `/.claudcode/templates/` for common tasks
4. Follow workflows in `/.claudcode/workflows/` for complex processes

### For Developers
1. Copy the `.claudcode` directory to your project root
2. Customize `settings.json` for your project needs
3. Update `profiles/` with your team information
4. Use templates for consistent code generation

### For Advanced Users
1. Study the comprehensive [Global Prompt](ReleasedPrompts/LLM%20Scaffolding/Released%20prompts/FINAL-GlobalPrompt%20v2.0.0%20(Part%201%20of%203).md)
2. Implement the [Complete Workflow](ReleasedPrompts/LLM%20Scaffolding/COO%20Work/Doc%20prompt%20eng/Complete%20Workflow.md)
3. Customize role-based configurations in `/AICoFounder/`

## Usage Examples

### Shell Script Generation
Use the [shell script template](/.claudcode/templates/shell-script.md) for:
- Automated ReachableCEO copyright headers
- AGPL v3.0 licensing
- Robust error handling
- Colored output with logging
- Comprehensive test suite generation

### Documentation Creation
Follow the [documentation template](/.claudcode/templates/documentation.md) for:
- Consistent markdown formatting
- Version-controlled documents
- Citation requirements
- Professional structure

### Git Workflow
Use the [git commit workflow](/.claudcode/workflows/git-commit.md) for:
- Conventional commit messages
- Proper attribution
- Quality checks before commits

## Architecture

### Design Principles
- **Modular**: Composable instruction components
- **Scalable**: Hierarchical structure supports growth
- **Maintainable**: Clear versioning and documentation
- **Professional**: High standards for all outputs

### Technical Implementation
- **Markdown-based**: All instructions in standard Markdown
- **Version controlled**: Semantic versioning throughout
- **Template-driven**: Reusable components for consistency
- **Configurable**: Adaptable to different projects and teams

## Contributing

### Standards
- All contributions must follow the established quality standards
- Include proper citations for any factual claims
- Follow the semantic versioning scheme
- Maintain dual-version artifacts (LLM and human optimized)

### Process
1. Review existing instructions for patterns
2. Follow the [Complete Workflow](ReleasedPrompts/LLM%20Scaffolding/COO%20Work/Doc%20prompt%20eng/Complete%20Workflow.md)
3. Test thoroughly before submission
4. Document all changes with proper version control

## License

This project is licensed under AGPL v3.0. See individual files for specific licensing information.

## Contact

- **Project Lead**: Charles N Wyble
- **Email**: Reachableceo@turnsys.com
- **Company**: ReachableCEO Enterprises

## Feedback

For feedback on this instruction collection, see [Claude-Feedback.md](Claude-Feedback.md) for detailed analysis and recommendations.

---

*Documentation maintained by ReachableCEO Enterprises - Professional AI interaction framework for consistent, high-quality results.*

