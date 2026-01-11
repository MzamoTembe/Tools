# Coding Principles

Every line, variable, parameter, and space must have business justification. If it doesn't, remove it. Remove by default.

## Core Philosophy

- **Readability first** - Code is read more than written
- **Decoupled** - Components can be swapped without refactoring
- **Scalable** - New features don't require rewrites
- **Concise** - No unnecessary complexity

## Object-Oriented Programming

Use OOP principles but keep it simple.

**Do:**
- Use classes to encapsulate behavior and state
- Define clear interfaces
- Prefer composition over inheritance
- Keep inheritance hierarchies shallow (max 2-3 levels)

**Don't:**
- Create deep inheritance chains
- Build god classes that do everything
- Inherit just to share code - use composition instead

## SOLID Principles

**Single Responsibility** - One class, one job. If you describe a class with "and", split it.

**Open/Closed** - Open for extension, closed for modification.

**Liskov Substitution** - Subtypes must be substitutable for their base types.

**Interface Segregation** - Small, focused interfaces.

**Dependency Inversion** - Depend on abstractions, not concretions.

## Factory Pattern

**Never instantiate dependencies inside the class that uses them.**

Use factories to create instances. This decouples creation from usage.

Why factories matter:
- Testing: Easy to inject mocks
- Flexibility: Swap implementations without changing classes
- Clarity: Creation logic lives in one place

## Modularity

**If you remove a component, the rest should still work.**

Each module is a self-contained unit:
- Clear inputs and outputs
- No hidden dependencies
- Can be tested in isolation
- Can be replaced without cascading changes

## Type-Driven Development

**Types represent information. Get them right.**

Types are not decoration - they define how data flows through the system.

- Understand your data first - before writing code, define the types
- Types prevent bugs - correct types eliminate entire categories of errors
- Types are documentation - they tell you what data looks like
- Use the type system fully - avoid dynamic types or `any`

## Constants

**No hard-coded values. Ever.**

If you see a hard-coded value, extract it to a constant.

- Single source of truth - change once, updates everywhere
- Readable - named constants tell you more than magic numbers
- Testable - easy to verify behavior at boundaries

## DRY (Don't Repeat Yourself)

**Don't repeat constant values. Be careful with everything else.**

**Do:**
- Extract repeated values to constants
- Share truly generic utilities
- Reuse types and interfaces

**Don't:**
- Over-abstract to avoid "duplication"
- Create shared modules for code used in one place
- Force unrelated code to share an abstraction

The rule: **If it's a value, don't repeat it. If it's logic, think twice before sharing.**

## Avoid Over-Engineering

Only make changes that are directly requested or clearly necessary. Keep solutions simple and focused.

- Don't add features, refactor code, or make "improvements" beyond what was asked
- A bug fix doesn't need surrounding code cleaned up
- A simple feature doesn't need extra configurability
- Don't add error handling for scenarios that can't happen
- Trust internal code and framework guarantees
- Only validate at system boundaries (user input, external APIs)
- Don't create helpers or utilities for one-time operations
- Don't design for hypothetical future requirements
- Three similar lines of code is better than a premature abstraction