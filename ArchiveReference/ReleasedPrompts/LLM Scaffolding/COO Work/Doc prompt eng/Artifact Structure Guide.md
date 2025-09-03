# Artifact Structure Guide
Version: 1.0 (2025-03-25)

## PURPOSE
This guide establishes standard formats for creating both human-optimized and Claude-optimized artifacts to ensure consistency and effectiveness in document engineering projects.

## COMMON ELEMENTS FOR ALL ARTIFACTS

### 1. METADATA HEADER
All artifacts must include:
```
# [Artifact Title]
Version: [Version Number] ([Date in YYYY-MM-DD format])
```

### 2. VERSION CONTROL
Version numbering follows semantic versioning:
- Major version (1.0): Significant structural changes
- Minor version (0.1): Content updates that maintain structure
- Patch version (0.0.1): Small corrections or clarifications

### 3. CROSS-REFERENCES
End each artifact with related documents:
```
---
*Cross-reference with: [Related Artifact 1], [Related Artifact 2]*
```

## HUMAN-OPTIMIZED ARTIFACTS

These artifacts are designed for human readability and use.

### Structure Guidelines

1. **Hierarchical Organization**
   - Use consistent header levels (H1 for title, H2 for major sections, etc.)
   - Limited to 3 levels of nesting for readability
   - Each level should have 2-7 subsections maximum

2. **Visual Elements**
   - Use tables for comparing multiple items
   - Use bulleted lists for unordered collections
   - Use numbered lists for sequential instructions
   - Use code blocks for templates, examples, or fill-in sections

3. **Navigation Aids**
   - Include a brief purpose statement at the top
   - Add a table of contents for documents over 2 pages
   - Use horizontal rules to separate major sections

4. **Actionable Components**
   - Include checkboxes for completion tracking
   - Clearly mark required vs. optional elements
   - Provide example text in italics or gray formatting

### Example Format
```markdown
# Artifact Title
Version: 1.0 (2025-03-25)

## PURPOSE
Brief description of the artifact's intended use and value.

## SECTION ONE
Main content organized with:
- Bullet points for collections
- Tables for comparisons
- Code blocks for templates

### Subsection
More detailed content with specific guidelines.

## SECTION TWO
Additional structured content.

---
*Cross-reference with: Related Artifact 1, Related Artifact 2*
```

## CLAUDE-OPTIMIZED ARTIFACTS

These artifacts are designed to be optimally processed by Claude.

### Structure Guidelines

1. **Clear Demarcation**
   - Use XML-style tags to clearly indicate sections
   - Include role specifications when applicable
   - Separate instructions from examples with clear markers

2. **Processing Instructions**
   - Place critical instructions at the beginning
   - Use numbered lists for sequential processing steps
   - Mark optional paths with explicit conditionals
   - Include stop conditions for iterative processes

3. **Context Management**
   - Group related information within single sections
   - Label sections with descriptive IDs for reference
   - Include summary sections for complex content
   - Maintain consistent terminology throughout

4. **Output Formatting**
   - Specify desired output structure explicitly
   - Include sample outputs with annotations
   - Define error handling and fallback options
   - Provide quantitative requirements (length, detail level)

### Example Format
```
<ARTIFACT id="example_artifact" version="1.0" date="2025-03-25">

<PURPOSE>
Precisely defined purpose statement with success criteria.
</PURPOSE>

<INSTRUCTIONS>
1. First processing step with specific guidance
2. Second processing step with decision points
3. Third processing step with output requirements
</INSTRUCTIONS>

<CONTEXT id="domain_knowledge">
Essential information Claude needs to understand the domain.
</CONTEXT>

<EXAMPLES>
<EXAMPLE id="example1">
Input: Sample input
Expected output: Sample output
Explanation: Why this output meets requirements
</EXAMPLE>
</EXAMPLES>

<OUTPUT_REQUIREMENTS>
- Format specification
- Content requirements
- Quality indicators
- Error handling procedures
</OUTPUT_REQUIREMENTS>

</ARTIFACT>
```

## HYBRID ARTIFACT APPROACH

For optimal results in document engineering projects:

1. **Create human-optimized artifacts first** for team review and approval
2. **Derive Claude-optimized versions** for implementation
3. **Maintain both versions** with synchronized updates
4. **Test Claude-optimized artifacts** with various inputs
5. **Document transformation patterns** between human and Claude versions

## RECOMMENDED ARTIFACT TYPES

1. **Templates**: Structured outlines for creating consistent documents
2. **Checklists**: Sequential verification steps to ensure quality
3. **Protocols**: Standardized procedures for handling specific scenarios
4. **Repositories**: Collections of reusable components or examples
5. **Indices**: Catalogs of available artifacts with access information

---
*Cross-reference with: Terminology Bank, Validation Checklist, Comprehensive Templates Index*