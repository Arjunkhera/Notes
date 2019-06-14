## Maths

### Using expr for Mathematical Operations

1. remember to put spaces between the operands and the operators

```bash
#wrong
expr 5+6
#right
expr 5 + 6
```

2. some common operations are as follows

```bash
expr 5 + 3
expr 5 - 3
expr 5 \* 3
expr 5 / 3
expr 5 % 3
```

3. pipe Mathematical strings to the bench calculator for use of decimal numbers

```bash
echo "22 / 7" | bc -l
echo "4.2 * 9.15" | bc -l
echo "(6.5 / 0.5) + (6 * 2.2)" | bc -l
```
