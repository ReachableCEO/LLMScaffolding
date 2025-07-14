# Terminology Bank
Version: 1.0 (2025-03-25)

## PURPOSE
This terminology bank establishes standardized definitions for terms used in document prompt engineering to ensure consistency across artifacts and conversations.

## USAGE INSTRUCTIONS
1. Refer to this bank when introducing new terms in artifacts
2. Update with new terminology as it emerges in the project
3. Resolve any conflicting definitions before proceeding
4. Include relevant domain-specific terms for each project
5. Reference in the continuity document to maintain consistency across sessions

## CORE TERMINOLOGY

### Document Engineering Concepts

| Term | Definition | Usage Notes |
|------|------------|-------------|
| Document Prompt Engineering | The systematic process of developing, testing, and refining prompts specifically for document creation or analysis. | Preferred over "prompt design" or "prompt crafting" |
| Initial Engineering Session | The first phase of prompt development focused on understanding requirements and drafting initial approaches. | Always followed by at least one review session |
| Prompt Review Session | A structured evaluation of prompt performance with specific optimization objectives. | May be iterative depending on complexity |
| Artifact | A self-contained document that serves a specific function in the prompt engineering process. | All artifacts should follow the structure guide |
| Two-Step Process | The complete document prompt engineering workflow consisting of initial engineering and subsequent review. | Standard approach for all document types |
| Continuity Management | Techniques to maintain project context across multiple sessions or Claude instances. | Essential for complex projects |

### Prompt Structure Elements

| Term | Definition | Usage Notes |
|------|------------|-------------|
| Context Block | Information provided to Claude about the document domain, purpose, and background. | Should be comprehensive but concise |
| Instruction Set | Specific directives for Claude regarding document creation or analysis. | Organized hierarchically by priority |
| Format Specification | Requirements for the structure, style, and organization of the output. | Includes both mandatory and optional elements |
| Examples Block | Sample inputs and outputs that illustrate desired performance. | Should cover standard cases and edge cases |
| Guardrails | Constraints and limitations that prevent undesired outputs. | Both positive and negative constraints |
| Extended Thinking Trigger | Phrasings designed to activate Claude's extended reasoning capabilities. | Used for complex analytical requirements |

### Document Components

| Term | Definition | Usage Notes |
|------|------------|-------------|
| Structural Element | Any component that defines the organization of a document. | E.g., sections, subsections, headers |
| Content Element | Text, data, or media that provides information within the document. | Distinguished from structural elements |
| Conditional Element | Document components that appear only when specific criteria are met. | Important for adaptable documents |
| Metadata | Information about the document itself rather than its subject matter. | E.g., version, author, date, status |
| Compliance Element | Components required to meet regulatory or policy requirements. | Should be clearly identified as mandatory |
| User Input Field | Designated area for information to be provided by end-users. | Requires clear instructions and validation |

### Process Terminology

| Term | Definition | Usage Notes |
|------|------------|-------------|
| Exploratory Interview | A structured conversation with Claude to gather insights for prompt development. | Follows the interview guide artifact |
| Validation Testing | Systematic evaluation of prompt performance against predefined criteria. | Uses the validation checklist |
| A/B Testing | Comparison of alternative prompt versions to determine optimal approach. | Requires consistent test scenarios |
| Prompt Iteration | The process of refining a prompt based on performance analysis. | Should be tracked in the continuity document |
| Chat Transition | The process of moving a conversation to a new chat when approaching length limitations. | Follows the transition protocol |
| Multi-Session Handoff | The process of resuming work across different conversations. | Uses the handoff template |

## PROJECT-SPECIFIC TERMINOLOGY

Add domain-specific terminology relevant to the current project.

### [Domain Name]

| Term | Definition | Usage Notes |
|------|------------|-------------|
| [Term 1] | [Definition] | [Usage notes] |
| [Term 2] | [Definition] | [Usage notes] |
| [Add more as needed] |

### [Additional Domains as Needed]

| Term | Definition | Usage Notes |
|------|------------|-------------|
| [Term 1] | [Definition] | [Usage notes] |
| [Term 2] | [Definition] | [Usage notes] |
| [Add more as needed] |

## TERMINOLOGY MAINTENANCE

### Addition Process
To add new terminology:
1. Confirm term is not already defined (with potential variations)
2. Draft clear, concise definition
3. Provide usage notes with examples
4. Update the version number of this document
5. Reference the update in the continuity document

### Revision Process
To revise existing terminology:
1. Document both old and new definitions
2. Provide rationale for the change
3. Update all artifacts using the term
4. Note the revision in the continuity document
5. Update the version number of this document

### Retirement Process
To retire obsolete terminology:
1. Mark as deprecated with date
2. Provide recommended alternative term(s)
3. Maintain in the bank with deprecated status for reference
4. Update all artifacts using the term
5. Update the version number of this document

---
*Cross-reference with: Artifact Structure Guide, Continuity Document, Comprehensive Templates Index*