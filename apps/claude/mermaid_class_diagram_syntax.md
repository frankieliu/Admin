This is an extensive syntax reference for generating Mermaid Class Diagrams, compiled directly from the provided documentation.

This structure is ideal for feeding to a Language Model (LLM) for precise diagram generation.

---

## Mermaid Class Diagram Syntax Reference (V1.1)

### 1. Diagram Initialization & Structure

| Element | Syntax | Description |
| :--- | :--- | :--- |
| **Start/End** | `classDiagram` | Must start the diagram definition. |
| **Direction** | `direction [Direction]` | Sets the rendering direction (e.g., `LR`, `RL`, `TD`, `BT`). |
| **Title** | `--- title: [Diagram Title] ---` | Adds an inline title to the diagram. |
| **Comments** | `%% [Comment Text]` | Any line prefixed with `%%` is ignored by the parser. Must be on its own line. |

***

### 2. Classes & Members

A class instance has three compartments: Name (top), Attributes (middle), and Operations/Methods (bottom).

#### 2.1 Class Definition

| Method | Syntax | Example |
| :--- | :--- | :--- |
| **Explicit** | `class [ClassName]` | `class Animal` |
| **Implicit** | `[ClassA] [Relationship] [ClassB]` | `Vehicle <|-- Car` |

#### 2.2 Class Labels (Quoted Names)

To use spaces or special symbols in a class name displayed on the diagram:

| Method | Syntax | Example |
| :--- | :--- | :--- |
| **Quoted Label** | `class [ClassName]["[Label Text]"]` | `class Animal["Animal with a label"]` |
| **Escaping** | Use backticks (``) around the ClassName. | `` class `Animal Class!` `` |

#### 2.3 Defining Members (Attributes & Methods)

Members can be defined one-by-one or grouped within the class definition.

| Method | Syntax | Example |
| :--- | :--- | :--- |
| **Colon Syntax** | `[ClassName] : [Visibility][Type] [MemberName][(Params)]` | `BankAccount : +BigDecimal balance` |
| **Bracket Syntax** | `class [ClassName] { [Visibility][Type] [MemberName][(Params)] \n [NextMember] }` | `class Duck { +String beakColor \n +swim() }` |
| **Method Check** | Members with parentheses `()` are treated as **methods**; others are **attributes**. | |

#### 2.4 UML Visibility Modifiers

| Modifier | Symbol | Meaning |
| :--- | :--- | :--- |
| **Public** | `+` | Visible to all classes. |
| **Private** | `-` | Visible only within the defining class. |
| **Protected** | `#` | *(UML Standard - not explicitly confirmed in docs)* |
| **Package/Internal** | `~` | *(UML Standard - not explicitly confirmed in docs)* |

#### 2.5 Annotations/Stereotypes

Annotations provide metadata and are rendered in guillemets (`«...»`).

| Syntax | Example | Meaning |
| :--- | :--- | :--- |
| **Annotation** | `class [ClassName] <<[Annotation]>>` | `class Shape <<Interface>>` |
| **Inline (Alternative)** | `class Shape{ <<interface>> \n noOfVertices() }` | Sets the annotation on the class itself. |
| **Common Examples** | `<<Interface>>`, `<<Abstract>>`, `<<Service>>`, `<<Enumeration>>` | |

***

### 3. Relationships

Relationships are defined using a syntax that specifies the origin class, the relationship type/line, and the destination class.

#### 3.1 Relationship Types

| Type | Syntax | Line/Arrow | Description |
| :--- | :--- | :--- | :--- |
| **Inheritance/Generalization** | `<|--` | Solid line, closed triangle | `Animal <|-- Duck` (Duck inherits from Animal) |
| **Realization/Implementation** | `..|>` | Dashed line, closed triangle | `Shape ..|> Circle` (Circle implements Shape) |
| **Composition** | `*--` | Solid line, filled diamond | `Car *-- Engine` (Engine is a part of Car, lifetime dependency) |
| **Aggregation** | `o--` | Solid line, open diamond | `Team o-- Player` (Player is part of Team, independent lifetime) |
| **Association** | `-->` | Solid line, open arrow | `Customer --> Ticket` |
| **Dependency** | `..>` | Dashed line, open arrow | `ClassA ..> ClassB` (ClassA depends on ClassB) |
| **Link (Solid)** | `--` | Solid line, no arrow | `ClassA -- ClassB` |
| **Link (Dashed)** | `..` | Dashed line, no arrow | `ClassA .. ClassB` |

#### 3.2 Labels and Cardinality (Multiplicity)

| Element | Syntax | Example |
| :--- | :--- | :--- |
| **Relationship Label** | `[ClassA] [Rel] [ClassB] : [Label Text]` | `Student --> Course : Attends` |
| **Cardinality** | `[ClassA] "[Card1]" [Rel] "[Card2]" [ClassB]` | `Customer "1" --> "*" Ticket` |

| Cardinality Notation | Meaning |
| :--- | :--- |
| `1` | Only one |
| `0..1` | Zero or one |
| `1..*` | One or more |
| `*` or `many` | Many (Zero or more) |
| `n` | Exactly 'n' instances (where n > 1) |
| `0..n` | Zero to 'n' instances |
| `1..n` | One to 'n' instances |

