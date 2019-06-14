## Variables in CSS

We can create css variables as follows:

```css

--thisisvariable: property;

// and use it as follows

border: var(--thisisvariable,fallback_property)

```

When you create a variable, it becomes available for you to use inside the element in which you create it. It also becomes available within any elements nested within it. 
This effect is known as cascading.  

Because of cascading, CSS variables are often defined in the :root element.  

You can think of the :root element as a container for your entire HTML document, in the same way that an html element is a container for the body element.  

By creating your variables in :root, they will be available throughout the whole web page.  

```css

:root {
    
    --firstvariable : property;
    --secondvariable : property;
    
}

```

The following shows some variables in action : [Practical Example](example.md)
