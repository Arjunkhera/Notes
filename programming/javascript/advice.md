## Basic Advice

### A. Script tag
The </script> tag has a few attributes that are rarely used nowadays, but we can find them in old code:

1. **The type attribute: \<script type=…>**  
  The old standard HTML4 required a script to have a type. Usually it was type="text/javascript". The modern HTML standard assumes this type by default. No attribute is required.

2. **The language attribute: \<script language=…>**  
  This attribute was meant to show the language of the script. As of now, this attribute makes no sense, the language is JavaScript by default. No need to use it.

#### embedding external js scripts in .html file
```HTML4
<script src="/path/to/script.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.2.0/lodash.js"></script>
```  
* multiple scripts can also be attatched
* we use src because external files can be downloaded separataly as cache and stored in the browser
* if src is set, srcipt content is ignored

### B. Using semicolon

Not neccessary, but using it is a good practice and also prevents some unseen errors

### C. Comments

same as C and C++,   
// single line  
/* \*/ multiline

### D. Modern browsers need to know version

just begin your file with
```javascript
"use strict"
// or
'use strict'
```
to use newer js versions post ECMA5  
Following is from the site itself :

1. The "use strict" directive switches the engine to the “modern” mode, changing the behavior of some built-in features. We’ll see the details as we study.
2. The strict mode is enabled by "use strict" at the top. Also there are several language features like “classes” and “modules” that enable strict mode automatically.
3. The strict mode is supported by all modern browsers.
4. It’s always recommended to start scripts with "use strict". All examples in this tutorial assume so, unless (very rarely) specified otherwise.

### E. Difference between var and let

[Check here](http://javascript.info/var)

### F. Variable Naming

There are two limitations for a variable name in JavaScript:

1. The name must contain only letters, digits, symbols $ and \_.
2. The first character must not be a digit.

**Non-english letters are allowed, but not recommended**

**Constants : use uppercase to name them**
