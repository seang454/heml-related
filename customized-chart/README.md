| Feature                               | `template`                                | `include`                             |
| ------------------------------------- | ---------------------------------------   | ------------------------------------- |
| Output behavior                       | Renders output directly to the template   | Returns rendered content as a string  |
| Can use pipe (`\|`)                   | ❌ No                                     | ✅ Yes                               |
| Works with `indent` / `nindent`       | ❌ No                                     | ✅ Yes                               |
| Indentation control                   | Hard / risky                              | Easy / controlled                     |
| Whitespace trimming risk              | High (can break YAML easily)              | Low (when used with `nindent`)        |
| Production best practice              | ❌ Not recommended                        | ✅ Recommended                       |
| Used in modern charts (Bitnami, etc.) | Rare                                      | Very common                           |
| Typical usage                         | `{{ template "name" . }}`                 | `{{ include "name" . \| nindent 4 }}` |
