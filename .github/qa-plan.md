# Profile README QA plan

## Scope

Verify the public profile trigger, core content, navigation, and decorative assets for the `kilbertert/kilbertert` repository.

The `Profile / verify` workflow enforces the stable content contract without making CI depend on third-party network availability.

## Cases

### QA-01 — Profile trigger

- Environment: GitHub.com production
- Preconditions: repository is public; default branch contains a non-empty root `README.md`
- Test data: `https://github.com/kilbertert`
- Actions:
  1. Open the profile URL without repository write access.
  2. Find the `kilbertert/README.md` profile section.
- Expected: the PYYI.OS introduction and selected-work table are visible.
- Cleanup: none

### QA-02 — Public navigation

- Environment: public HTTPS
- Preconditions: profile README is merged
- Test data: website and four selected-project URLs from `README.md`
- Actions:
  1. Request every destination URL.
  2. Confirm each returns an HTTP success response.
- Expected: all destinations are publicly reachable.
- Cleanup: none

### QA-03 — Decorative assets

- Environment: public HTTPS
- Preconditions: none
- Test data: banner, typing animation, badges, and skill-icon URLs from `README.md`
- Actions:
  1. Request every image URL.
  2. Confirm each returns an HTTP success response and image content type.
- Expected: all decorative assets load; meaningful `alt` text remains if a provider later fails.
- Cleanup: none

## Traceability

| Requirement | Scenario | QA case |
| --- | --- | --- |
| Profile README renders on Overview | A visitor opens the GitHub profile | QA-01 |
| Public links remain navigable | A visitor opens the GitHub profile | QA-02 |
| Core content survives image failure | A decorative image service is unavailable | QA-03 |
