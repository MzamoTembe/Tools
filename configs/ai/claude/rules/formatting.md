# Formatting

Code is read more than it is written. Every formatting decision must prioritize readability.

## Hard Rules

- **No comments** - Code must be readable without them. Requires explicit approval to add any comment.
- **No docstrings** - Same as above.
- **No emojis** - Never.
- **No AI fluff** - No filler text, no excessive explanations in code.

## Function Signatures

Keep signatures on one line. Only break across multiple lines when parameters become excessive (5+ parameters).

## Blank Lines

Add blank lines to separate logical concerns. Don't overdo it.

## Every Character Justified

Before adding:
- A blank line - Does it separate concerns?
- A line break in signature - Are there 5+ parameters?
- A space - Does it improve scanning?

If the answer is no, don't add it.

## Ordering

- **Important stuff at the top** - Most valuable information appears first
- **Related functions stay together** - Vertically group functions that work together
- **Flow downward** - Caller above callee when possible

## Line Length

Keep lines short. If a line is hard to read, break it or simplify the logic.

## Horizontal Alignment

Avoid it. It looks neat but creates maintenance burden.