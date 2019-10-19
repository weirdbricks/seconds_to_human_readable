# seconds_to_human_readable
Converts seconds to human readable format - up to aeons!!!

# Compile

crystal build src/seconds_to_human_readable.cr --static --release --progress

# Usage examples:

## The usual, months, weeks, days, hours, minutes and seconds

```
./seconds_to_human_readable 4758378
1 months, 3 weeks, 3 days, 1 hours, 46 minutes, 18 seconds
```

## It handles years...

```
./seconds_to_human_readable 137818181
4 years, 4 months, 1 weeks, 4 days, 2 hours, 49 minutes, 41 seconds
```
## Centuries...

```
./seconds_to_human_readable 9823982877
3 centuries, 11 years, 6 months, 2 days, 12 hours, 7 minutes, 57 seconds
```

## Millenias...

```
./seconds_to_human_readable 78942874827
2 millenia, 5 centuries, 3 years, 3 months, 2 days, 16 hours, 20 minutes, 27 seconds
```

## .... Aeons

```
./seconds_to_human_readable 8742878472713145612
277 aeons, 234857 millenia, 7 centuries, 9 years, 3 weeks, 3 days, 13 hours, 20 minutes, 12 seconds
```

## I give up!

```
./seconds_to_human_readable 123456789012345678903189342
You have provided a string greater than 26 digits. I cannot process that - bailing!
```
