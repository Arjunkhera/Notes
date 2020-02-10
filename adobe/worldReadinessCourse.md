## World Readiness Course

Loales and 

Locale : set of parameters for user preferences
Locale identifiers follow BCP 47 standard
Locale identifiers : language region + script _ other variables 

Best practices 
1. Produce hyphens, consume hyphens and underscores
2. Capitalise indetifiers, case insensitive consumption
3. Avoid obsolete language identifiers
4. Use correct language identifiers for chinese

```java
import java.util.Locale;

public class WorldReadiness {
    public static void main(String[] args) {
        Locale currentLocale = Locale.forLanguageTag("el-GR");
        System.out.println(currentLocale.getDisplayName(currentLocale));
    }
}
```

UI elements : text, images, sounds, video
Localisable text : menus, dialogs, tabs, status bars
Non externalised string called "hardcoded"
OOTB mechanisms for string externalisation
Translatable strings as arguments to I18n functions
Language dictionary files for storing translations
pitfall : string concatenation

Language specific directory structure
BCP47 compliant language identifiers
English is just another language
Same build process for all languages versions
Multilingual language deployments
Use language packs if needed 
Use language navigators (consistent UX)

Design a locale independent framework
Use resource files for UI string validation
Keep test data in external files
Use localised asset files
Support plug in of I18n specific scripts
Support mulitple job executions

UI issues are big localisation problems
Good UI design + adaptive technologies 
Less testing + fixing = Less cost

- grouping and decimal separators
    - commas, periods, spaces, single quotes
- percentage signs
    - positioning, spacing
- abbreviations
    - character usage, decimal separator positioning
- standard digits

currency symbols vs currency codes
shared currency symbols
decimal values
spacing between symbol/code and value
positioning of symbol code

