# Exploratory Interview Guide
Version: 1.0 (2025-03-25)

## PURPOSE
This guide provides a structured approach to conducting exploratory interviews with Claude during document prompt engineering, emphasizing a one-question-at-a-time methodology to maximize the effectiveness of extended thinking mode.

## CORE PRINCIPLES

1. **Hierarchical Questioning**: Move from general to specific
2. **Active Listening**: Adapt questions based on previous responses
3. **Single-Focus Queries**: One concept per question
4. **Deliberate Progression**: Build a logical path of inquiry
5. **Extended Thinking Activation**: Strategic use of complex questions

## QUESTION HIERARCHY FRAMEWORK

### Level 1: Domain Understanding
These questions establish fundamental context and document characteristics.

**Example Questions:**
- "What are the defining characteristics of [document type]?"
- "What purpose does [document type] serve in [specific industry]?"
- "What components are essential for a complete [document type]?"
- "What common errors or omissions occur in [document type]?"
- "How has [document type] evolved over the past 5 years?"

**Follow-up Pattern:**
- Ask for clarification on unexpected elements
- Request examples of mentioned characteristics
- Explore regional or industry variations

### Level 2: Structure Analysis
These questions examine the format and organization of the document.

**Example Questions:**
- "What organizational structure is most effective for [document type]?"
- "How should information hierarchy be established in [document type]?"
- "What sections are mandatory vs. optional in [document type]?"
- "How does the structure of [document type] support its usability?"
- "What dependencies exist between different sections of [document type]?"

**Follow-up Pattern:**
- Probe for reasoning behind structural recommendations
- Ask about alternative structures and their tradeoffs
- Explore how structure affects document effectiveness

### Level 3: Content Optimization
These questions focus on the quality and effectiveness of the document's content.

**Example Questions:**
- "What language patterns increase clarity in [document type]?"
- "How should technical terminology be handled in [document type]?"
- "What level of detail is appropriate for [specific section]?"
- "How can [document type] balance comprehensiveness with readability?"
- "What contextual information is necessary for [specific element]?"

**Follow-up Pattern:**
- Request examples of optimal vs. suboptimal content
- Explore content variations for different audiences
- Ask about content evolution over document lifecycle

### Level 4: Edge Case Management
These questions address unusual scenarios and exception handling.

**Example Questions:**
- "How should [document type] address [uncommon scenario]?"
- "What contingencies should be included for [potential issue]?"
- "What flexibility is required in [document type] to accommodate [variable factor]?"
- "How can [document type] maintain integrity when [challenging condition]?"
- "What failsafes should be incorporated into [document type]?"

**Follow-up Pattern:**
- Explore frequency and impact of edge cases
- Ask about prioritization of different edge cases
- Request examples of well-handled edge cases

### Level 5: Implementation Strategy
These questions focus on practical application and execution.

**Example Questions:**
- "What approach would you recommend for transitioning from [current document] to [optimized document]?"
- "How should [specific challenge] be addressed during implementation?"
- "What metrics would effectively measure the success of [document type]?"
- "What timeline is realistic for developing and implementing [document type]?"
- "How should feedback be incorporated into [document type] iterations?"

**Follow-up Pattern:**
- Ask for step-by-step implementation recommendations
- Explore potential obstacles and solutions
- Request examples of successful implementations

## EXTENDED THINKING MODE ACTIVATION

For optimal use of Claude's extended thinking mode, structure questions that:

1. **Require Multivariate Analysis**
   - "How would changes to [element X] impact [components A, B, and C] in [document type]?"
   - "What interdependencies exist between [element X] and [elements Y and Z]?"

2. **Involve Complex Tradeoffs**
   - "What are the tradeoffs between [approach A] and [approach B] when considering [factors X, Y, and Z]?"
   - "How should [competing priorities X and Y] be balanced in [document type]?"

3. **Request Synthesized Insights**
   - "Based on our discussion of [elements A, B, and C], what overarching principles should guide [document type]?"
   - "What patterns emerge when comparing [scenarios X, Y, and Z] in [document type]?"

4. **Require Judgment in Ambiguous Scenarios**
   - "Given the uncertainty around [factor X], what approach would you recommend for [document element]?"
   - "How should [document type] handle situations where [conflicting requirements] exist?"

## FOLLOW-UP PROTOCOLS

### 1. Clarification Sequence
When Claude's response requires clarification:

1. Echo the unclear point: "You mentioned [specific point]. Could you clarify what you mean by that?"
2. Ask for an example: "Could you provide an example of [unclear concept]?"
3. Request reframing: "Could you explain [unclear concept] in a different way?"
4. Offer interpretation: "I understand [unclear concept] to mean [your interpretation]. Is that correct?"

### 2. Expansion Sequence
When Claude's response should be expanded:

1. Request depth: "Could you elaborate further on [specific aspect]?"
2. Ask for additional dimensions: "Beyond [mentioned aspects], what other factors should be considered?"
3. Request implications: "What are the implications of [specific aspect] for [related element]?"
4. Explore variations: "How might [specific aspect] vary in different contexts?"

### 3. Contrast Sequence
When comparing approaches or elements:

1. Request direct comparison: "How does [approach A] compare to [approach B] regarding [specific criterion]?"
2. Ask for advantages/disadvantages: "What are the pros and cons of [approach] compared to alternatives?"
3. Explore contextual variations: "In what scenarios would [approach A] be preferable to [approach B]?"
4. Request integration possibilities: "Could elements of [approach A] and [approach B] be combined?"

### 4. Validation Sequence
When confirming understanding or alignment:

1. Summarize understanding: "Based on our discussion, my understanding is [summary]. Is that accurate?"
2. Test with scenarios: "If [specific scenario] occurred, how would the approach you've described address it?"
3. Challenge assumptions: "What assumptions underlie the approach you've described?"
4. Explore limitations: "What limitations or constraints should we be aware of with this approach?"

## DOCUMENTATION PRACTICES

For each question and answer:

1. Record the exact question asked
2. Document Claude's complete response
3. Note any areas requiring follow-up
4. Track key insights and recommendations
5. Update the project continuity document with session progress

## INTERVIEW TERMINATION CRITERIA

Conclude the interview when:

- All planned question topics have been covered
- Response patterns become repetitive without new insights
- Clear recommendations have emerged for all key areas
- Sufficient material has been gathered for prompt development
- Chat context length approaches limitations

---
*Cross-reference with: Initial Prompt Engineering Session, Validation Checklist, Chat Transition Protocol*