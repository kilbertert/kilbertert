Feature: GitHub profile README
  The public profile should retain GitHub's default starter template.

  Rule: The profile uses only the default repository README content

    Scenario: A visitor opens the GitHub profile
      Given the public repository is named "kilbertert"
      And its root contains a non-empty README.md
      When the visitor opens "https://github.com/kilbertert"
      Then the profile displays the "Hi there" starter heading
      And the profile contains GitHub's starter suggestions as a comment

    Scenario: The default README has no external assets
      Given the profile README contains only local Markdown and comments
      When the visitor opens the profile
      Then no third-party image or animation request is required
