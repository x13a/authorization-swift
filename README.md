# authorization-swift

Swift wrapper on `AuthorizationExecuteWithPrivileges`.

## Example

```swift
import Authorization

func main() throws {
    let fileHandler = try Authorization.executeWithPrivileges("/bin/ls /").get()
    print(String(bytes: fileHandler.readDataToEndOfFile(), encoding: .utf8)!)
}

main()
```
