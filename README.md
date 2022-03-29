# Millie
A package that converts big numbers to what's pleasant to see (an adorable, little girl, perhaps?).

| 🤢 Before | ✨ After |
| ----------- | ----------- |
| `4200` | `4.2K` |
| `10000` | `10k` |
| `1000040000` | `1.00004B` |

For more examples, see [example](https://github.com/bichanna/millie/tree/master/example) directory.

## Usage
```dart
import 'package:millie/millie.dart';

void main() {
    millify(4200); // 4.2K
    
    millify(10000, lowercase: true); // 10k
    
    millify(
        1250000,
        space: true,
        lowercase: true,
        precision: 3
    ); // 1.25 m
}
```

## Features and Bugs
Please file an [issue](https://github.com/bichanna/millie/issues)!