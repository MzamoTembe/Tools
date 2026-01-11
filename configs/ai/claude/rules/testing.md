# Testing

**No code ships without tests.** Every unit must be tested before it's considered complete.

## Philosophy

- **Test every unit** - If you write a function, class, or module, it gets a test
- **Test the primary use case** - Focus on what the code is supposed to do
- **One test, one purpose** - Each test should verify one specific behavior
- **Keep tests minimal** - If a test doesn't add value, don't write it

## Quality Standards

**DO:**
- Write tests that are readable in 10 seconds or less
- Use descriptive test names that explain what's being tested
- Keep test setup minimal
- Test behavior, not implementation details
- Delete tests that duplicate coverage

**DON'T:**
- Write multiple tests that verify the same thing
- Add tests "just in case"
- Create elaborate test fixtures when simple data works
- Mock everything - only mock external dependencies
- Write tests longer than the code they're testing

## Mocking

**Mock dependencies, test your logic.**

- Mock external dependencies (APIs, databases, file systems, other services)
- Inject dependencies - if you can't mock it easily, your design is wrong
- Mocks only - no spies, no partial mocks, no magic
- Mockability = good design

## What to Mock

| Mock | Don't Mock |
|------|------------|
| External APIs | Pure functions |
| Database calls | Simple data transformations |
| File system | The class under test |
| Other services | |