#### 3.3 Lollipop Interfaces

Defines an interface that attaches to a class using a circle marker.

| Syntax | Example |
| :--- | :--- |
| `[InterfaceName] ()-- [ClassName]` | `bar ()-- foo` (Interface `bar` connects to class `foo`) |
| **Note:** Each interface defined this way is unique and cannot be shared (no multiple edges connecting to it). |

***

### 4. Grouping and Notes

| Element | Syntax | Example |
| :--- | :--- | :--- |
| **Namespace** | `namespace [Name] { [Class Definitions] }` | `namespace BaseShapes { class Triangle }` |
| **General Note** | `note "Line 1<br>Line 2"` | Adds a free-floating note. **Use `<br>` for explicit line breaks.** |
| **Class Note** | `note for [ClassName] "Line 1<br>Line 2"` | Attaches a note to a specific class. **Use `<br>` for explicit line breaks.** |

> **📝 SVG Generation Recommendation:** For reliable SVG generation with proper line break rendering, use the Mermaid CLI (`mmdc`) instead of browser-based renderers:
> ```bash
> mmdc -i input_diagram.md -o output_diagram.svg
> ```
> Some web-based Mermaid renderers may have issues with `<br>` tags in notes, but the official CLI tool handles them correctly.

### 4.1 Claude Code Integration

When using Claude Code to generate SVG files from Mermaid diagrams:

```bash
# Generate SVG from Mermaid markdown file
mmdc -i enum_display_class_diagram.md -o enum_display_class_diagram.svg
```

**Command Pattern for Claude:**
- **Input**: `<diagram_name>.md` (Markdown file containing Mermaid diagram)
- **Output**: `<diagram_name>.svg` (Generated SVG file)
- **Usage**: `mmdc -i <input.md> -o <output.svg>`

**Benefits of using `mmdc`:**
- Handles `<br>` tags correctly in notes
- Consistent rendering across environments
- Official Mermaid CLI tool with better stability
- Avoids browser-specific rendering issues

***

### 5. Styling and Interaction

#### 5.1 Styling Nodes

| Element | Syntax | Example |
| :--- | :--- | :--- |
| **Individual Style** | `style [ClassName] [CSS Properties]` | `style Animal fill:#f9f,stroke:#333` |
| **Style Class Definition** | `classDef [Name] [CSS Properties];` | `classDef pink fill:#f96,color:red;` |
| **Apply Style Class (Full)** | `cssClass "[ClassName]" [StyleName];` | `cssClass "Animal" pink;` |
| **Apply Style Class (List)** | `cssClass "ClassA,ClassB" [StyleName];` | |
| **Apply Style Class (Shorthand)**| `class [ClassName]:::[StyleName]` | `class Animal:::pink` |
| **Default Style** | `classDef default [CSS Properties];` | `classDef default fill:#f9f` (Applies to all unstyled nodes) |

#### 5.2 Interaction (Clickable Nodes)

*Functionality is disabled when `securityLevel='strict'`.*

| Element | Syntax (Newer) | Example |
| :--- | :--- | :--- |
| **Link to URL** | `click [ClassName] href "[URL]" "[Tooltip]"` | `click Shape href "https://github.com" "GitHub Link"` |
| **Callback Function** | `click [ClassName] call [FunctionName]() "[Tooltip]"` | `click Shape call callbackFunction() "Run Code"` |
| **Link (Shorthand)** | `link [ClassName] "[URL]" "[Tooltip]"` | `link Shape "https://github.com" "GitHub Link"` |
| **Callback (Shorthand)**| `callback [ClassName] "[FunctionName]" "[Tooltip]"` | `callback Shape "callbackFunction" "Run Code"` |

***

## Missing Information & Ambiguities

The provided documentation is extensive but lacks explicit specifications for several key UML/Mermaid features, which an LLM should be aware of:

1.  **Full UML Visibility Modifiers:** Only `+` (public) and `-` (private) are clearly demonstrated. The standard UML modifiers **`#` (protected)** and **`~` (package/internal)** are not explicitly defined or listed in a reference table.
2.  **Abstract/Static Members:** There is **no syntax defined** for marking members (attributes or methods) as **static** (usually done with an underscore or `$` in some tools) or **abstract** (usually italicized or using a modifier).
3.  **Two-way Relationship Combinations:** The documentation lists relationship arrows (e.g., `*--` for composition) and end markers (`<|`, `*`, `o`), but a clear reference table for how to combine them to create all two-way relationships (e.g., `ClassA <|--* ClassB` for Inheritance to Composition) is **missing**. The LLM should infer these combinations use a single line operator (`--` or `..`) with markers on both ends.
4.  **Full List of Annotations:** The list of annotations (`<<Interface>>`, `<<Abstract>>`, etc.) is stated as "common annotations," implying others are supported. The documentation **does not specify if custom annotations are supported** or if the list is exhaustive.
5.  **Namespace Scope/Resolution:** The documentation does not specify how to refer to a class outside its defining namespace (e.g., `NamespaceA.ClassB`) or if class names must be unique across all namespaces.